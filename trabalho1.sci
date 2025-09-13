scicv_Init();

img = imread(getSampleImage("lena.jpg"));

subplot(1,3,1);
matplot(img);

img_gray = cvtColor(img, CV_BGR2GRAY);

subplot(1,3,2);
matplot(img_gray);

[thresh, img_bw] = threshold(img_gray, 125, 255, THRESH_BINARY);

subplot(1,3,3);
matplot(img_bw);

delete_Mat(img);
delete_Mat(img_gray);
delete_Mat(img_bw);
