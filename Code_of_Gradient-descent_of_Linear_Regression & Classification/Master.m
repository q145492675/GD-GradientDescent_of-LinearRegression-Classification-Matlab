clear all
clc
% =========================================================================
x=[1.47,1.5,1.52,1.55,1.57,1.60,1.63,1.65,1.68,1.7,1.73,1.75,1.78,1.8,1.83]';          %The data of the height of women
y=[52.21,53.12,54.48,55.84,57.2,58.57,59.93,61.29,63.11,64.47,66.28,68.1,69.92,72.19,74.16]';    % The data of the weight of women
% =========================================================================
temp=x.*x;
len=length(x);
X=[ones(len,1),x,temp];
% =========================================================================
Step=100000;
alpha = 0.16;
theta=zeros(3,1);
J = CostFunction(X, y, theta);
fprintf('==========================================================================================\n');
fprintf('===================================   The Question One    ================================\n');
fprintf('when we set the theta become[0 0 0], the value of CostFunction will be :  %f', J);
theta = GradDescent(X, y, theta, alpha, Step);
J = CostFunction(X, y, theta);
fprintf('\n\nAfter we did the Gradient-descent process, the value of CostFunction will be  :  %f\n',J);
fprintf('==========================================================================================\n');
fprintf('\nAfter we did the Gradient-descent process, the value of the theta will be : \n         Theta =  [ %f, %f, %f] \n',theta(1),theta(2),theta(3));
fprintf('==========================================================================================\n');
% =========================================================================
figure(1)
hold on
grid on
plot(x,y,'rx','MarkerSize',15) 
title('The original Data')
xlabel('The height of American women age:30-39 (m)')
ylabel('The Average Weight of them (kg)')
hold on 
Y=X*theta;
plot(x,Y)
legend('Training data', 'Linear regression')
%xlim([1.4:0.05:1.9])
set(gca,'XTick',[1.4:0.01:1.9]);
set(gca,'YTick',[50:1:75]);
% =========================================================================
figure(2)
hold on
grid on
title('The function after learning (Just assume X is from 1 to 20)')
xlabel('The height of American women age:30-39 (m)')
ylabel('The Average Weight of them(kg)')
set(gca,'XTick',[0:1:20]);
set(gca,'YTick',[0:300:6000]);
X_test=1:20;
X_test=X_test';
tt=ones(20,1);
Y_test=theta(1).*tt+theta(2).*X_test+theta(3).*(X_test.*X_test);
plot(X_test,Y_test)
fprintf('Program paused. Press ENTER to continue.\n\n\n');
pause;
% #########################################################################
fprintf('\n==========================================================================================\n');
fprintf('===================================   The Question Two    ================================\n\n');
data
len1=length(a);
y2=LabelTranvalue(tempy);
X2=[ones(len1,1),a,b,c,d];
theta2=zeros(5,1);
% =========================================================================
[J2, grad2] = CostFunction_class(theta2, X2, y2);
fprintf('when we set the theta become[0 0 0 0 0], the value of CostFunction will be :    %f\n', J2);
options = optimset('GradObj', 'on', 'MaxIter', 400);
[thetaout, J2] =fminunc(@(t)(CostFunction_class(t, X2, y2)), theta2, options);
fprintf('==========================================================================================\n');
fprintf('After we did the Gradient-descent process, the value of CostFunction will be  :   %f\n',J2);
fprintf('After we did the Gradient-descent process, the value of the theta will be : \n         Theta =  [ %f, %f, %f  %f  %f] \n',thetaout(1),thetaout(2),thetaout(3),thetaout(4),thetaout(5));
fprintf('==========================================================================================\n');
% =========================================================================
p = predict(thetaout, X2);

fprintf('Train Accuracy:Compare the perdict label with the real label');
fprintf('\n                  %f  Percentage \n ', mean(double(p == y2)) * 100);
fprintf('\n                                  Name:Herman Wu    9/26/2017');
fprintf('\nProgram paused. Press ENTER to continue.\n');
pause;
