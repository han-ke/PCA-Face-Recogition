clear,clc;
disp("***����������***");
load('ORL4646.mat');
disp("***�ɹ���������***");
data = reshape(ORL4646,46*46,400)';
X_train = [];
X_test = [];

for i=0:39
    index = randperm(10);
    for j=1:10
        if j<=2
            X_test = [X_test; data(i*10+index(j),:)];
        else
            X_train = [X_train; data(i*10+index(j),:)];
        end
    end
end
disp("******����ʶ��ģ��ѵ����******");
eigenVector = fit(X_train);
disp("******����ʶ��ģ��ѵ�����******");