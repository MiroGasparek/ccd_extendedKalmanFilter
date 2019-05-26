function Peqn_full = ode_ekf(t,in2)
%ODE_EKF
%    PEQN_FULL = ODE_EKF(T,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    26-May-2019 09:39:01

x1 = in2(1,:);
x2 = in2(2,:);
x3 = in2(3,:);
x4 = in2(4,:);
x5 = in2(5,:);
x6 = in2(6,:);
t2 = conj(x5);
t3 = conj(x6);
t4 = t3+4.0./5.0;
t5 = x6+4.0./5.0;
t6 = 1.0./t4;
t7 = 1.0./t5;
t8 = t2.*t6.*(6.0./5.0);
t9 = 1.0./t4.^2;
t10 = t8-t2.*t3.*t9.*(6.0./5.0);
t11 = 1.0./t5.^2;
t12 = t7.*x5.*(6.0./5.0);
t13 = t12-t11.*x5.*x6.*(6.0./5.0);
t14 = t2.*t6.*(2.0./5.0);
t15 = t14-t2.*t3.*t9.*(2.0./5.0);
t16 = t7.*x5.*(2.0./5.0);
t17 = t16-t11.*x5.*x6.*(2.0./5.0);
Peqn_full = [t10.*x2+t13.*x3+t3.*t6.*x1.*(6.0./5.0)+t7.*x1.*x6.*(6.0./5.0)+1.0./5.0e1;t10.*x4-t17.*x3+t3.*t6.*x3.*(6.0./5.0)-t7.*x1.*x6.*(2.0./5.0);t13.*x4-t15.*x2-t3.*t6.*x1.*(2.0./5.0)+t7.*x2.*x6.*(6.0./5.0);-t15.*x4-t17.*x4-t3.*t6.*x3.*(2.0./5.0)-t7.*x2.*x6.*(2.0./5.0)+1.0./1.0e2;t7.*x5.*x6.*(6.0./5.0);t7.*x5.*x6.*(-2.0./5.0)];