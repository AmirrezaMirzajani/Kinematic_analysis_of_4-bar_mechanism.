function plotexp2_velocity
r1=3;
r2=1.5;
teta1=8;
r4=5;
r5=3.5;
a=4;
tetadot2=4;
k=0;
for teta2=0:0.01:16*pi;
    k=k+1; 
teta2vector(k,1)=teta2;                                              %#ok
rdot3vector(k,1)=rdot3(r2,tetadot2,teta1,teta2,r1);                    %#ok
rdot6vector(k,1)=rdot6(r4,r5,teta1,teta2,r1,r2,tetadot2,a);            %#ok
rdotBvector(k,1)=rdotB(r4,teta1,teta2,r1,r2,tetadot2);               %#ok
rdotCvector(k,1)=rdotC(r4,r5,teta1,teta2,r1,r2,tetadot2,a);            %#ok
tetadot3vector(k,1)=tetadot3(tetadot2,r2,teta2,teta1,r1) ;           %#ok
tetadot5vector(k,1)=tetadot5(r4,r5,teta1,teta2,r1,r2,tetadot2,a);       %#ok
end
subplot(3,2,1)                                                   
plot(teta2vector,rdot3vector,'r','LineWidth',2); 
title('rdot3vector');
grid on;
subplot(3,2,2)                                                 
plot(teta2vector,rdot6vector,'g','LineWidth',2); 
title('rdot6vector');
grid on;
subplot(3,2,3)
plot(teta2vector,rdotBvector,'b','LineWidth',2);  
title('rdotBvector');
grid on;
subplot(3,2,4)
plot(teta2vector,rdotCvector,'y','LineWidth',2);
title('rdotCvector');
grid on;
subplot(3,2,5)
plot(teta2vector,tetadot3vector,'c','LineWidth',2); 
title('tetadot3vector');
grid on;
subplot(3,2,6)
plot(teta2vector,tetadot5vector,'r','LineWidth',2);
title('tetadot5vector');
grid on;
hold on;
end