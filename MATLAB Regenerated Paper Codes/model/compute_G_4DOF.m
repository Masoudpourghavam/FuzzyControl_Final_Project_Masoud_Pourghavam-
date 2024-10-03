
% -------------------------------------------------
% Sawyer Robot 4-DoF
% get a Gravity vecor
% -------------------------------------------------
% Equation)
%       G(q)
%
% Input)
%       x   : Joint Position
% Output)
%       G  : Gravity Vector
%
% the following code has been tested on Matlab 2021a
function G = compute_G_4DOF(q)
q1=q(1);
q2=q(2);
q3=q(3);
q4=q(4);
t2 = cos(q2);
t3 = sin(q2);
t4 = t2.*6.123233995736766e-17;
t5 = t3.*6.123233995736766e-17;
t6 = sin(q3);
t7 = t3-t4;
t8 = cos(q3);
t9 = t3.*3.749399456654644e-33;
t10 = t4+t9;
t11 = t8.*t10.*6.123233995736766e-17;
t12 = t2+t5+t11-t6.*t7.*6.123233995736766e-17;
t13 = cos(q4);
t14 = sin(q4);
t15 = t7.*t8;
t16 = t6.*t10;
t22 = t2.*3.749399456654644e-33;
t17 = t5-t22+3.749399456654644e-33;
t18 = t8.*t17;
t19 = t2+t5;
t20 = t6.*t19;
t21 = t18+t20;
t23 = t6.*t17.*6.123233995736766e-17;
t24 = t6.*t17;
t25 = t8.*t17.*6.123233995736766e-17;
t26 = t6.*t19.*6.123233995736766e-17;
t27 = t3-t4+t25+t26-2.295845021658468e-49;
G = [0.0;t2.*(-2.754735755355e1)-t3.*1.363342248450017e-1-t13.*(t15+t16).*5.017635526378422e-2+t14.*(t15+t16).*1.16478365936418e1-t7.*t8.*2.746484118e-3-t6.*t10.*2.746484118e-3-t8.*t10.*6.194948142952815-t12.*t13.*1.16478365936418e1-t12.*t14.*5.017635526378422e-2+t6.*(t3-t4).*6.194948142952815;t13.*(t23-t8.*t19.*6.123233995736766e-17).*1.16478365936418e1+t14.*(t23-t8.*t19.*6.123233995736766e-17).*5.017635526378422e-2+t6.*t17.*6.194948142952815-t6.*t19.*2.746484118e-3-t8.*t17.*2.746484118e-3-t8.*t19.*6.194948142952815-t13.*t21.*5.017635526378422e-2+t14.*t21.*1.16478365936418e1;t13.*t27.*(-5.017635526378422e-2)+t14.*t27.*1.16478365936418e1+t13.*(t24-t8.*t19).*1.16478365936418e1+t14.*(t24-t8.*t19).*5.017635526378422e-2];
