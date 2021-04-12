%Tema 2
%Birsaneanu Andreea Ruxandra

%ex 1
omeg=logspace(-2,2,1000)';
%nyquist(P_tan,omeg);
%nyquist(P_tan*2,omeg);
%nyquist(P_tan*exp(-1i*(pi/4)),omeg);
%num=0.4435;
%den=[1 1.609 3.445 4.307 0];
%H=tf(num,den);
%nyquist(H,omeg);



%ex1a
[R1,I1]=nyquist(P_tan,omeg);
inters1=R1(:,:,1);
%interes1=0.103;

%ex1b
[R2,I2]=nyquist(P_tan,omeg);
%interes2=R2(:,:,562)%probleme
inters2=-0.358;

%ex1c
[R3, I3]=nyquist(P_tan*2,omeg);
inters3=-0.7165;
%interes3=R3(:,:,562);%probleme
%interes3=R3(562);

%ex1d
[R4,I4]=nyquist(P_tan*exp(-1i*(pi/4)),omeg);
%interes4=-0.484;
inters4=R4(:,:,562);

%ex1e
%asimpt=-0.0824;
num=0.4435;
den=[1 1.609 3.445 4.307 0];
H=tf(num,den);
[RE,IM]=nyquist(H,omeg);
asimpt=RE(:,:,1);



%ex2
%ex2a
K_1=971.006;
T_1=570;
C_1=tf(K_1,[T_1 1]);

%x=evalfr(P_tan*C_1,0);
%C_1=100/P_tan;
%(P_tan*C_1,0)
%C_1=tf(K_1[T_1 1]);
%nyquist(P_tan*C_1);
%nyquist(P_tan*C_1,omeg);

%ex2b
K_2=971.006;
T_2=1500;
C_2=K_2*tf([1 1],[T_2 1]);


%y=evalfr(P_tan*C_2,0);
%nyquist(P_tan*C_2,omeg);
%hold on;
%nyquist(tf([-1 1],[1,1]),omeg);%>CERCUL UNITATE ?????????????cred ca e bine

%ex3;
%ex3a
[a1,d1]=bode(P_tan,1);
amp1=a1*7;
def1=d1+45;
%vreau sa iau valoare cand omega este 1 pentru a nu imi influenta chestiile 

%ex3b
[a2,d2]=bode(P_tan*3,1);%putem pune omeg in loc de 1
amp2=a2*7;%avem pentru omega(500)ca sa stiu p sa avem a2(500)
def2=d2+45;%aici avem d2(500) 
%tot val lui omega 1
%da acelasi lucru dar e o dif mica de zecimale 


%ex3c
[a3,d3]=bode(P_tan*exp(-1i*(pi/6)),1);
amp3=a3*7;
def3=d3+45;

%ex3 d si e
[a4,d4]=bode(P_tan*100,omeg);
omeg_1=omeg(644);
omeg_2=omeg(568);


%ex4
%ex4a si b
%bode(P_tan,omeg)
K_3=970;%aici aveam porneste din 40 dar mai adaugam 20 dinainte de la ptan decik=60 in dB=>k=20lg k aflam cat e K
w_3=0.2;
C_3=tf(K_3*w_3,[1 w_3]);
%bode(P_tan*C_3,omeg);

%ex4c

A_4=0.621066;
B_4=3;
C_4=100*tf(B_4*[1 A_4],A_4*[1 B_4]);
[amplitudinea,faza]=bode(P_tan*C_4, omeg_2);








