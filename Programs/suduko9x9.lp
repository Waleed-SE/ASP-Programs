boxx(1, 0, 0, 0, 0, 0, 0, 0, 0, 0).
boxx(2, 0, 0, 0, 0, 0, 0, 0, 0, 0).
boxx(3, 0, 0, 0, 0, 0, 0, 0, 0, 0).
boxx(4, 0, 0, 0, 0, 0, 0, 0, 0, 0).

val(1..9).

% For All Combinations
1 { box(ID, A, B, C, D, E, F, G, H, I) : val(A), val(B), val(C), val(D), val(E), val(F), val(G), val(H), val(I)} 1 :- val(ID).

% Horizontal Lines
linex(1, A, B, C, A1, B1, C1, A2, B2, C2) :- box(1, A, B, C, D, E, F, G, H, I), box(4, A1, B1, C1, D1, E1, F1, G1, H1, I1), box(7, A2, B2, C2, D2, E2, F2, G2, H2, I2).  
linex(2, D, E, F, D1, E1, F1, D2, E2, F2) :- box(1, A, B, C, D, E, F, G, H, I), box(4, A1, B1, C1, D1, E1, F1, G1, H1, I1), box(7, A2, B2, C2, D2, E2, F2, G2, H2, I2).  
linex(3, G, H, I, G1, H1, I1, G2, H2, I2) :- box(1, A, B, C, D, E, F, G, H, I), box(4, A1, B1, C1, D1, E1, F1, G1, H1, I1), box(7, A2, B2, C2, D2, E2, F2, G2, H2, I2).
linex(4, A, B, C, A1, B1, C1, A2, B2, C2) :- box(2, A, B, C, D, E, F, G, H, I), box(5, A1, B1, C1, D1, E1, F1, G1, H1, I1), box(8, A2, B2, C2, D2, E2, F2, G2, H2, I2).
linex(5, D, E, F, D1, E1, F1, D2, E2, F2) :- box(2, A, B, C, D, E, F, G, H, I), box(5, A1, B1, C1, D1, E1, F1, G1, H1, I1), box(8, A2, B2, C2, D2, E2, F2, G2, H2, I2).  
linex(6, G, H, I, G1, H1, I1, G2, H2, I2) :- box(2, A, B, C, D, E, F, G, H, I), box(5, A1, B1, C1, D1, E1, F1, G1, H1, I1), box(8, A2, B2, C2, D2, E2, F2, G2, H2, I2).  
linex(7, A, B, C, A1, B1, C1, A2, B2, C2) :- box(3, A, B, C, D, E, F, G, H, I), box(6, A1, B1, C1, D1, E1, F1, G1, H1, I1), box(9, A2, B2, C2, D2, E2, F2, G2, H2, I2).
linex(8, D, E, F, D1, E1, F1, D2, E2, F2) :- box(3, A, B, C, D, E, F, G, H, I), box(6, A1, B1, C1, D1, E1, F1, G1, H1, I1), box(9, A2, B2, C2, D2, E2, F2, G2, H2, I2).
linex(9, G, H, I, G1, H1, I1, G2, H2, I2) :- box(3, A, B, C, D, E, F, G, H, I), box(6, A1, B1, C1, D1, E1, F1, G1, H1, I1), box(9, A2, B2, C2, D2, E2, F2, G2, H2, I2).

% Vertical Lines
liney(1, A, D, G, A1, D1, G1, A2, D2, G2) :- box(1, A, B, C, D, E, F, G, H, I), box(2, A1, B1, C1, D1, E1, F1, G1, H1, I1), box(3, A2, B2, C2, D2, E2, F2, G2, H2, I2).  
liney(2, B, E, H, B1, E1, H1, B2, E2, H2) :- box(1, A, B, C, D, E, F, G, H, I), box(2, A1, B1, C1, D1, E1, F1, G1, H1, I1), box(3, A2, B2, C2, D2, E2, F2, G2, H2, I2).  
liney(3, C, F, I, C1, F1, I1, C2, F2, I2) :- box(1, A, B, C, D, E, F, G, H, I), box(2, A1, B1, C1, D1, E1, F1, G1, H1, I1), box(3, A2, B2, C2, D2, E2, F2, G2, H2, I2).
liney(4, A, D, G, A1, D1, G1, A2, D2, G2) :- box(4, A, B, C, D, E, F, G, H, I), box(5, A1, B1, C1, D1, E1, F1, G1, H1, I1), box(6, A2, B2, C2, D2, E2, F2, G2, H2, I2).
liney(5, B, E, H, B1, E1, H1, B2, E2, H2) :- box(4, A, B, C, D, E, F, G, H, I), box(5, A1, B1, C1, D1, E1, F1, G1, H1, I1), box(6, A2, B2, C2, D2, E2, F2, G2, H2, I2).  
liney(6, C, F, I, C1, F1, I1, C2, F2, I2) :- box(4, A, B, C, D, E, F, G, H, I), box(5, A1, B1, C1, D1, E1, F1, G1, H1, I1), box(6, A2, B2, C2, D2, E2, F2, G2, H2, I2).  
liney(7, A, D, G, A1, D1, G1, A2, D2, G2) :- box(7, A, B, C, D, E, F, G, H, I), box(8, A1, B1, C1, D1, E1, F1, G1, H1, I1), box(9, A2, B2, C2, D2, E2, F2, G2, H2, I2).
liney(8, B, E, H, B1, E1, H1, B2, E2, H2) :- box(7, A, B, C, D, E, F, G, H, I), box(8, A1, B1, C1, D1, E1, F1, G1, H1, I1), box(9, A2, B2, C2, D2, E2, F2, G2, H2, I2).
liney(9, C, F, I, C1, F1, I1, C2, F2, I2) :- box(7, A, B, C, D, E, F, G, H, I), box(8, A1, B1, C1, D1, E1, F1, G1, H1, I1), box(9, A2, B2, C2, D2, E2, F2, G2, H2, I2).


% Ensure only non-zero values are assigned
:- box(ID, A, B, C, D, E, F, G, H, I), boxx(ID1, A1, B1, C1, D1, E1, F1, G1, H1, I1), ID=ID1, A1 != 0, A != A1.
:- box(ID, A, B, C, D, E, F, G, H, I), boxx(ID1, A1, B1, C1, D1, E1, F1, G1, H1, I1), ID=ID1, B1 != 0, B != B1.
:- box(ID, A, B, C, D, E, F, G, H, I), boxx(ID1, A1, B1, C1, D1, E1, F1, G1, H1, I1), ID=ID1, C1 != 0, C != C1.
:- box(ID, A, B, C, D, E, F, G, H, I), boxx(ID1, A1, B1, C1, D1, E1, F1, G1, H1, I1), ID=ID1, D1 != 0, D != D1.
:- box(ID, A, B, C, D, E, F, G, H, I), boxx(ID1, A1, B1, C1, D1, E1, F1, G1, H1, I1), ID=ID1, D1 != 0, E != E1.
:- box(ID, A, B, C, D, E, F, G, H, I), boxx(ID1, A1, B1, C1, D1, E1, F1, G1, H1, I1), ID=ID1, D1 != 0, F != F1.
:- box(ID, A, B, C, D, E, F, G, H, I), boxx(ID1, A1, B1, C1, D1, E1, F1, G1, H1, I1), ID=ID1, D1 != 0, G != G1.
:- box(ID, A, B, C, D, E, F, G, H, I), boxx(ID1, A1, B1, C1, D1, E1, F1, G1, H1, I1), ID=ID1, D1 != 0, H != H1.
:- box(ID, A, B, C, D, E, F, G, H, I), boxx(ID1, A1, B1, C1, D1, E1, F1, G1, H1, I1), ID=ID1, D1 != 0, I != I1.

% For Veritical Line Duplication
:- linex(ID, A, B, C, D, E, F, G, H, I), A=B.
:- linex(ID, A, B, C, D, E, F, G, H, I), A=C.
:- linex(ID, A, B, C, D, E, F, G, H, I), A=D.
:- linex(ID, A, B, C, D, E, F, G, H, I), A=E.
:- linex(ID, A, B, C, D, E, F, G, H, I), A=F.
:- linex(ID, A, B, C, D, E, F, G, H, I), A=G.
:- linex(ID, A, B, C, D, E, F, G, H, I), A=H.
:- linex(ID, A, B, C, D, E, F, G, H, I), A=I.
:- linex(ID, A, B, C, D, E, F, G, H, I), B=C.
:- linex(ID, A, B, C, D, E, F, G, H, I), B=D.
:- linex(ID, A, B, C, D, E, F, G, H, I), B=E.
:- linex(ID, A, B, C, D, E, F, G, H, I), B=F.
:- linex(ID, A, B, C, D, E, F, G, H, I), B=G.
:- linex(ID, A, B, C, D, E, F, G, H, I), B=H.
:- linex(ID, A, B, C, D, E, F, G, H, I), B=I.
:- linex(ID, A, B, C, D, E, F, G, H, I), C=D.
:- linex(ID, A, B, C, D, E, F, G, H, I), C=E.
:- linex(ID, A, B, C, D, E, F, G, H, I), C=F.
:- linex(ID, A, B, C, D, E, F, G, H, I), C=G.
:- linex(ID, A, B, C, D, E, F, G, H, I), C=H.
:- linex(ID, A, B, C, D, E, F, G, H, I), C=I.
:- linex(ID, A, B, C, D, E, F, G, H, I), D=E.
:- linex(ID, A, B, C, D, E, F, G, H, I), D=F.
:- linex(ID, A, B, C, D, E, F, G, H, I), D=G.
:- linex(ID, A, B, C, D, E, F, G, H, I), D=H.
:- linex(ID, A, B, C, D, E, F, G, H, I), D=I.
:- linex(ID, A, B, C, D, E, F, G, H, I), E=F.
:- linex(ID, A, B, C, D, E, F, G, H, I), E=G.
:- linex(ID, A, B, C, D, E, F, G, H, I), E=H.
:- linex(ID, A, B, C, D, E, F, G, H, I), E=I.
:- linex(ID, A, B, C, D, E, F, G, H, I), F=G.
:- linex(ID, A, B, C, D, E, F, G, H, I), F=H.
:- linex(ID, A, B, C, D, E, F, G, H, I), F=I.
:- linex(ID, A, B, C, D, E, F, G, H, I), G=H.
:- linex(ID, A, B, C, D, E, F, G, H, I), G=I.
:- linex(ID, A, B, C, D, E, F, G, H, I), H=I.

% For Horizontal Line Duplication
:- liney(ID, A, B, C, D, E, F, G, H, I), A=B.
:- liney(ID, A, B, C, D, E, F, G, H, I), A=C.
:- liney(ID, A, B, C, D, E, F, G, H, I), A=D.
:- liney(ID, A, B, C, D, E, F, G, H, I), A=E.
:- liney(ID, A, B, C, D, E, F, G, H, I), A=F.
:- liney(ID, A, B, C, D, E, F, G, H, I), A=G.
:- liney(ID, A, B, C, D, E, F, G, H, I), A=H.
:- liney(ID, A, B, C, D, E, F, G, H, I), A=I.
:- liney(ID, A, B, C, D, E, F, G, H, I), B=C.
:- liney(ID, A, B, C, D, E, F, G, H, I), B=D.
:- liney(ID, A, B, C, D, E, F, G, H, I), B=E.
:- liney(ID, A, B, C, D, E, F, G, H, I), B=F.
:- liney(ID, A, B, C, D, E, F, G, H, I), B=G.
:- liney(ID, A, B, C, D, E, F, G, H, I), B=H.
:- liney(ID, A, B, C, D, E, F, G, H, I), B=I.
:- liney(ID, A, B, C, D, E, F, G, H, I), C=D.
:- liney(ID, A, B, C, D, E, F, G, H, I), C=E.
:- liney(ID, A, B, C, D, E, F, G, H, I), C=F.
:- liney(ID, A, B, C, D, E, F, G, H, I), C=G.
:- liney(ID, A, B, C, D, E, F, G, H, I), C=H.
:- liney(ID, A, B, C, D, E, F, G, H, I), C=I.
:- liney(ID, A, B, C, D, E, F, G, H, I), D=E.
:- liney(ID, A, B, C, D, E, F, G, H, I), D=F.
:- liney(ID, A, B, C, D, E, F, G, H, I), D=G.
:- liney(ID, A, B, C, D, E, F, G, H, I), D=H.
:- liney(ID, A, B, C, D, E, F, G, H, I), D=I.
:- liney(ID, A, B, C, D, E, F, G, H, I), E=F.
:- liney(ID, A, B, C, D, E, F, G, H, I), E=G.
:- liney(ID, A, B, C, D, E, F, G, H, I), E=H.
:- liney(ID, A, B, C, D, E, F, G, H, I), E=I.
:- liney(ID, A, B, C, D, E, F, G, H, I), F=G.
:- liney(ID, A, B, C, D, E, F, G, H, I), F=H.
:- liney(ID, A, B, C, D, E, F, G, H, I), F=I.
:- liney(ID, A, B, C, D, E, F, G, H, I), G=H.
:- liney(ID, A, B, C, D, E, F, G, H, I), G=I.
:- liney(ID, A, B, C, D, E, F, G, H, I), H=I.

% For Inside Box Duplication
:- box(ID, A, B, C, D, E, F, G, H, I), A=B.
:- box(ID, A, B, C, D, E, F, G, H, I), A=C.
:- box(ID, A, B, C, D, E, F, G, H, I), A=D.
:- box(ID, A, B, C, D, E, F, G, H, I), A=E.
:- box(ID, A, B, C, D, E, F, G, H, I), A=F.
:- box(ID, A, B, C, D, E, F, G, H, I), A=G.
:- box(ID, A, B, C, D, E, F, G, H, I), A=H.
:- box(ID, A, B, C, D, E, F, G, H, I), A=I.
:- box(ID, A, B, C, D, E, F, G, H, I), B=C.
:- box(ID, A, B, C, D, E, F, G, H, I), B=D.
:- box(ID, A, B, C, D, E, F, G, H, I), B=E.
:- box(ID, A, B, C, D, E, F, G, H, I), B=F.
:- box(ID, A, B, C, D, E, F, G, H, I), B=G.
:- box(ID, A, B, C, D, E, F, G, H, I), B=H.
:- box(ID, A, B, C, D, E, F, G, H, I), B=I.
:- box(ID, A, B, C, D, E, F, G, H, I), C=D.
:- box(ID, A, B, C, D, E, F, G, H, I), C=E.
:- box(ID, A, B, C, D, E, F, G, H, I), C=F.
:- box(ID, A, B, C, D, E, F, G, H, I), C=G.
:- box(ID, A, B, C, D, E, F, G, H, I), C=H.
:- box(ID, A, B, C, D, E, F, G, H, I), C=I.
:- box(ID, A, B, C, D, E, F, G, H, I), D=E.
:- box(ID, A, B, C, D, E, F, G, H, I), D=F.
:- box(ID, A, B, C, D, E, F, G, H, I), D=G.
:- box(ID, A, B, C, D, E, F, G, H, I), D=H.
:- box(ID, A, B, C, D, E, F, G, H, I), D=I.
:- box(ID, A, B, C, D, E, F, G, H, I), E=F.
:- box(ID, A, B, C, D, E, F, G, H, I), E=G.
:- box(ID, A, B, C, D, E, F, G, H, I), E=H.
:- box(ID, A, B, C, D, E, F, G, H, I), E=I.
:- box(ID, A, B, C, D, E, F, G, H, I), F=G.
:- box(ID, A, B, C, D, E, F, G, H, I), F=H.
:- box(ID, A, B, C, D, E, F, G, H, I), F=I.
:- box(ID, A, B, C, D, E, F, G, H, I), G=H.
:- box(ID, A, B, C, D, E, F, G, H, I), G=I.
:- box(ID, A, B, C, D, E, F, G, H, I), H=I.

#show box/10.