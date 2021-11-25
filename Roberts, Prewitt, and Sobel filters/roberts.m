clear all,clc,close all
EL=imread('goruntu12.jpg');
DIPXE=imread('DIPXE.jpg');

Robertsx = [1 0; 0 -1];
Robertsy = [0 -1; 1 0];
el_X = imfilter (EL, Robertsx);
el_Y = imfilter (EL, Robertsy);
Robertsmask1 = el_X + el_Y;

dip_X = imfilter (DIPXE, Robertsx);
dip_Y = imfilter (DIPXE, Robertsy);
Robertsmask2 = dip_X + dip_Y;
subplot(2,3,1),imshow(Robertsmask1);title('EL-Roberts maskesi');
subplot(2,3,4),imshow(Robertsmask2);title('DIPXE-Roberts maskesi');