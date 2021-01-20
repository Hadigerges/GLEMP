clear
clc
for i =1:200
   A=floor(25*rand(10,10));
   imagesc(A)
   getframe();
end
A
for t=1:200
    for l=1:10
        for j=1:10
            A(l,j)=A(l,j)+1;
            if(A(l,j)>10)
                A(l,j)=A(l,j)-10;
            end
        end
    end
    imagesc(A);
    set(gca,'XTick',[]);
    set(gca,'YTick',[]);
    S(t)=getframe();
end
movie2avi(S,'J_Random_Generated_Matrix.avi')