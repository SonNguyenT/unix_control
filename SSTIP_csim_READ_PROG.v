// Description: SSTIP_csim_READ_PROG.v
// Purpose: Read while Prog. Program IP1 --> Read IP2

reg [NUM_CONF_BIT-1:0] conf;
select_ip(4'b0011);
po_reset;
conf = {NUM_CONF_BIT{1'b1}};
set_conf_all(conf, CFG_H, CEB_L, WEB_L);

fork
    begin
        IPsel = 4'b0001;
        PWR_LATCH;
        prog(BK00_ADDR, D00, MEMSEL, WEB_L, CEB_L, PRG_H, PPG_L, PG2_H, WRD_PRG);
    end
    begin
        @ (posedge PROG2)
        push_state;
        select_ip(4'b0010);
        read(RD_NORM, MEMSEL, addr_min, RDE_H, CEB_L, NOE_TIME, $urandom);
        pop_state;

        @ (posedge PROG2)
        push_state;
        select_ip(4'b0010);
        read(RD_NORM, MEMSEL, addr_min, RDE_H, CEB_L, NOE_TIME, $urandom);
//      select_ip(4'b0100);
//      read(RD_NORM, MEMSEL, addr_min, RDE_H, CEB_L, NOE_TIME, $urandom);
        pop_state;
    end

join


