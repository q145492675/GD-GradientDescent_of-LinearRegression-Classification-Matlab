function g = sigmoid(z)
g = zeros(size(z));
[temp1,temp2]=size(z);
 m=temp1*temp2;
 for i=1:m
     g(i)=1/(1+exp(-z(i)));
 end
end
