//-----------------------------------------------------------------------------
// hz_top.v
//-----------------------------------------------------------------------------

module hz_top
  (
    RS232_Uart_1_sout,
    RS232_Uart_1_sin,
    RESET,
    CLK_P,
    CLK_N
  );
  output RS232_Uart_1_sout;
  input RS232_Uart_1_sin;
  input RESET;
  input CLK_P;
  input CLK_N;

  (* BOX_TYPE = "user_black_box" *)
  hz
    hz_i (
      .RS232_Uart_1_sout ( RS232_Uart_1_sout ),
      .RS232_Uart_1_sin ( RS232_Uart_1_sin ),
      .RESET ( RESET ),
      .CLK_P ( CLK_P ),
      .CLK_N ( CLK_N )
    );

endmodule

