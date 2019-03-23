close all
clear all
%% vektor o delce 10 od 0 do 31
A=linspace(0,31,10);
%% zobrazení posledních 5 èísel z vektoru A
disp(A(end-4:end));
%% vytvoøení matice B celá èísla 0-255
B=rand(10)*255;
B=round(B);
disp(B);
%% vektorový souèet prvního a posledního
C=B(:,1)+B(:,end);
disp(C);

%% násobení
nasobeni1=A*B;
nasobeni2=B*A';

%% plot
X=linspace(0,pi,50);
Y1=sin(X);
Y2=sin(2*X);
Y3=sin(3*X);
plot(X,Y1,'-k');
hold on
plot(X,Y2,'--r');
hold on
plot(X,Y3,'-.g');
legend('sin(X)','sin(2*X)','sin(3*X)');
%% subplot
figure
subplot(311);
plot(X,Y1,'-k');
xlabel('X');
ylabel('Y1');
title('Graf sin(X)');

subplot(312);
plot(X,Y2,'-k');
xlabel('X');
ylabel('Y2');
title('Graf sin(2*X)');


subplot(313);
plot(X,Y3,'-k');
xlabel('X');
ylabel('Y3');
title('Graf sin(3*X)');
