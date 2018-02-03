function J = CostFunction(X, y, theta)
len = length(y);
J = 0;
for i=1:len
    J=J+1/(2*len)*((theta(1)*X(i,1)+theta(2)*X(i,2)+theta(3)*X(i,3))-y(i,1))^2;
end
end
