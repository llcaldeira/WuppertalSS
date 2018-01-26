A=phantom(256)
sizeA=size(A);
imshow(A)
smallA=A(128:138,128:138)
b=size(smallA);

maxcorrA=-10;
for i=1:(sizeA(1)-b(1)+1)
    for j=1:(sizeA(2)-b(2)+1)
        templateA=A(i:(i+b(1)-1),j:(j+b(2)-1));
        corrsmallA=corr(smallA(:),templateA(:));
        if(abs(corrsmallA)>maxcorrA)
            maxcorrA=corrsmallA
            mini=i
            minj=j
        end
        
    end
end

save smallA smallA
save A A

clear all;

load A
load smallA

