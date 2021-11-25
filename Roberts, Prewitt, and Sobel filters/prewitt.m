clear all,clc,close all
EL=imread('goruntu12.jpg');
DIPXE=imread('DIPXE.jpg');
Prewittmask1=PreSob(EL,1);
Prewittmask2=PreSob(DIPXE,1);
subplot(2,3,2),imshow(Prewittmask1);title('EL-Prewitt maskesi');
subplot(2,3,5),imshow(Prewittmask2);title('DIPXE-Prewitt maskesi');