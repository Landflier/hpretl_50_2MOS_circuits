v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 860 -615 1660 -215 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk
clk_b"
color="10 11"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/circuit_14_tran.raw
digital=1}
B 2 857.5 -1022.5 1657.5 -622.5 {flags=graph
y1=0.73
y2=0.95
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="v_out
v_in"
color="5 12"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/circuit_14_tran.raw
digital=0}
T {Desription

This is a transmission gate. The idea of the circuit is to
act as an analog switch, either letting the input signal
go through with very small resistance, or blcoking it.} 1070 -1210 0 0 0.4 0.4 {}
N 470 -490 470 -460 {lab=V_in}
N 530 -490 530 -460 {lab=V_out}
N 500 -590 500 -560 {lab=CLK_b}
N 500 -420 500 -400 {lab=CLK}
N 430 -490 470 -490 {lab=V_in}
N 470 -520 470 -490 {lab=V_in}
N 530 -490 727.5 -490 {lab=V_out}
N 530 -520 530 -490 {lab=V_out}
N 90 -820 90 -780 {lab=CLK}
N 90 -1110 200 -1110 {lab=V_in}
N 90 -1080 200 -1080 {lab=V_out}
N 500 -520 500 -500 {lab=VDD}
N 500 -500 550 -500 {lab=VDD}
N 550 -570 550 -500 {lab=VDD}
N 500 -480 500 -460 {lab=VSS}
N 500 -480 550 -480 {lab=VSS}
N 550 -480 550 -410 {lab=VSS}
N 90 -990 90 -970 {lab=VDD}
N 170 -990 170 -970 {lab=VSS}
N 90 -720 90 -700 {lab=GND}
N 90 -910 90 -890 {lab=GND}
N 170 -910 170 -890 {lab=GND}
N 240 -720 240 -700 {lab=GND}
N 240 -820 240 -780 {lab=V_in}
N 170 -712.5 170 -675 {lab=CLK}
N 170 -820 170 -785 {lab=CLK_b}
C {title-personal-scaled.sym} 0 0 0 0 {name=l1 author="Vasil Yordanov" rev=1.0 lock=true}
C {sg13g2_pr/sg13_lv_pmos.sym} 500 -540 1 0 {name=M1
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
hide_texts=true
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 500 -440 1 1 {name=M2
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
hide_texts=true
spiceprefix=X
}
C {lab_wire.sym} 500 -400 2 1 {name=p1 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 500 -590 0 0 {name=p3 sig_type=std_logic lab=CLK_b
}
C {devices/code_shown.sym} 7.5 -125 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.include /home/vasil/CAD_VLSI/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {lab_wire.sym} 430 -490 0 0 {name=p4 sig_type=std_logic lab=V_in}
C {lab_wire.sym} 725 -490 0 1 {name=p5 sig_type=std_logic lab=V_out}
C {vsource.sym} 90 -750 0 0 {name=V1 
value="pulse (0 1.5 0.5n 100p 100p 1n 2.2n)"
hide_texts=true
savecurrent=true}
C {gnd.sym} 90 -700 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 90 -820 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {code.sym} 765 -1175 0 0 {name=SPICE only_toplevel=false 
value="
.temp 27
.param vin=0
.control
dc vin 0 1.5 0.01
write circuit_14_dc.raw

tran 1p 10n
write circuit_14_tran.raw
.endc
"}
C {lab_wire.sym} 170 -820 0 0 {name=p9 sig_type=std_logic lab=CLK_b}
C {vdd.sym} 550 -570 0 0 {name=l4 lab=VDD}
C {vdd.sym} 550 -410 2 1 {name=l5 lab=VSS}
C {vdd.sym} 170 -990 0 0 {name=l3 lab=VSS}
C {vdd.sym} 90 -990 0 0 {name=l6 lab=VDD}
C {gnd.sym} 170 -890 0 0 {name=l8 lab=GND}
C {gnd.sym} 90 -890 0 0 {name=l9 lab=GND}
C {vsource.sym} 90 -940 0 0 {name=V2 
value=1.5
hide_texts=true
savecurrent=true}
C {devices/launcher.sym} 1017.5 -177.5 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {vsource.sym} 170 -940 0 0 {name=V3 
value=0
hide_texts=true
savecurrent=true}
C {vsource.sym} 240 -750 0 0 {name=vin
value=0.8
hide_texts=true
savecurrent=true}
C {gnd.sym} 240 -700 0 0 {name=l10 lab=GND}
C {lab_wire.sym} 240 -820 0 0 {name=p10 sig_type=std_logic lab=V_in}
C {devices/launcher.sym} 1020 -140 0 0 {name=h1
descr="load tran waves" 
tclcommand="xschem raw_read $netlist_dir/circuit_14_tran.raw tran"
}
C {code.sym} 887.5 -1175 0 0 {name=SPICE_SAVE only_toplevel=false 
value="
.save all
"}
C {iopin.sym} 90 -1110 0 1 {name=p2 lab=V_in}
C {iopin.sym} 200 -1080 0 0 {name=p7 lab=V_out}
C {devices/launcher.sym} 1020 -102.5 0 0 {name=h3
descr="load dc waves" 
tclcommand="xschem raw_read $netlist_dir/circuit_14_dc.raw tran"
}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 170 -752.5 3 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_wire.sym} 170 -677.5 2 1 {name=p8 sig_type=std_logic lab=CLK}
