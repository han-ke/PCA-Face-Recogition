function showEigenFace(eigenVector)  
%��ʾ���������任�ռ��еĻ�����������λ���������� 
%k ���ɷֵ�ά��
for i=1:20
    img = reshape(eigenVector(:,i),46,46);
    subplot(4,5,i);
    imshow(img,[])
end 
end