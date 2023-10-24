/*
 * vdma_api.h
 *
 *  Created on: 2022��3��22��
 *      Author: zhaoj
 */

#ifndef VDMA_API_H_
#define VDMA_API_H_

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */

#include "xaxivdma.h"
#include "xparameters.h"
#include "xil_exception.h"

/* ------------------------------------------------------------ */
/*					General Type Declarations					*/
/* ------------------------------------------------------------ */

typedef enum
{
	ONLY_READ=1,    //VDMAֻ������ͨ��
	ONLY_WRITE,     //VDMAֻ����дͨ��
	BOTH            //ͬʱ����VDMAдͨ���Ͷ�ͨ��
}vdma_run_mode;

/* ------------------------------------------------------------ */
/*					Procedure Declarations						*/
/* ------------------------------------------------------------ */
int run_vdma_frame_buffer(XAxiVdma* InstancePtr, int DeviceId, int hsize,
		int vsize, int buf_base_addr, int number_frame_count,
		int enable_frm_cnt_intr,vdma_run_mode mode);
/* ------------------------------------------------------------ */

/************************************************************************/

#endif /* SRC_VDMA_API_VDMA_API_H_ */
