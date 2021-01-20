clear
clc
n = input('Enter the dimensions n:');
A = zeros (n);
for i = 1:n;
    for j = 1:n;
        for k = 1:n
            if (i==j);
            A(i,j) = 1;
            end
            if (j==i+k || i==j+k)
            A(i,j) = k+1;
            end
        end
    end
end
A
for t=1:200
    for i=1:n
        for j=1:n
            A(i,j)=A(i,j)+1;
            if(A(i,j)>n)
                A(i,j)=A(i,j)-n;
            end
        end
    end
    imagesc(A);
    set(gca,'XTick',[]);
    set(gca,'YTick',[]);
    S(t)=getframe();
end
movie2avi(S,'E_MIN_Diagonal_Distribution.avi')