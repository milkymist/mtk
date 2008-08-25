//////////////////////////////////////////////////////////////////////////////
// Filename:          /media/hdc5/edk_user_repository/MyProcessorIPLib/drivers/plb_ps2_controller_v1_00_a/src/plb_ps2_controller.c
// Version:           1.00.a
// Description:       plb_ps2_controller Driver Source File
// Date:              Sat Jan 12 14:37:13 2008 (by Create and Import Peripheral Wizard)
//////////////////////////////////////////////////////////////////////////////


/***************************** Include Files *******************************/

#include "plb_ps2_controller.h"

/************************** Function Definitions ***************************/

/**
 *
 * Enable all possible interrupts from PLB_PS2_CONTROLLER device.
 *
 * @param   baseaddr_p is the base address of the PLB_PS2_CONTROLLER device.
 *
 * @return  None.
 *
 * @note    None.
 *
 */
void PLB_PS2_CONTROLLER_EnableInterrupt(void * baseaddr_p)
{
  Xuint32 baseaddr;
  baseaddr = (Xuint32) baseaddr_p;

  /*
   * Enable all interrupt source from user logic.
   */
  PLB_PS2_CONTROLLER_mWriteReg(baseaddr, PLB_PS2_CONTROLLER_INTR_IPIER_OFFSET, 0x00000003);

  /*
   * Enable all possible interrupt sources from device.
   */
  PLB_PS2_CONTROLLER_mWriteReg(baseaddr, PLB_PS2_CONTROLLER_INTR_DIER_OFFSET,
    INTR_TERR_MASK
    | INTR_DPTO_MASK
    | INTR_IPIR_MASK
    );

  /*
   * Set global interrupt enable.
   */
  PLB_PS2_CONTROLLER_mWriteReg(baseaddr, PLB_PS2_CONTROLLER_INTR_DGIER_OFFSET, INTR_GIE_MASK);
}

/**
 *
 * Example interrupt controller handler for PLB_PS2_CONTROLLER device.
 * This is to show example of how to toggle write back ISR to clear interrupts.
 *
 * @param   baseaddr_p is the base address of the PLB_PS2_CONTROLLER device.
 *
 * @return  None.
 *
 * @note    None.
 *
 */
void PLB_PS2_CONTROLLER_Intr_DefaultHandler(void * baseaddr_p)
{
  Xuint32 baseaddr;
  Xuint32 IntrStatus;
Xuint32 IpStatus;
  baseaddr = (Xuint32) baseaddr_p;

  /*
   * Get status from Device Interrupt Status Register.
   */
  IntrStatus = PLB_PS2_CONTROLLER_mReadReg(baseaddr, PLB_PS2_CONTROLLER_INTR_DISR_OFFSET);

//  xil_printf("Device Interrupt! DISR value : 0x%08x \n\r", IntrStatus);

  /*
   * Verify the source of the interrupt is the user logic and clear the interrupt
   * source by toggle write baca to the IP ISR register.
   */
  if ( (IntrStatus & INTR_IPIR_MASK) == INTR_IPIR_MASK )
  {
//    xil_printf("User logic interrupt! \n\r");
    IpStatus = PLB_PS2_CONTROLLER_mReadReg(baseaddr, PLB_PS2_CONTROLLER_INTR_IPISR_OFFSET);
    PLB_PS2_CONTROLLER_mWriteReg(baseaddr, PLB_PS2_CONTROLLER_INTR_IPISR_OFFSET, IpStatus);
  }

}

