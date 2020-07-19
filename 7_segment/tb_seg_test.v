/*///////////////////////////////////////////////////////////////////////////////////////
//											                                                               //
//  Top level Test Simulation File                                                     //
//											                                                               //
//  Libertron Co., LTD. 2010                                                  				 //
//  SL2 Enducation Lab. ADC Test Bench                      			                     //
/////////////////////////////////////////////////////////////////////////////////////////
//											                                                               //
//  Created Date: 2010.01.25                                                     	     //
//	Source File : seg_test.v                                                           //
//  File Name   : tb_seg_test.v										                                     //
//  Author      : Libertron R&D Lab.                                                   //
//                                                                                     //
//  Copyright @2010 Libertron Co., LTD.                                                //
//  All rights reserved                                                                //
//                                                                                     //
///////////////////////////////////////////////////////////////////////////////////////*/
`timescale 1 ns / 1ps

module tb_seg_test;
//Inputs
reg  [3:0]  push  ;
reg  [7:0]  dip   ;
 //Outputs
wire [7:0]  seg   ;
wire [5:0]  digit ;
  
seg_test uut
     ( 
      .push       ( push  ),
      .dip        ( dip   ),
      .digit      ( digit ),  
      .seg        ( seg   ) 
      );
/*///////////////////////////////////////////////////////////////////////////////////////
** Parameter Define                                    
///////////////////////////////////////////////////////////////////////////////////////*/
parameter	thclk	     =  5              ;//100Mhz                    
parameter	tclk	     = (thclk *  2    );
parameter	trst	     = (tclk  * 10    );
integer   count ;
integer   count1 ;
/*///////////////////////////////////////////////////////////////////////////////////////
// Clock    
///////////////////////////////////////////////////////////////////////////////////////*/

/*///////////////////////////////////////////////////////////////////////////////////////
// Main Test Bench
///////////////////////////////////////////////////////////////////////////////////////*/
initial
begin
    for (count1=0; count1 <10 ; count1 = count1+1) begin
        case (count1)
        	0       : begin
        	          dip =8'b00000000;
        	            for (count=0;count < 4;count=count+1) begin
                        case (count)
                        	0       : push =4'b1000;
                        	1       : push =4'b0100;
                        	2       : push =4'b0010;
                        	3       : push =4'b0001;
                        	default : push =4'b0000;
                        endcase
                      #(tclk*100);  
                      end
                    end
          1       : begin dip =8'b10000000;push =4'b0000;end
        	2       : begin dip =8'b01000000;push =4'b0000;end
        	3       : begin dip =8'b00100000;push =4'b0000;end
        	4       : begin dip =8'b00010000;push =4'b0000;end
        	5       : begin dip =8'b00001000;push =4'b0000;end
        	6       : begin dip =8'b00000100;push =4'b0000;end
        	7       : begin dip =8'b00000010;push =4'b0000;end
        	8       : begin dip =8'b00000001;push =4'b0000;end
        	default : begin dip =8'b00000000;push =4'b0000;end
        endcase         
        push =4'b0000;
        #(tclk*100);
    end
    $finish;
end

endmodule