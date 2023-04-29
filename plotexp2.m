function plotexp2         %teta3vector & teta5vector & r3vector & r6vector
r1=3;
r2=1.5;
teta1=8;
r4=5;
r5=3.5;
a=4;
k=0;
for teta2=0:0.01:16*pi;
    k=k+1;
teta2vector(k,1)=teta2;                                           %#ok
teta3vector(k,1)=teta3(teta1,teta2,r1,r2);                        %#ok
teta5vector(k,1)=teta5(a,r4,teta1,teta2,r1,r2,r5);                %#ok
r3vector(k,1)=r3(teta1,teta2,r2,r1);                              %#ok
r6vector(k,1)=r6(r4,r5,teta1,teta2,r1,r2,a);                      %#ok
end 
subplot(2,2,1)                                                   
plot(teta2vector,teta3vector,'r','LineWidth',2);
title('teta3vector');
grid on;
subplot(2,2,2)                                                 
plot(teta2vector,teta5vector,'g','LineWidth',2);
title('teta5vector');
grid on;
subplot(2,2,3)
plot(teta2vector,r3vector,'b','LineWidth',2);
title('r3vector');
grid on;
subplot(2,2,4)
plot(teta2vector,r6vector,'y','LineWidth',2);  
title('r6vector');
grid on;
end 
