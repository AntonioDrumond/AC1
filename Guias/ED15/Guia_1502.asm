;Carregar os 3 valores, em duas unidades de memoria cada

LXI H,C0F0
MVI M,45H
LXI H,C0F1
MVI M,54H

LXI H,C100
MVI M,DBH
LXI H,C101
MVI M,C7

LXI H,C110
MVI M,4EH
LXI H,C111
MVI M,F5

; Primeira soma


HLT