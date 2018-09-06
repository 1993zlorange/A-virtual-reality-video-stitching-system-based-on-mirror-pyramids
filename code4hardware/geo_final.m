% theta = 47.4; % nu >= 70
% theta = 50.1; % nu >= 65
theta = 52.8; % nu >= 60

RR_ratio = 1.5;%重叠区域后的比例关系（保证重叠1度）
d = 70;%人眼距离
a = 30;%相机镜头直径
ad_ratio = a/d;

nu = cal_nu( RR_ratio, ad_ratio, theta );%nu只与theta有线性关系
H = cal_H( RR_ratio, d, a, theta );
Hm = cal_Hm( RR_ratio, d, theta );
    
W = 2*H/tan(theta*pi/180);%镜面横截面宽


theta = theta/180*pi;
%镜面六棱台高
H0 = H - Hm;
%镜面六棱台上边长
s0 = W / sqrt(3);
%镜面六棱台下边长
s0_ = Hm / tan(theta) * 2 / sqrt(3);

%% 底座
rd_ratio = 1.5 * RR_ratio;%？？？？？？？？？
hd_ratio = rd_ratio - tan(pi/12)/2;
r = d*rd_ratio;
h = d*hd_ratio;

s = 22;%底座底部距摄像机光轴的垂直高度差
Hn = r * tan(theta);
Hnm = h * cos(theta) * sin(theta);
Wn = 2 * Hn/tan(theta);
h_ = h - s*cot(2*theta);
W1 = Wn - 2*h_*cos(2*theta) - 2*s/sin(2*theta);

%底座六棱台一高
H1 = h_*sin(2*theta) - Hnm;
%底座六棱台一上边长
s1 = s0_;
%底座六棱台一下边长
s1_ = W1 / sqrt(3);

camlen = 100;%摄像机活动范围
W2 = W1 - 2 * camlen*cos(2*theta);

%底座六棱台二高
H2 = camlen*sin(2*theta);
%底座六棱台二上边长
s2 = s1_;
%底座六棱台二下边长
s2_ = W2 / sqrt(3);

l1 = 30;
l2 = 60;
phi = cal_phi( RR_ratio );
phi = phi/180*pi;

%左侧槽孔一中心相对梯形表面上边中心点的横坐标
sh1x = -d/2 - l1*sin(phi);
%左侧槽孔一中心相对梯形表面上边中心点的纵坐标
sh1y = l1*cos(phi);
%左侧槽孔二中心相对梯形表面上边中心点的横坐标
sh2x = -d/2 - l2*sin(phi);
%左侧槽孔二中心相对梯形表面上边中心点的纵坐标
sh2y = l2*cos(phi);
%%