function restruct(X, eigenVector, person)
figure(1)
face_original = reshape(X(person,:),46,46);   %ԭͼ
imshow(imresize(face_original,[256,256]),[]);
title("ԭͼ");

X_new = (X(person,:)-mean(X,1))';

figure(2)
face_mean = reshape(X_new,46,46);   %���Ļ����ͼƬ
imshow(imresize(face_mean,[256,256]),[]);
title("���Ļ����ͼƬ");

figure(3)
for i=1:8
    eigen_vector = eigenVector(:,1:20*i);
    face_restruct =  eigen_vector * eigen_vector' * X_new;  %���Ļ�֮���ع�������
    img = reshape(face_restruct+mean(X,1)',46,46);
    subplot(2,4,i);  
    imshow(img,[]);
    title("d = "+num2str(20*i));
end 