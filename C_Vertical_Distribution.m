clear
clc
n = input('Enter the dimensions n:');
A = zeros (n);
for i = 1:n;
    for j = 1:n;
        A(i,j) = i+(n*(j-1));
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
movie2avi(S,'C_Vertical_Distribution.avi')