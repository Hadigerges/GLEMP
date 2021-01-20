clear
clc
n = input('Enter the dimensions n:');
A = zeros (n);
for i = 1:n;
    for j = 1:n;
        for k = 1:n-1;
            if (i==j);
            A(i,j) = n;
            end
            if (i>j && j==i-k);
                A(i,j) = n-k;
            end
            if (j>i && i==j-k);
                A(i,j) = n+k;
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
movie2avi(S,'G_Decreasing_Distribution.avi')