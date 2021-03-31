function recognize(X_train, X_test, eigenVector, dimension, k)
xtest = X_test(k,:); %xtestΪ������
eigen_vector = eigenVector(:,1:dimension);
train_project = X_train * eigen_vector;
test_project = xtest * eigen_vector;

%��ŷ�Ͼ���,��ɸѡ��������С������ͼƬ
index = -1;
min = Inf;
for i = 1:size(train_project,1)
    distance = norm(test_project-train_project(i,:));
    if min>distance
        index = i;
        min = distance;
    end
end
recognize_img = reshape(X_train(index,:),46,46);

figure(1)
imshow(imresize(reshape(xtest,46,46),[256,256]),[]);
title('�����ͼ')

figure(2)
imshow(imresize(recognize_img,[256,256]),[]);
title('ʶ����');