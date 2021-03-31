function [eigenVector] = fit(X_train)
%X_train ��ÿһ����һ��ͼƬ
Xmean = mean(X_train,1);
A = X_train-repmat(Xmean, size(X_train,1), 1);  %���Ļ�

meanFace = reshape(Xmean,46,46);
%չʾƽ����
figure(1)
imshow(imresize(meanFace,[256,256]),[]);
title('ƽ����')

%������
% [U, sigma] = eig(A*A');
% [sigma,index] = sort(diag(sigma),'descend');
% eigenVector = A'*U;
% eigenVector = eigenVector(:,index);

%������
%����Ҫ�̶�����ͶӰ����
[U, sigma] = eig(A'*A);
[sigma,index] = sort(diag(sigma),'descend');
eigenVector = U(:,index);
