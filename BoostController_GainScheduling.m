function y = BoostController_GainScheduling(uR,uVin)

Vin=[80 120]; R=[8 12];

u1=(1/uR);
u2=uVin;

P3 = [1/(max(R)) 1/(min(R))]; %1/R
P6 = [min(Vin) max(Vin)]; %Vin


c1 = (u1-max(P3))/(min(P3)-max(P3));
f1 = (u2-max(P6))/(min(P6)-max(P6));
c2 = 1- c1;
f2 = 1- f1;

y =c1*f1*[-0.083436    -0.101403      19.1453]  + c2*f1*[-0.0857195    -0.100762      19.0521]  + c1*f2*[-0.0493716   -0.0600288      11.1434]  + c2*f2*[-0.0572042   -0.0674981       12.614] ;


