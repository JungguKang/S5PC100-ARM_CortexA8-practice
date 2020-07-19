
//////////////////////////////////////////////////////////////////////////////
//
//  Libertron Co., LTD. 2010                 www.libertron.com
//
//  SL2_Education LAB.
//
//////////////////////////////////////////////////////////////////////////////
//
//  File name   :     seg_test.v
//
//  Description :     
//
//
//  Author      :     Libertron R&D Lab.
//
//  Disclaimer: LIMITED WARRANTY AND DISCLAMER. These designs are
//              provided to you "as is". Libertron and its licensors makeand you
//              receive no warranties or conditions, express, implied,
//              statutory or otherwise, and Libertron specifically disclaims any
//              implied warranties of merchantability, non-infringement,or
//              fitness for a particular purpose. Libertron does notwarrant that
//              the functions contained in these designs will meet your
//              requirements, or that the operation of these designswill be
//              uninterrupted or error free, or that defects in theDesigns
//              will be corrected. Furthermore, Libertron does not warrantor
//              make any representations regarding use or the results ofthe
//              use of the designs in terms of correctness, accuracy,
//              reliability, or otherwise.
//
//              LIMITATION OF LIABILITY. In no event will Libertron or its
//              licensors be liable for any loss of data, lost profits,cost
//              or procurement of substitute goods or services, or forany
//              special, incidental, consequential, or indirect damages
//              arising from the use or operation of the designs or
//              accompanying documentation, however caused and on anytheory
//              of liability. This limitation will apply even if Libertron
//              has been advised of the possibility of such damage. This
//              limitation shall apply not-withstanding the failure ofthe
//              essential purpose of any limited remedies herein.
//
//  Copyright @2010 Libertron Co., LTD.
//  All rights reserved
//
//////////////////////////////////////////////////////////////////////////////

`timescale 1 ns / 1ps

module seg_test 
     ( 
      push  ,
      dip   ,
      digit ,
      seg   
      );
/*************************************************************
** Port Define Area                                         **
*************************************************************/
input  [3:0] push  ;
input  [7:0] dip   ;
output [5:0] digit ;
output [7:0] seg   ;
/*************************************************************
** Parameter Define Area                                    **
*************************************************************/

/*************************************************************
** Register Define Area                                     **
*************************************************************/
reg    [7:0] seg   ;
/*************************************************************
** integer Define Area                                     **
*************************************************************/

/*************************************************************
** Wire Define Area                                         **
*************************************************************/

/*************************************************************
** Seg Output                                               **
*************************************************************/
always @(push or dip) begin
    case ({push,dip}) 
    	12'b011111111111 : seg = 8'b01100110; 
    	12'b101111111111 : seg = 8'b01001111;
    	12'b110111111111 : seg = 8'b01011011;
    	12'b111011111111 : seg = 8'b00000110;
    	12'b111101111111 : seg = 8'b00111001;
    	12'b111110111111 : seg = 8'b01111100;
    	12'b111111011111 : seg = 8'b01110111;
    	12'b111111101111 : seg = 8'b01101111;
    	12'b111111110111 : seg = 8'b01111111;
    	12'b111111111011 : seg = 8'b00100111;
    	12'b111111111101 : seg = 8'b01111101;
    	12'b111111111110 : seg = 8'b01101101;
    	default          : seg = 8'b00111111;
    endcase
end	
/*************************************************************
** Data Output                                              **
*************************************************************/
assign digit = 6'b111111;

endmodule