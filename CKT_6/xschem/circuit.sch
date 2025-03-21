v {xschem version=3.4.6 file_version=1.2
* Copyright 2023 IHP PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
L 7 2140 -730 2140 -60 {}
N 470 70 470 150 {lab=#net1}
N 380 70 470 70 {lab=#net1}
N 380 20 380 70 {lab=#net1}
N 290 70 380 70 {lab=#net1}
N 290 70 290 150 {lab=#net1}
N 470 180 470 230 {lab=GND}
N 290 180 290 230 {lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 270 180 0 0 {name=M1
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_rf_nmos.sym} 490 180 0 1 {name=M2
l=0.35u
w=1.0u
ng=1
m=1
rfmode=1
model=sg13_hv_nmos
spiceprefix=X
}
C {gnd.sym} 290 230 0 0 {name=l1 lab=GND}
C {gnd.sym} 470 230 0 0 {name=l2 lab=GND}
C {isource.sym} 380 -10 0 0 {name=I0 value=1m}
