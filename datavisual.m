data = readmatrix('nirs_data.csv'); 

frame = data(10, :);  

img = reshape(frame, 1, []);

figure;
imagesc(img);
colormap('hot');
colorbar;
title('NIRS-DOT Imaging Output');
xlabel('Photodiode Index');
