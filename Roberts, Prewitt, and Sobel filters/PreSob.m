%kulladýðým matlab sürümü 2010 olduðu için fonksiyonu ayrý olarak
%tanýmladým
function prSo = PreSob(resim,c)
A=double(resim);

[N M] = size(A);
for i=1:N-2
    for k=1:M-2

    Gx=((c*A(i+2,k+1)+A(i+2,k)+A(i+2,k+2))-(c*A(i,k+1)+A(i,k)+A(i,k+2)));
    Gy=((c*A(i+1,k+2)+A(i,k+2)+A(i+2,k+2))-(c*A(i+1,k)+A(i,k)+A(i+2,k)));
    
    resim(i,k)=sqrt(Gx.^2+Gy.^2);
    end
end
    prSo=resim;
    return 
end