clear
clc
m = input('Enter the number of squares:');
A = zeros((2*m)+1);
for a = 1:m
    for i = a:(2*m)+1-(a-1)
        for j = a:(2*m)+1-(a-1)
            if(i==a || i==((2*m)+1-(a-1)) || j==a || j==(2*m)+1-(a-1));
                A(i,j) = m-(a-1);
            end
        end
    end
end
A
for t=1:200
    for i=1:2*m+1
        for j=1:2*m+1
            A(i,j)=A(i,j)+1;
            if(A(i,j)>m)
                A(i,j)=A(i,j)-m;
            end
        end
    end
    imagesc(A);
    set(gca,'XTick',[]);
    set(gca,'YTick',[]);
    S(t)=getframe();
end
movie2avi(S,'A_Concentric_Matrix.avi')