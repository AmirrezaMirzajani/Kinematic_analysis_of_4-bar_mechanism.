function plotexp2_acceleration     
r1=3;
r2=1.5;
teta1=8;
r4=5;
r5=3.5;
a=4;
tetadot2=4;
tetadoubledot2=0;
k=0;
for teta2=0:0.01:16*pi;
    k=k+1; 
teta2vector(k,1)=teta2;                                                          %#ok
rdoubledot3vector(k,1)=rdoubledot3(r2,teta1,teta2,tetadot2,tetadoubledot2,r1);      %#ok
rdoubledot6vector(k,1)=rdoubledot6(r4,teta1,teta2,r1,r2,tetadot2,tetadoubledot2,a,r5);     %#ok
tetadoubledot3vector(k,1)=tetadoubledot3(r2,teta2,tetadoubledot2,r1,teta1,tetadot2);      %#ok
tetadoubledot5vector(k,1)=tetadoubledot5(r5,a,r4,teta1,teta2,r1,r2,tetadot2,tetadoubledot2);  %#ok
end 
subplot(2,2,1) 
plot(teta2vector,rdoubledot3vector,'r','LineWidth',2);
title('rdoubledot3vector');
grid on;
subplot(2,2,2) 
plot(teta2vector,rdoubledot6vector,'g','LineWidth',2);
title('doubledot6vector');
grid on;
subplot(2,2,3) 
plot(teta2vector,tetadoubledot3vector,'b','LineWidth',2);
title('tetadoubledot3vector');
grid on;
subplot(2,2,4) 
plot(teta2vector,tetadoubledot5vector,'y','LineWidth',2);
title('tetadoubledot5vector');
grid on;
end