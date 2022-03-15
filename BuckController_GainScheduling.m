function y = BuckController_GainScheduling(uR,uVin)

Vin=[80 120]; R=[8 12];

u1=(1/uR);
u2=uVin;

P3 = [1/(max(R)) 1/(min(R))]; %1/R
P6 = [min(Vin) max(Vin)]; %Vin


c1 = (u1-max(P3))/(min(P3)-max(P3));
d1 = (u2-max(P6))/(min(P6)-max(P6));
c2 = 1- c1;
d2 = 1- d1;

y =d1*[-0.11161    -0.240788      42.0461]  + d2*[-0.100536    -0.228288      41.9243] ;
