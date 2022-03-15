function y = BuckBoostController_GainScheduling(uR,uVin)

Vin=[80 120]; R=[8 12];

u1=(1/uR);
u2=uVin;

P3 = [1/(max(R)) 1/(min(R))]; %1/R
P6 = [min(Vin) max(Vin)]; %Vin


c1 = (u1-max(P3))/(min(P3)-max(P3));
f1 = (u2-max(P6))/(min(P6)-max(P6));
c2 = 1- c1;
f2 = 1- f1;

y = c1*f1*[-0.0304493   -0.0650686      10.0772]  + c2*f1*[-0.025916   -0.054657      9.1514]  + c1*f2*[-0.019174   -0.043788      6.6056]  + c2*f2*[-0.017289   -0.038233      6.2826]; 

