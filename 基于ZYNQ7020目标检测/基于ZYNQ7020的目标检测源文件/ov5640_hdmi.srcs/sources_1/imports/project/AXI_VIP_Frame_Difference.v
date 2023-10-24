//AXI ST VIP�ӿڵ�֡�

module AXI_VIP_Frame_Difference(
    input 				clk				,
    input 				rst_n			,
    
    //AXI_ST Slave �ӿ�0����������ͷ 
    input [23:0] 		s0_axis_tdata   ,
    input        		s0_axis_tvalid  ,
    output       		s0_axis_tready  ,
    input        		s0_axis_tuser   ,
    input        		s0_axis_tlast   ,
    
    //AXI_ST Slave �ӿ�1������VDMA 
    input [23:0] 		s1_axis_tdata   ,
    input        		s1_axis_tvalid  ,
    output       		s1_axis_tready  ,
    input        		s1_axis_tuser   ,
    input        		s1_axis_tlast   ,
	
	//AXI_ST Master �ӿڣ������VDMA 
    output reg [23:0] 	m_axis_tdata	,
    output reg        	m_axis_tvalid	,
    input             	m_axis_tready	,
    output reg        	m_axis_tuser	,
    output reg        	m_axis_tlast 
    );
	
localparam	[7:0]	Diff_Threshold 	= 8'd75;	//֡����ֵ
localparam	[9:0]	IMG_HDISP 		= 10'd640;	//ͼ��ֱ���
localparam	[9:0]	IMG_VDISP 		= 10'd480;	//

//*****************************************************
//��VDMA��ͼ�񻺴浽FIFO��

reg   [23:0]	fifo_data;
reg           	fifo_wr	 ;
reg 			fifo_wr_en;	
wire          	fifo_full;
    
reg          	fifo_rd   ;
reg          	fifo_rd_en;
wire [23:0]   	fifo_q    ;
reg          	fifo_valid;
wire          	fifo_empty;

//FIFO����ʱ��������VDMA��ȡ����
assign s1_axis_tready = ~fifo_full;

always @ (posedge clk or negedge rst_n) begin
    if(!rst_n) begin
		fifo_wr_en	<= 1'b0;
        fifo_wr 	<= 1'b0;
		fifo_data	<= 24'd0;
	end
    else begin
		//��⵽SOF��Ŵ�дFIFOʹ�ܣ���֤FIFO��д��ĵ�һ������ΪSOF
		if(s1_axis_tvalid & s1_axis_tready & s1_axis_tuser) 
			fifo_wr_en	<= 1'b1;
	
		if(s1_axis_tvalid & s1_axis_tready) begin
			fifo_wr 	<= 1'b1;
			fifo_data	<= s1_axis_tdata; 
		end  
		else  begin
			fifo_wr 	<= 1'b0;
			fifo_data	<= fifo_data;
		end
	end
end

//��������VDMA��AXI ST ��Ƶ
video_fifo u_video_fifo (
  .clk                      (clk),         
  .srst                     (~rst_n),      
                
  .din                      (fifo_data),
  .wr_en                    (fifo_wr & fifo_wr_en),  
  .full                     (),
                
  .rd_en                    (fifo_rd & fifo_rd_en),  
  .dout                     (fifo_q),   
  .empty                    (fifo_empty),
  
  .almost_full              (fifo_full),
  .almost_empty             () 
);

//*****************************************************
//����ͷ�������ص�ͬʱ����FIFO�ж���VDMA���أ��Խ���֡������

always @ (posedge clk or negedge rst_n) begin
    if(!rst_n) begin
		fifo_rd_en	<= 1'b0;
        fifo_rd 	<= 1'b0;
	end
    else begin
		//�ȴ�FIFO�л���һ����������֮�󣬼������ͷ����SOF��Ŵ򿪶�FIFOʹ�ܣ�ʹ����FIFO�ж�ȡ��VMDA��Ƶͬ��
		if(s0_axis_tvalid & s0_axis_tready & s0_axis_tuser & fifo_full) 
			fifo_rd_en	<= 1'b1;
		
		//�˴�FIFO���ź����������ͷ������Ƶ�ӳ���һ��ʱ������
		if(s0_axis_tvalid & s0_axis_tready) 
			fifo_rd 	<= 1'b1;
 		else 
			fifo_rd 	<= 1'b0;
	end
end

//FIFO�����������Ч��־�����������ͷ������Ƶ�ӳ�������ʱ������
always @ (posedge clk or negedge rst_n) begin
    if(!rst_n) begin
		fifo_valid	<= 1'b0;
	end
    else begin
		fifo_valid 	<= fifo_rd;		//unused
	end
end

//*****************************************************��������ʱ������

//Ϊ����FIFO�ж���������ͬ����������ͷ������ƵҲ�ӳ�����ʱ������ 
reg [23:0]	s0_axis_tdata_dly1;
reg [23:0]	s0_axis_tdata_dly2;
	
always @ (posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        s0_axis_tdata_dly1 <=  24'd0;
        s0_axis_tdata_dly2 <=  24'd0;
	end
    else begin
        s0_axis_tdata_dly1 <=  s0_axis_tdata;
        s0_axis_tdata_dly2 <=  s0_axis_tdata_dly1;
	end
end	

//*****************************************************��������ʱ������
//��RGB��ʽ����������ת�ɻҶ�ͼ��

wire [7:0]	s0_img_y;	//��������ͷ
wire [7:0]	s1_img_y;	//����VDMA

RGB888_YCbCr444 S0_RGB888_YCbCr444 (
	.clk				(clk	),  				
	.rst_n				(rst_n	),				

	.in_img_red			(s0_axis_tdata_dly2[23:16]),		
	.in_img_green		(s0_axis_tdata_dly2[15: 8]),		
	.in_img_blue		(s0_axis_tdata_dly2[ 7: 0]),		

	.out_img_Y			(s0_img_y),			
	.out_img_Cb			(),		
	.out_img_Cr			()			
);

RGB888_YCbCr444 S1_RGB888_YCbCr444 (
	.clk				(clk	),  				
	.rst_n				(rst_n	),				

	.in_img_red			(fifo_q[23:16]),		
	.in_img_green		(fifo_q[15: 8]),		
	.in_img_blue		(fifo_q[ 7: 0]),		

	.out_img_Y			(s1_img_y),			
	.out_img_Cb			(),		
	.out_img_Cr			()			
);

//*****************************************************����һ��ʱ������
//֡������ 

//֡���־λ��Ϊ1��ʾ��֡���ݲ�𳬹���ֵ 
reg frame_difference_flag;	

always @ (posedge clk or negedge rst_n) begin
    if(!rst_n) begin
		frame_difference_flag	<= 1'b0;
	end
    else begin
		if(s0_img_y > s1_img_y) begin
			if(s0_img_y - s1_img_y > Diff_Threshold)	//�ҶȲ������ֵ
				frame_difference_flag <= 1'b1; 
			else
				frame_difference_flag <= 1'b0;	 
		end
		else begin
			if(s1_img_y - s0_img_y > Diff_Threshold)	//�ҶȲ������ֵ
				frame_difference_flag <= 1'b1; 
			else
				frame_difference_flag <= 1'b0;
		end
	end
end

//*****************************************************�ӳ�����ʱ������
//������ͷ�����ͬ���ź��ӳ�����ʱ�����ڣ�������ͬ��

wire 		s0_axis_tuser_dly;
wire 		s0_axis_tlast_dly;
wire 		s0_axis_tvalid_dly;

reg  [5:0] 	s0_axis_tuser_reg;
reg  [5:0] 	s0_axis_tlast_reg;
reg  [5:0] 	s0_axis_tvalid_reg;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        s0_axis_tuser_reg  <= 6'd0;
        s0_axis_tlast_reg  <= 6'd0;
        s0_axis_tvalid_reg <= 6'd0;
    end
    else begin
        s0_axis_tuser_reg  <= {s0_axis_tuser_reg[4:0], s0_axis_tvalid & s0_axis_tready & s0_axis_tuser}; 
        s0_axis_tlast_reg  <= {s0_axis_tlast_reg[4:0], s0_axis_tvalid & s0_axis_tready & s0_axis_tlast}; 
        s0_axis_tvalid_reg <= {s0_axis_tvalid_reg[4:0],s0_axis_tvalid & s0_axis_tready }; 
    end
end

assign s0_axis_tuser_dly  = s0_axis_tuser_reg[5];
assign s0_axis_tlast_dly  = s0_axis_tlast_reg[5];
assign s0_axis_tvalid_dly = s0_axis_tvalid_reg[5];

//*****************************************************

//����֡������������
reg [9:0] x_cnt;    
reg [9:0] y_cnt;    

always @ (posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        x_cnt <= 10'd0;
        y_cnt <= 10'd0;
    end
    else if(s0_axis_tvalid_dly) begin
        if(s0_axis_tlast_dly) begin
             x_cnt <= 10'd0;   
             y_cnt <= y_cnt + 1'b1;   
        end
        else if(s0_axis_tuser_dly) begin
            x_cnt <= 10'd0;       
            y_cnt <= 10'd0;
        end
        else begin
            x_cnt <= x_cnt + 1'b1;       
        end
    end  
end

//*****************************************************
//����˶�Ŀ��������α߿�

reg [9:0] 	up_reg	 ;	  
reg [9:0] 	down_reg ;
reg [9:0] 	left_reg ;
reg [9:0] 	right_reg;
reg			flag_reg ;

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		up_reg	  <= IMG_VDISP;
		down_reg  <= 10'd0;
		left_reg  <= IMG_HDISP;
		right_reg <= 10'd0;
		flag_reg  <= 1'b0;
	end
	else if(s0_axis_tuser_dly)begin     //һ֡��ʼʱ��ʼ����������
		up_reg	  <= IMG_VDISP;
		down_reg  <= 10'd0;
		left_reg  <= IMG_HDISP;
		right_reg <= 10'd0;
		flag_reg  <= 1'b0;
	end
	else if(s0_axis_tvalid_dly & frame_difference_flag) begin
		flag_reg  <= 1'b1;
		
		if(x_cnt < left_reg) 
			left_reg <= x_cnt;		//��߽�
		else
			left_reg <= left_reg;
			
		if(x_cnt > right_reg) 
			right_reg <= x_cnt;		//�ұ߽�
		else
			right_reg <= right_reg;
			
		if(y_cnt < up_reg) 
			up_reg <= y_cnt;		//�ϱ߽�
		else
			up_reg <= up_reg;
			
		if(y_cnt > down_reg) 
			down_reg <= y_cnt;		//�±߽�
		else
			down_reg <= down_reg;	
	end
end

reg [9:0] 	rectangular_up	 ;
reg [9:0] 	rectangular_down ;
reg [9:0] 	rectangular_left ;
reg [9:0] 	rectangular_right;
reg			rectangular_flag ;

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		rectangular_up	  <= 10'd0;
		rectangular_down  <= 10'd0;
		rectangular_left  <= 10'd0;
		rectangular_right <= 10'd0;
		rectangular_flag  <= 1'b0;
	end
	else if((x_cnt == IMG_HDISP - 1) && (y_cnt == IMG_VDISP - 1))begin
		rectangular_up	  <= up_reg	;		
		rectangular_down  <= down_reg ;
		rectangular_left  <= left_reg ;		
		rectangular_right <= right_reg;
		rectangular_flag  <= flag_reg ;
	end
end

//*****************************************************
//���ƾ��ο�

//��������ͷ����ͼ�����������
reg [9:0] s0_x_cnt;    
reg [9:0] s0_y_cnt;    

always @ (posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        s0_x_cnt <= 10'd0;
        s0_y_cnt <= 10'd0;
    end
    else if(s0_axis_tvalid) begin
        if(s0_axis_tlast) begin
             s0_x_cnt <= 10'd0;   
             s0_y_cnt <= y_cnt + 1'b1;   
        end
        else if(s0_axis_tuser) begin
            s0_x_cnt <= 10'd0;       
            s0_y_cnt <= 10'd0;
        end
        else begin
            s0_x_cnt <= s0_x_cnt + 1'b1;       
        end
    end  
end

reg boarder_flag;	//��־�����ص�λ�ڷ�����

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		boarder_flag <= 1'd0;			
	end
	else begin		
		if(rectangular_flag)begin	//��⵽�˶�Ŀ��
			if((s0_x_cnt >  rectangular_left) && (s0_x_cnt < rectangular_right)
					&& ((s0_y_cnt == rectangular_up) ||(s0_y_cnt == rectangular_down)) ) begin //�������±߽�
				boarder_flag <= 1'd1;	
			end
			else if((s0_y_cnt > rectangular_up) && (s0_y_cnt < rectangular_down)
					&& ((s0_x_cnt == rectangular_left) ||(s0_x_cnt == rectangular_right)) ) begin //�������ұ߽�
				boarder_flag <= 1'd1;
			end
			else begin
				boarder_flag <= 1'd0;
			end
		end
		else begin	
			boarder_flag <= 1'd0;
		end
	end
end

//���������ͷ�����Ready�ź�
assign s0_axis_tready = m_axis_tready;
	
//��AXI ST Master�ӿڸ�ֵ
always @ (posedge clk or negedge rst_n ) begin
	if(!rst_n) begin
		m_axis_tvalid   <= 1'd0;
        m_axis_tuser    <= 1'd0;
        m_axis_tlast    <= 1'd0;
        m_axis_tdata    <= 24'd0;
	end
    else begin
         m_axis_tvalid  <= s0_axis_tvalid;
         m_axis_tuser   <= s0_axis_tuser ;
         m_axis_tlast   <= s0_axis_tlast ;
         m_axis_tdata	<= boarder_flag ? 24'hff_00_00 : s0_axis_tdata;
    end
end

endmodule