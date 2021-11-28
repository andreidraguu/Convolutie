clc;
clear all;
close all;


tstart=0;%se stabilesc capetele integralei 
tstop=1;%.. 
tpas=0.01;%se stabileste pasul

t=tstart:tpas:tstop;
x=t;%declarare primul semnal

subplot(3,3,1);%afisare primul semnal
plot(t,x,'linewidth',1);
axis([0 1 0 1]);grid;

y=t.*t;
subplot(3,3,2);
plot(t,y,'linewidth',2)
axis([0 1 0 1]);grid;

t2=2*tstart:tpas:2*tstop;%marcheaza capetele produsului de convolutie
k=conv(x,y)*tpas;

subplot(3,3,3);
plot(t2,k,'b','linewidth',2);
axis();grid;
