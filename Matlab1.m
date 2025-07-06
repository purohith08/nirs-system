data = readmatrix('nirs_data.csv'); 
frame = 1:100;  % Simulate 100 sensor values
img = reshape(frame, 10, 10);
imagesc(img);
% Display as heatmap
figure;
imagesc(img);  
colormap('hot');
colorbar;
title('NIRS-DOT Imaging Output');
xlabel('X-axis (Sensor Grid)');
ylabel('Y-axis (Sensor Grid)');
% Optional: Add 3D surface effect
figure;
surf(img);
shading interp;
colormap('hot');
colorbar;
title('3D Surface View of NIRS-DOT Image');
xlabel('X-axis (Sensor Grid)');
ylabel('Y-axis (Sensor Grid)');
zlabel('Intensity');
