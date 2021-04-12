%[X, Y, N, M] = eucl_Youla(P_gir.num{1}, P_gir.den{1}, 1);
%exercitiul 1
%1a
s=tf('s');
a1=3;
Q1=1/(s+11);
[X, Y, N, M] = eucl_Youla(P_gir.num{1}, P_gir.den{1}, a1);
C1 = (X + M*Q1) / (Y - N*Q1);
%verN1=evalfr(N,0);
%evalfr(Y,0);
C1=tf(ss(C1,'min'));
T1=(P_gir*C1)/(1+P_gir*C1);
T1=tf(ss(T1,'min'));
%step(T1);
stepinfo(T1)



%exercitiul 2

a2=3;
[X2, Y2, N2,M2] = eucl_Youla(P_gir.num{1}, P_gir.den{1}, a2);
verfY=evalfr(Y2,0);
verfN=evalfr(N2,0);
%Q2=((verfY/verfN))*(1/(s+5));
%verfQ=evalfr(Q2,0)
Q2=(1/(s+(verfN/verfY)));
C2 = (X2 + M2*Q2) / (Y2 - N2*Q2);
%verfQ=evalfr(C2,0);
%evalfr(Y2,0)
C2=tf(ss(C2,'min'));%imi da un  pol zero
T2=(P_gir*C2)/(1+P_gir*C2);
T2=tf(ss(T2,'min'));
stepinfo(T2)
%step(T2);










