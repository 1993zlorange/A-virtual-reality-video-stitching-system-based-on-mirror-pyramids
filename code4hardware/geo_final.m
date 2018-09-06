% theta = 47.4; % nu >= 70
% theta = 50.1; % nu >= 65
theta = 52.8; % nu >= 60

RR_ratio = 1.5;%�ص������ı�����ϵ����֤�ص�1�ȣ�
d = 70;%���۾���
a = 30;%�����ͷֱ��
ad_ratio = a/d;

nu = cal_nu( RR_ratio, ad_ratio, theta );%nuֻ��theta�����Թ�ϵ
H = cal_H( RR_ratio, d, a, theta );
Hm = cal_Hm( RR_ratio, d, theta );
    
W = 2*H/tan(theta*pi/180);%���������


theta = theta/180*pi;
%��������̨��
H0 = H - Hm;
%��������̨�ϱ߳�
s0 = W / sqrt(3);
%��������̨�±߳�
s0_ = Hm / tan(theta) * 2 / sqrt(3);

%% ����
rd_ratio = 1.5 * RR_ratio;%������������������
hd_ratio = rd_ratio - tan(pi/12)/2;
r = d*rd_ratio;
h = d*hd_ratio;

s = 22;%�����ײ������������Ĵ�ֱ�߶Ȳ�
Hn = r * tan(theta);
Hnm = h * cos(theta) * sin(theta);
Wn = 2 * Hn/tan(theta);
h_ = h - s*cot(2*theta);
W1 = Wn - 2*h_*cos(2*theta) - 2*s/sin(2*theta);

%��������̨һ��
H1 = h_*sin(2*theta) - Hnm;
%��������̨һ�ϱ߳�
s1 = s0_;
%��������̨һ�±߳�
s1_ = W1 / sqrt(3);

camlen = 100;%��������Χ
W2 = W1 - 2 * camlen*cos(2*theta);

%��������̨����
H2 = camlen*sin(2*theta);
%��������̨���ϱ߳�
s2 = s1_;
%��������̨���±߳�
s2_ = W2 / sqrt(3);

l1 = 30;
l2 = 60;
phi = cal_phi( RR_ratio );
phi = phi/180*pi;

%���ۿ�һ����������α����ϱ����ĵ�ĺ�����
sh1x = -d/2 - l1*sin(phi);
%���ۿ�һ����������α����ϱ����ĵ��������
sh1y = l1*cos(phi);
%���ۿ׶�����������α����ϱ����ĵ�ĺ�����
sh2x = -d/2 - l2*sin(phi);
%���ۿ׶�����������α����ϱ����ĵ��������
sh2y = l2*cos(phi);
%%