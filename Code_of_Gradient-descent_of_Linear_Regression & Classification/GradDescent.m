function [theta] = GradDescent(X, y, theta, alpha, step)
m = length(y);                                                   % number of training examples
for iter = 1:step
    temp1=0;
    temp2=0;
    temp3=0;
    for i=1:m
        temp1=temp1+alpha/m*((theta(1)*X(i,1)+theta(2)*X(i,2)+theta(3)*X(i,3))-y(i,1))*X(i,1);
        temp2=temp2+alpha/m*((theta(1)*X(i,1)+theta(2)*X(i,2)+theta(3)*X(i,3))-y(i,1))*X(i,2);
        temp3=temp3+alpha/m*((theta(1)*X(i,1)+theta(2)*X(i,2)+theta(3)*X(i,3))-y(i,1))*X(i,3);
    end
    theta(1)=theta(1)-temp1;
    theta(2)=theta(2)-temp2;
    theta(3)=theta(3)-temp3;
end
    