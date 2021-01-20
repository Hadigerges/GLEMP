clear
clc
n = input('Enter the dimensions n:');
A = zeros (n);
for k = 1:(n)
    for i = 1:n;
        for j = 1:n;
            for l = 1:n;
                if (i==n && j==n);
                    A(i,j) = k;
                end
                if (i==(n-l) || j==(n-l));
                    A(i,j) = k-l;
                end
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
movie2avi(S,'I_Top_Left_Arrow.avi')