boxx(1, 0, 0, 0, 0).
boxx(2, 0, 0, 0, 0).
boxx(3, 0, 0, 0, 0).
boxx(4, 0, 0, 0, 0).

val(1..4).

% For All Combinations
1 { box(ID, A, B, C, D) : val(A), val(B), val(C), val(D)} 1 :- val(ID).

% Horizontal Lines
linex(1, A, B, A1, B1) :- box(1, A, B, C, D), box(3, A1, B1, C1, D1).  
linex(2, C, D, C1, D1) :- box(1, A, B, C, D), box(3, A1, B1, C1, D1).  
linex(3, A, B, A1, B1) :- box(2, A, B, C, D), box(4, A1, B1, C1, D1).  
linex(4, C, D, C1, D1) :- box(1, A, B, C, D), box(3, A1, B1, C1, D1).  

% Vertical Lines
liney(1, A, C, A1, C1) :- box(1, A, B, C, D), box(2, A1, B1, C1, D1).  
liney(2, B, D, B1, D1) :- box(1, A, B, C, D), box(2, A1, B1, C1, D1).  
liney(3, A, C, A1, C1) :- box(3, A, B, C, D), box(4, A1, B1, C1, D1).  
liney(4, B, D, B1, D1) :- box(3, A, B, C, D), box(4, A1, B1, C1, D1).  

% Ensure only non-zero values are assigned
:- box(ID, A, B, C, D), boxx(ID1, A1, B1, C1, D1), ID=ID1, A1 != 0, A != A1.
:- box(ID, A, B, C, D), boxx(ID1, A1, B1, C1, D1), ID=ID1, B1 != 0, B != B1.
:- box(ID, A, B, C, D), boxx(ID1, A1, B1, C1, D1), ID=ID1, C1 != 0, C != C1.
:- box(ID, A, B, C, D), boxx(ID1, A1, B1, C1, D1), ID=ID1, D1 != 0, D != D1.

% For Veritical Line Duplication
:- linex(ID, A, B, C, D), A=B.
:- linex(ID, A, B, C, D), A=C.
:- linex(ID, A, B, C, D), A=D.
:- linex(ID, A, B, C, D), B=C.
:- linex(ID, A, B, C, D), B=D.
:- linex(ID, A, B, C, D), C=D.

% For Horizontal Line Duplication
:- liney(ID, A, B, C, D), A=B.
:- liney(ID, A, B, C, D), A=C.
:- liney(ID, A, B, C, D), A=D.
:- liney(ID, A, B, C, D), B=C.
:- liney(ID, A, B, C, D), B=D.
:- liney(ID, A, B, C, D), C=D.

% For Inside Box Duplication
:- box(ID, A, B, C, D), A=B.
:- box(ID, A, B, C, D), A=C.
:- box(ID, A, B, C, D), A=D.
:- box(ID, A, B, C, D), B=C.
:- box(ID, A, B, C, D), B=D.
:- box(ID, A, B, C, D), C=D.
#show box/5.