// Description: SSTIP_csim_PROG_PROG.v
// Purpose: Program 2 IPs

reg [NUM_CONF_BIT-1:0] conf;
select_ip(4'b0011);
po_reset;
conf = {NUM_CONF_BIT{1'b1}};
set_conf_all(conf, CFG_H, CEB_L, WEB_L);

fork
    begin
        IPsel = 4'b0011;
        PWR_LATCH;
        prog(BK00_ADDR, D00, MEMSEL, WEB_L, CEB_L, PRG_H, PPG_L, PG2_H, WRD_PRG);
    end

join


