function p = predict(theta, X)
m = size(X, 1);
m0=length(theta);
for i0=1:m
    temp=0;
    for i1=1:m0
        temp=temp+theta(i1)*X(i0,i1);
    end
    if (sigmoid(temp)>=0.5)
        p(i0)=1;
    else 
        p(i0)=0;
    end
p=p';    
end