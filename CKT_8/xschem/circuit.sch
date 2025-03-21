v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 0 320 -450 500 -440 {}
B 2 1010 -540 1810 -140 {flags=graph
y1=-1.7e-10
y2=1.7e-10
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=1.5
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
sim_type=dc
rainbow=0
legend=1
rawfile=$netlist_dir/dc_diff_pair.raw
sweep=Vp
digital=0
color="7 4"
node="i(vn1)
i(vp1)"}
N 250 -290 280 -290 {lab=Vp}
N 540 -290 570 -290 {lab=Vn}
N 320 -260 320 -230 {lab=#net1}
N 500 -260 500 -230 {lab=#net1}
N 410 -230 500 -230 {lab=#net1}
N 410 -230 410 -190 {lab=#net1}
N 340 -160 370 -160 {lab=Vb}
N 410 -130 410 -90 {lab=GND}
N 320 -230 410 -230 {lab=#net1}
N 320 -290 350 -290 {lab=GND}
N 470 -290 500 -290 {lab=GND}
N 30 -550 30 -530 {lab=GND}
N 30 -630 30 -610 {lab=Vp}
N 120 -550 120 -530 {lab=GND}
N 120 -630 120 -610 {lab=Vn}
N 210 -550 210 -530 {lab=GND}
N 210 -630 210 -610 {lab=Vb}
N 410 -160 440 -160 {lab=GND}
N 320 -410 320 -320 {lab=#net2}
N 500 -410 500 -320 {lab=#net3}
N 320 -510 320 -470 {lab=VDD}
N 500 -510 500 -470 {lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 300 -290 2 1 {name=M1
l=0.45u
w=1.0u
ng=1
m=1
hide_texts=true
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 520 -290 2 0 {name=M2
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
hide_texts=true
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 390 -160 2 1 {name=M3
l=0.45u
w=1.0u
ng=1
m=1
hide_texts=true
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} 410 -90 0 0 {name=l1 lab=GND}
C {vsource.sym} 30 -580 0 0 {name=Vp savecurrent=true}
C {title.sym} 160 70 0 0 {name=l2 author="Vasil Yordanov"}
C {lab_wire.sym} 260 -290 0 0 {name=p1 sig_type=std_logic lab=Vp


}
C {lab_wire.sym} 560 -290 0 1 {name=p2 sig_type=std_logic lab=Vn

}
C {lab_wire.sym} 350 -160 0 0 {name=p3 sig_type=std_logic lab=Vb


}
C {lab_wire.sym} 340 -290 0 1 {name=p4 sig_type=std_logic lab=GND


}
C {lab_wire.sym} 480 -290 0 0 {name=p5 sig_type=std_logic lab=GND


}
C {vsource.sym} 120 -580 0 0 {name=Vn savecurrent=true}
C {vsource.sym} 210 -580 0 0 {name=Vb savecurrent=true value=1}
C {gnd.sym} 30 -530 0 0 {name=l3 lab=GND}
C {gnd.sym} 120 -530 0 0 {name=l4 lab=GND}
C {gnd.sym} 210 -530 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 30 -630 0 0 {name=p7 sig_type=std_logic lab=Vp


}
C {lab_wire.sym} 120 -630 0 0 {name=p8 sig_type=std_logic lab=Vn

}
C {lab_wire.sym} 210 -630 0 0 {name=p9 sig_type=std_logic lab=Vb


}
C {lab_wire.sym} 430 -160 0 1 {name=p10 sig_type=std_logic lab=GND


}
C {ngspice_probe.sym} 320 -330 0 0 {name=r1}
C {ngspice_probe.sym} 500 -330 0 0 {name=r2}
C {devices/code_shown.sym} 0 -40 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 640 -420 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.option savecurrents
.control
  save @n.xm1.nsg13_lv_nmos[gm]
  save @n.xm1.nsg13_lv_nmos[vth]

  dc Vp 0 1.5 0.1 Vn 0 1.5 0.1 
  write dc_diff_pair.raw
  set appendwrite
  write dc_diff_pair.raw 
  quit
.endc
"}
C {devices/launcher.sym} 1070 -60 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/dc_diff_pair.raw dc"
}
C {devices/launcher.sym} 1070 -100 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1070 -20 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {vsource.sym} 320 -440 2 1 {name=Vp1 savecurrent=true value=0}
C {vsource.sym} 500 -440 2 0 {name=Vn1 savecurrent=true value=0}
C {vdd.sym} 320 -510 0 0 {name=l6 lab=VDD}
C {vdd.sym} 500 -510 0 0 {name=l7 lab=VDD}
