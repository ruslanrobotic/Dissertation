clear all
clc
%%
syms q1
A01 = [cos(q1), -sin(q1), sym(0), sym(0); sin(q1), cos(q1), sym(0), sym(0); sym(0), sym(0), sym(1), sym(0); sym(0), sym(0), sym(0), sym(1)]
%% 
% 
syms l1
A02 = [sym(1), sym(0), sym(0), sym(0); sym(0), sym(1), sym(0), sym(0); sym(0), sym(0), sym(1), l1; sym(0), sym(0), sym(0), sym(1)]
%% 
% 
A03 = [sym(1), sym(0), sym(0), sym(0); sym(0), cos(-(sym('pi')/2)), -sin(-(sym('pi')/2)), sym(0); sym(0), sin(-(sym('pi')/2)), cos(-(sym('pi')/2)), sym(0); sym(0), sym(0), sym(0), sym(1)]
%% 
% 
syms q2
A04 = [cos(-q2), -sin(-q2), sym(0), sym(0); sin(-q2), cos(-q2), sym(0), sym(0); sym(0), sym(0), sym(1), sym(0); sym(0), sym(0), sym(0), sym(1)]
%% 
% 
syms l2
A05 = [sym(1), sym(0), sym(0), l2; sym(0), sym(1), sym(0), sym(0); sym(0), sym(0), sym(1), sym(0); sym(0), sym(0), sym(0), sym(1)]
%% 
% 
syms q3
A06 = [cos(q3), -sin(q3), sym(0), sym(0); sin(q3), cos(q3), sym(0), sym(0); sym(0), sym(0), sym(1), sym(0); sym(0), sym(0), sym(0), sym(1)]
%% 
% 
syms l3
A07 = [sym(1), sym(0), sym(0), l3; sym(0), sym(1), sym(0), sym(0); sym(0), sym(0), sym(1), sym(0); sym(0), sym(0), sym(0), sym(1)]
%% 
% 
syms q4
A08 = [cos(q4), -sin(q4), sym(0), sym(0); sin(q4), cos(q4), sym(0), sym(0); sym(0), sym(0), sym(1), sym(0); sym(0), sym(0), sym(0), sym(1)]
%% 
% 
syms l4
A09 = [sym(1), sym(0), sym(0), l4; sym(0), sym(1), sym(0), sym(0); sym(0), sym(0), sym(1), sym(0); sym(0), sym(0), sym(0), sym(1)]
%% 
% 
syms B
A10 = [cos(B), -sin(B), sym(0), sym(0); sin(B), cos(B), sym(0), sym(0); sym(0), sym(0), sym(1), sym(0); sym(0), sym(0), sym(0), sym(1)]
%% 
% 
T1 = simplify(A01 * A02 * A03)
%% 
% 
T2 = simplify(T1 * A04 * A05)
%% 
% 
T3 = simplify(T2 * A06 * A07)
%% 
% 
T4 = simplify(T3 * A08 * A09 * A10)
%% 
% 
simplify(A01 * A02 * A03 * A04 * A05 * A06 * A07 * A08 * A09 * A10)
%% 
% 
simplify(T4 + simplify(A01 * A02 * A03 * A04 * A05 * A06 * A07 * A08 * A09 * A10) * -1)
%% 
% 
A1 = A01 * A02 * A03
%% 
% 
O1 = A1(sym(1):sym(3), sym(1):sym(3))
r1 = A1(sym(1):sym(3), sym(4):sym(4))
R1 = T1(sym(1):sym(3), sym(1):sym(3))
P1 = T1(sym(1):sym(3), sym(4):sym(4))
%% 
% 
A2 = A04 * A05
%% 
% 
O2 = A2(sym(1):sym(3), sym(1):sym(3))
r2 = A2(sym(1):sym(3), sym(4):sym(4))
R2 = T2(sym(1):sym(3), sym(1):sym(3))
P2 = T2(sym(1):sym(3), sym(4):sym(4))
%% 
% 
A3 = A06 * A07
%% 
% 
O3 = A3(sym(1):sym(3), sym(1):sym(3))
r3 = A3(sym(1):sym(3), sym(4):sym(4))
R3 = T3(sym(1):sym(3), sym(1):sym(3))
P3 = T3(sym(1):sym(3), sym(4):sym(4))
%% 
% 
A4 = A08 * A09 * A10
%% 
% 
O4 = A4(sym(1):sym(3), sym(1):sym(3))
r4 = A4(sym(1):sym(3), sym(4):sym(4))
R4 = T4(sym(1):sym(3), sym(1):sym(3))
P4 = T4(sym(1):sym(3), sym(4):sym(4))
%% 
% 
fi = q1
%% 
% 
x = simplify(P4(sym(1):sym(1), sym(1):sym(1)))
%% 
% 
y = simplify(P4(sym(2):sym(2), sym(1):sym(1)))
%% 
% 
z = simplify(P4(sym(3):sym(3), sym(1):sym(1)))
%% 
% 
J = [diff(x, q1), diff(x, q2), diff(x, q3), diff(x, q4); diff(y, q1), diff(y, q2), diff(y, q3), diff(y, q4); diff(z, q1), diff(z, q2), diff(z, q3), diff(z, q4); diff(fi, q1), diff(fi, q2), diff(fi, q3), diff(fi, q4)]
%% 
% 
syms dq1 dq2 dq3 dq4
Vvector = J(sym(1):sym(3), sym(1):sym(4)) * reshape([dq1; dq2; dq3; dq4], sym(4),sym(1))
%% 
% 
Vx = simplify(Vvector(sym(1):sym(1), sym(1):sym(1)))
%% 
% 
Vy = simplify(Vvector(sym(2):sym(2), sym(1):sym(1)))
%% 
% 
Vz = simplify(Vvector(sym(3):sym(3), sym(1):sym(1)))
%% 
% 
Jtransp = transpose(J)
%% 
syms Fx Fy Fz Mfi
Momentvector = simplify(Jtransp * reshape([Fx; Fy; Fz; Mfi], sym(4),sym(1)))
Mtorq1 = Momentvector(1)
Mtorq2 = Momentvector(2)
Mtorq3 = Momentvector(3)
Mtorq4 = Momentvector(4)
%%
9
syms q i j T Tc qc k m
T = {sym([T1]);sym([T2]);sym([T3]);sym([T4])};
q = {sym([q1]);sym([q2]);sym([q3]);sym([q4])};
for i = 1 : 4
    for j = 1 : 4
        U{i,j} = simplify(sym([diff(sym(T(i)),sym(q(j)))]));
    end;
end;
%%
8
syms m1 m2 m3 m4
H1 = [sym(0), sym(0), sym(0), sym(0); sym(0), m1*l1^2/3, sym(0), m1*l1/2; sym(0), sym(0), sym(0), sym(0); sym(0), m1*l1/2, sym(0), m1];
H2 = [m2*l2^2/3, sym(0), sym(0), -m2*l2/2; sym(0), sym(0), sym(0), sym(0); sym(0), sym(0), sym(0), sym(0); -m2*l2/2, sym(0), sym(0), m2];
H3 = [m3*l3^2/3, sym(0), sym(0), -m3*l3/2; sym(0), sym(0), sym(0), sym(0); sym(0), sym(0), sym(0), sym(0); -m3*l3/2, sym(0), sym(0), m3];
H4 = [m4*l4^2/3, sym(0), sym(0), -m4*l4/2; sym(0), sym(0), sym(0), sym(0); sym(0), sym(0), sym(0), sym(0); -m4*l4/2, sym(0), sym(0), m4];
H = {sym([H1]);sym([H2]);sym([H3]);sym([H4])};
%%
7
i = 0;
j = 0;
k = 0;
A = {sym(0), sym(0), sym(0), sym(0); sym(0), sym(0), sym(0), sym(0); sym(0), sym(0), sym(0), sym(0); sym(0), sym(0), sym(0), sym(0)};
for i = 1 : 4
    for j = 1 : 4
        for k = 1 : 4
            acur = simplify(sym([trace(U{k,i}*H{k}*transpose(U{k,j}))]));
            A{i,j} = sym(A{i,j})+acur;
            A{i,j} = simplify(A{i,j});
        end;
    end;
end;
%%
6
i = 0;
j = 0;
k = 0;
for i = 1 : 4
    for j = 1 : 4
        for k = 1 : 4
            Utd{i,j,k} = simplify(sym([diff(sym(U{i,j}),sym(q(k)))]));
        end;
    end;
end;
%%
5
i = 0;
j = 0;
k = 0;
p = 0;
Ba = {sym(0), sym(0), sym(0), sym(0); sym(0), sym(0), sym(0), sym(0); sym(0), sym(0), sym(0), sym(0); sym(0), sym(0), sym(0), sym(0)};
Bf = cat(3, Ba, Ba, Ba, Ba);
for i = 1 : 4
    for j = 1 : 4
        for k = 1 : 4
            for p = 1 : 4
                bcur = simplify(sym([trace(Utd{p,j,k}*H{p}*transpose(U{p,i}))]));
                Bf{i,j,k} = sym(Bf{i,j,k}) + bcur;
                Bf{i,j,k} = simplify(Bf{i,j,k});
            end;
        end;
    end;
end;
%%
4
syms dq
dq = {dq1;dq2;dq3;dq4};
i = 0;
k = 0;
m = 0;
Bm = {sym(0); sym(0); sym(0); sym(0)};
for i = 1 : 4
    for k = 1 : 4
        for m = 1 : 4
            bmcur = simplify(sym([Bf{i,k,m}*dq{k}*dq{m}]));
            Bm{i} = sym(Bm{i})+bmcur;
            Bm{i} = simplify(Bm{i});
        end;
    end;
end;
%%
3
syms g
g = [sym(0) sym(0) -g sym(0)];
M = [m1 m2 m3 m4];
pro = {[sym(0); l1/2; sym(0); 1]; [-l2/2; sym(0); sym(0); 1]; [-l3/2; sym(0); sym(0); 1]; [-l4/2; sym(0); sym(0); 1]};
i = 0;
j = 0;
D = {sym(0); sym(0); sym(0); sym(0)};
for i = 1 : 4
    for j = 1 : 4
        dcur = simplify(sym([-M(j)*g*U{j,i}*pro{j}]));
        D{i} = sym(D{i})+dcur;
        D{i} = simplify(D{i});
    end;
end;
%%
2
Amatrix = cell2sym(A);
Am1matrix = inv(Amatrix);
syms mu1 mu2 mu3 mu4
Eq = simplify(j*([mu1; mu2; mu3; mu4] - cell2sym(Bm) - cell2sym(D)));
Eq;
d2q1 = Eq(1);
d2q2 = Eq(2);
d2q3 = Eq(3);
d2q4 = Eq(4);
%%
%
new_system('Manipulator_4DOF_dynamics_001')
matlabFunctionBlock('Manipulator_4DOF_dynamics_001/d2q1',d2q1)
matlabFunctionBlock('Manipulator_4DOF_dynamics_001/d2q2',d2q2)
matlabFunctionBlock('Manipulator_4DOF_dynamics_001/d2q3',d2q3)
matlabFunctionBlock('Manipulator_4DOF_dynamics_001/d2q4',d2q4)
matlabFunctionBlock('Manipulator_4DOF_dynamics_001/Vx',Vx)
matlabFunctionBlock('Manipulator_4DOF_dynamics_001/Vy',Vy)
matlabFunctionBlock('Manipulator_4DOF_dynamics_001/Vz',Vz)
matlabFunctionBlock('Manipulator_4DOF_dynamics_001/Mtorq1',Mtorq1)
matlabFunctionBlock('Manipulator_4DOF_dynamics_001/Mtorq2',Mtorq2)
matlabFunctionBlock('Manipulator_4DOF_dynamics_001/Mtorq3',Mtorq3)
matlabFunctionBlock('Manipulator_4DOF_dynamics_001/Mtorq4',Mtorq4)
matlabFunctionBlock('Manipulator_4DOF_dynamics_001/x',x)
matlabFunctionBlock('Manipulator_4DOF_dynamics_001/y',y)
matlabFunctionBlock('Manipulator_4DOF_dynamics_001/z',z)
save_system('Manipulator_4DOF_dynamics_001')
%}
%%
1
syms ltool1 ltool2
J11 = eval(subs(eval(simplify(subs(A{1,1}, [q1, q2, q3, q4, B, m2, m3, m4, l2, l3, l4, ltool1, ltool2], [0, 0, 0, atan2(ltool2,ltool1), pi/2-atan2(ltool2,ltool1), 38, 35, 16, 0.68, 0.68, 0.3811, 0.235, 0.3]))), [ltool1, ltool2], [0.235, 0.3]))
% 84.3246 kg*m/s^2
J22 = eval(subs(eval(simplify(subs(A{2,2}, [q1, q2, q3, q4, B, m2, m3, m4, l2, l3, l4, ltool1, ltool2], [0, 0, 0, atan2(ltool2,ltool1), pi/2-atan2(ltool2,ltool1), 38, 35, 16, 0.68, 0.68, 0.3811, 0.235, 0.3]))), [ltool1, ltool2], [0.235, 0.3]))
% 84.7100 kg*m/s^2
J33 = eval(subs(eval(simplify(subs(A{3,3}, [q1, q2, q3, q4, B, m2, m3, m4, l2, l3, l4, ltool1, ltool2], [0, 0, 0, atan2(ltool2,ltool1), pi/2-atan2(ltool2,ltool1), 38, 35, 16, 0.68, 0.68, 0.3811, 0.235, 0.3]))), [ltool1, ltool2], [0.235, 0.3]))
% 19.1759 kg*m/s^2
J44 = eval(subs(eval(simplify(subs(A{4,4}, [q1, q2, q3, q4, B, m2, m3, m4, l2, l3, l4, ltool1, ltool2], [0, 0, 0, atan2(ltool2,ltool1), pi/2-atan2(ltool2,ltool1), 38, 35, 16, 0.68, 0.68, 0.3811, 0.235, 0.3]))), [ltool1, ltool2], [0.235, 0.3]))
% 1.2690 kg*m/s^2
M1req = eval(subs(m2*l2/2+m3*(l2+l3/2)+m4*(l2+l3), [m2, m3, m4, l2, l3], [38, 35, 16, 0.68, 0.68]))
% 70.3800 Nm
M2req = eval(subs(m2*l2/2+m3*(l2+l3/2)+m4*(l2+l3), [m2, m3, m4, l2, l3], [38, 35, 16, 0.68, 0.68]))
% 70.3800 Nm
M3req = eval(subs(m3*l3/2+m4*l3, [m3, m4, l3], [35, 16, 0.68]))
% 22.7800 Nm
M4req = eval(subs(m4*ltool1/2, [m4, ltool1], [16, 0.235]))
% 1.8800 Nm
%% 
syms dq1 dq2 dq3 dq4 q1 q2 q3 q4 m1 m2 m3 m4 l1 l2 l3 l4 ltool1 ltool2 B g
g = 9.807
tau = simplify(Amatrix*([sym(0); sym(0); sym(0); sym(0)]) + cell2sym(Bm) + cell2sym(D));
tau11 = eval(subs(eval(simplify(subs(tau(1), [q1, q2, q3, q4, dq1, dq2, dq3, dq4, B, m2, m3, m4, l2, l3, l4, ltool1, ltool2], [0, 0, 0, atan2(ltool2,ltool1), 0, 0, 0, 0, pi/2-atan2(ltool2,ltool1), 38, 35, 16, 0.68, 0.68, 0.3811, 0.235, 0.3]))), [ltool1, ltool2], [0.235, 0.3]))
% 0
tau22 = eval(subs(eval(simplify(subs(tau(2), [q1, q2, q3, q4, dq1, dq2, dq3, dq4, B, m2, m3, m4, l2, l3, l4, ltool1, ltool2], [0, 0, 0, atan2(ltool2,ltool1), 0, 0, 0, 0, pi/2-atan2(ltool2,ltool1), 38, 35, 16, 0.68, 0.68, 0.3811, 0.235, 0.3]))), [ltool1, ltool2], [0.235, 0.3]))
% 727.0925
tau33 = eval(subs(eval(simplify(subs(tau(3), [q1, q2, q3, q4, dq1, dq2, dq3, dq4, B, m2, m3, m4, l2, l3, l4, ltool1, ltool2], [0, 0, 0, atan2(ltool2,ltool1), 0, 0, 0, 0, pi/2-atan2(ltool2,ltool1), 38, 35, 16, 0.68, 0.68, 0.3811, 0.235, 0.3]))), [ltool1, ltool2], [0.235, 0.3]))
% -260.2793
tau44 = eval(subs(eval(simplify(subs(tau(4), [q1, q2, q3, q4, dq1, dq2, dq3, dq4, B, m2, m3, m4, l2, l3, l4, ltool1, ltool2], [0, 0, 0, atan2(ltool2,ltool1), 0, 0, 0, 0, pi/2-atan2(ltool2,ltool1), 38, 35, 16, 0.68, 0.68, 0.3811, 0.235, 0.3]))), [ltool1, ltool2], [0.235, 0.3]))
% -36.8759