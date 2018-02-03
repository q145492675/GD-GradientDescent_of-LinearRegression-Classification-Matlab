function [J, grad] = costFunction(theta, X, y)
m = length(y); 
J = 0;
grad = zeros(size(theta));
m0=length(theta);
for i0=1:m
    temp1=0;
    for i1=1:m0
        temp1=temp1+X(i0,i1)*theta(i1);
    end    
    tempz=sigmoid(temp1);  
    J=J+1/m*(-y(i0)*log(tempz)-(1-y(i0))*log(1-tempz));
    
end
for i=1:m0
    T=0;
    for i0=1:m
        temp1=0;
        for i1=1:m0
            temp1=temp1+X(i0,i1)*theta(i1);        
        end
        T=T+1/m*(sigmoid(temp1)-y(i0))*X(i0,i);
    end
    grad(i)=T;
end
 
end
