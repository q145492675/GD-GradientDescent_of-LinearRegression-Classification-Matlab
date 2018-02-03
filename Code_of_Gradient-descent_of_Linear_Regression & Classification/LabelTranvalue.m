function [y] = LabelTranvalue(tempy)
len=length(tempy);
y=ones(len,1);
for i=1:len
    temp=char(tempy(i));
    if (strcmp(temp, 'Iris-setosa') )
        y(i)=0;
    end
    if (strcmp(temp,'Iris-versicolor'))
        y(i)=1;
    end
    if (strcmp(temp,'Iris-virginica'))
        y(i)=2;
    end
end
end