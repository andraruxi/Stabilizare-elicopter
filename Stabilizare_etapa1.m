%Exercitiul 1
%Exercitiul 1a
P_tan.num{1};
P_tan.den{1};

%[H,delta]=hurwitz(P_tan.den{1});
H(1,1)=P_tan.den{1}(2);
H(2,1)=P_tan.den{1}(1);
H(3,1)=0;
H(1,2)=P_tan.den{1}(4);
H(2,2)=P_tan.den{1}(3);
H(3,2)=P_tan.den{1}(2);
H(1,3)=0;
H(2,3)=0;
H(3,3)=P_tan.den{1}(4);

%exerciutiu 1b
det1=H(1,1);
det2=(H(1,1)*H(2,2))-(H(1,2)*H(2,1));
det3=det(H);
%exercitiul 1c
marime=size(P_tan.den{1});
numitor=P_tan.den{1};
radacini=roots(numitor)';
poli=radacini';

%Exercitiul2
%Exercitiul 2a
t=(0:0.01:180)';
h_pondere=impulse(P_tan,t);
%plot(h_pondere);

%Exercitiul 2b
rasp_trp=step(P_tan,t);
%Exercitiul 2c
trp=double(t>=0);
conv_cont=(conv(trp,h_pondere)*0.01);
%Exercitiul 2d
rasp_conv=conv_cont(1:size(t));
%exerciciul 2e

dif=rasp_trp-rasp_conv;
norm_dif=norm(dif,inf);


%Exercitiul 3
%Exercitiul 3a
x0=[1 1 1];
rasp_tot=lsim(ss_ci(P_tan),trp,t,x0);
%exercitiul 3b
rasp_perm=trp*evalfr(P_tan,0);
%exercitiul 3c
rasp_tran=(rasp_tot-rasp_perm);
%plot(rasp_tran);
%plot(rasp_perm);
%rasp liber??
%Exercitiul 3d
rasp_libr=initial(ss_ci(P_tan),x0,t);
%Exercitiul 3e
rasp_fort=(rasp_tot-rasp_libr);
%plot(rasp_fort);
%plot(rasp_trp);
%plot(rasp_libr);


%Exercitiul 4
%Exercitiul 4a
S=stepinfo(P_tan);
tc1=S.RiseTime;
tt1=S.SettlingTime;
tv1=S.PeakTime;
sr1=S.Overshoot;


%Exercitiul 4b
P_aux=tf([1],[10,1]);
S2=stepinfo(P_tan*P_aux);
tc2=S2.RiseTime;
tt2=S2.SettlingTime;
tv2=S2.PeakTime;
sr2=S2.Overshoot;


%Exercitiul 4c
S3=stepinfo(P_tan*(tf('s')+1));
tc3=S3.RiseTime;
tt3=S3.SettlingTime;
tv3=S3.PeakTime;
sr3=S3.Overshoot;




