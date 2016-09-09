function [residual, g1, g2, g3] = endogenous_growth_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Inputs :
%   y         [#dynamic variables by 1] double    vector of endogenous variables in the order stored
%                                                 in M_.lead_lag_incidence; see the Manual
%   x         [M_.exo_nbr by nperiods] double     matrix of exogenous variables (in declaration order)
%                                                 for all simulation periods
%   params    [M_.param_nbr by 1] double          vector of parameter values in declaration order
%   it_       scalar double                       time period for exogenous variables for which to evaluate the model
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the dynamic model equations in order of 
%                                          declaration of the equations
%   g1        [M_.endo_nbr by #dynamic variables] double    Jacobian matrix of the dynamic model equations;
%                                                           columns: equations in order of declaration
%                                                           rows: variables in order stored in M_.lead_lag_incidence
%   g2        [M_.endo_nbr by (#dynamic variables)^2] double   Hessian matrix of the dynamic model equations;
%                                                              columns: equations in order of declaration
%                                                              rows: variables in order stored in M_.lead_lag_incidence
%   g3        [M_.endo_nbr by (#dynamic variables)^3] double   Third order derivative matrix of the dynamic model equations;
%                                                              columns: equations in order of declaration
%                                                              rows: variables in order stored in M_.lead_lag_incidence
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(24, 1);
T31 = y(11)^(1-params(11));
T32 = y(28)*T31;
T34 = y(16)^params(11);
T57 = 1/params(8)*1/params(15);
T64 = (y(11)/y(16))^(1-params(11));
T79 = (y(10)*y(36)/y(16))^2;
T86 = y(7)/y(1);
T88 = T86^params(2);
T91 = y(23)^(1-params(2));
T110 = y(1)^(-params(4));
T117 = params(7)/(1+params(3));
T119 = y(23)^(1+params(3));
T121 = y(19)-y(24)*T117*T119;
T122 = T121^(-params(4));
T130 = (y(6)/(y(1)*y(19)))^(1-params(9));
T135 = y(10)^(-params(4));
T137 = T135*y(40);
T141 = (y(10)*y(38)/y(24))^params(9);
T150 = y(24)*params(7)*y(23)^params(3);
T151 = 1/y(21);
T152 = T150*T151;
T157 = (1-params(2))*1/params(15)*(params(8)-1)/params(8);
T161 = y(19)^params(9);
T163 = (y(6)/y(1))^(1-params(9));
T182 = (y(10)*y(42)/y(27))^2;
T214 = params(16)/2;
T223 = params(17)/2;
T230 = y(16)/y(4);
T235 = (-y(7))/(y(1)*y(1));
T236 = getPowerDeriv(T86,params(2),1);
T240 = getPowerDeriv(y(1),(-params(4)),1);
T246 = (-(y(19)*y(6)))/(y(1)*y(19)*y(1)*y(19));
T247 = getPowerDeriv(y(6)/(y(1)*y(19)),1-params(9),1);
T253 = getPowerDeriv(y(6)/y(1),1-params(9),1);
T259 = y(27)/y(8);
T262 = 2*(y(1)*y(16)/y(4)-params(18));
T268 = 2*(y(1)*y(27)/y(8)-params(18));
T275 = 2*y(10)*y(36)/y(16);
T280 = y(40)*getPowerDeriv(y(10),(-params(4)),1);
T282 = getPowerDeriv(y(10)*y(38)/y(24),params(9),1);
T290 = 2*y(10)*y(42)/y(27);
T291 = y(42)/y(27)*T290;
T307 = 1/y(16);
T308 = getPowerDeriv(y(11)/y(16),1-params(11),1);
T322 = (-(y(1)*y(16)))/(y(4)*y(4));
T335 = (-y(11))/(y(16)*y(16));
T338 = y(1)/y(4);
T341 = (-(y(10)*y(36)))/(y(16)*y(16));
T351 = y(10)/y(16);
T363 = getPowerDeriv(T121,(-params(4)),1);
T366 = (-(y(1)*y(6)))/(y(1)*y(19)*y(1)*y(19));
T378 = y(10)/y(24);
T402 = T150*(-1)/(y(21)*y(21));
T409 = getPowerDeriv(y(23),1-params(2),1);
T412 = getPowerDeriv(y(23),1+params(3),1);
T414 = (-(y(24)*T117*T412));
T415 = T363*T414;
T424 = T151*y(24)*params(7)*getPowerDeriv(y(23),params(3),1);
T433 = 1/(y(1)*y(19));
T437 = 1/y(1);
T447 = (-(y(10)*y(38)))/(y(24)*y(24));
T456 = T151*params(7)*y(23)^params(3);
T469 = (-(params(2)*y(10)*(params(8)-1)*y(37)*params(8)*params(15)))/(params(8)*params(15)*y(25)*params(8)*params(15)*y(25));
T476 = (-(y(1)*y(27)))/(y(8)*y(8));
T485 = y(1)/y(8);
T489 = (-(y(10)*y(42)))/(y(27)*y(27));
T500 = y(10)/y(27);
T535 = getPowerDeriv(y(11)/y(16),1-params(11),2);
T536 = T307*T535;
T548 = (-((-(y(1)*y(16)))*(y(4)+y(4))))/(y(4)*y(4)*y(4)*y(4));
T669 = getPowerDeriv(y(6)/(y(1)*y(19)),1-params(9),2);
T670 = T246*T669;
T685 = getPowerDeriv(T121,(-params(4)),2);
T709 = T414*T414*T685+T363*(-(y(24)*T117*getPowerDeriv(y(23),1+params(3),2)));
T742 = T280*y(38)/y(24)*T282;
T745 = getPowerDeriv(y(10)*y(38)/y(24),params(9),2);
T746 = y(38)/y(24)*T745;
T888 = getPowerDeriv(y(6)/y(1),1-params(9),2);
T889 = (-y(6))/(y(1)*y(1))*T888;
T927 = (-((-(y(1)*y(27)))*(y(8)+y(8))))/(y(8)*y(8)*y(8)*y(8));
lhs =y(10);
rhs =params(10)*(1+params(13)*(y(11)+y(12)-1));
residual(1)= lhs-rhs;
lhs =y(11)*y(1);
rhs =params(10)*(y(2)+(1-params(13))*y(3));
residual(2)= lhs-rhs;
lhs =y(12);
rhs =T32*T34;
residual(3)= lhs-rhs;
lhs =y(13);
rhs =params(13)*y(14)+params(10)*(1-params(13))*y(39)*y(34);
residual(4)= lhs-rhs;
lhs =y(14);
rhs =y(15)+params(10)*y(39)*y(35);
residual(5)= lhs-rhs;
lhs =y(15);
rhs =T57*y(17);
residual(6)= lhs-rhs;
lhs =y(28)*params(11)*y(13)*T64;
rhs =1+y(31)*y(1)*y(16)/y(4)+y(30)-y(39)*y(43)*T79;
residual(7)= lhs-rhs;
lhs =y(18);
rhs =y(17);
residual(8)= lhs-rhs;
lhs =y(17);
rhs =T88*T91;
residual(9)= lhs-rhs;
lhs =y(18);
rhs =y(16)+y(19)+(1+y(32))*y(27);
residual(10)= lhs-rhs;
lhs =y(20);
rhs =params(1)*y(21)/y(5)*T110;
residual(11)= lhs-rhs;
lhs =y(21);
rhs =T122+y(22)*params(9)*T130;
residual(12)= lhs-rhs;
lhs =y(22);
rhs =params(1)*(1-params(9))*T137*T141-T119*T117*T122;
residual(13)= lhs-rhs;
lhs =T122*T152;
rhs =T157*y(18)/y(23);
residual(14)= lhs-rhs;
lhs =y(24);
rhs =T161*T163;
residual(15)= lhs-rhs;
lhs =y(25);
rhs =y(27)+T86*(1-params(6));
residual(16)= lhs-rhs;
lhs =y(26);
rhs =1+y(32)+y(1)*y(27)/y(8)*y(33)-y(39)*T182*y(44);
residual(17)= lhs-rhs;
lhs =y(26);
rhs =y(39)*(params(2)*y(10)*(params(8)-1)*y(37)/(params(8)*params(15)*y(25))+(1-params(6))*y(41));
residual(18)= lhs-rhs;
lhs =log(y(28));
rhs =params(14)*log(y(9))+0.1*x(it_, 1);
residual(19)= lhs-rhs;
lhs =y(29);
rhs =y(12)*y(13);
residual(20)= lhs-rhs;
lhs =y(30);
rhs =T214*(y(1)*y(16)/y(4)-params(18))^2;
residual(21)= lhs-rhs;
lhs =y(31);
rhs =params(16)*(y(1)*y(16)/y(4)-params(18));
residual(22)= lhs-rhs;
lhs =y(32);
rhs =T223*(y(1)*y(27)/y(8)-params(18))^2;
residual(23)= lhs-rhs;
lhs =y(33);
rhs =params(17)*(y(1)*y(27)/y(8)-params(18));
residual(24)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(24, 45);

  %
  % Jacobian matrix
  %

  g1(1,10)=1;
  g1(1,11)=(-(params(10)*params(13)));
  g1(1,12)=(-(params(10)*params(13)));
  g1(2,1)=y(11);
  g1(2,2)=(-params(10));
  g1(2,11)=y(1);
  g1(2,3)=(-(params(10)*(1-params(13))));
  g1(3,11)=(-(T34*y(28)*getPowerDeriv(y(11),1-params(11),1)));
  g1(3,12)=1;
  g1(3,16)=(-(T32*getPowerDeriv(y(16),params(11),1)));
  g1(3,28)=(-(T31*T34));
  g1(4,13)=1;
  g1(4,34)=(-(params(10)*(1-params(13))*y(39)));
  g1(4,14)=(-params(13));
  g1(4,39)=(-(params(10)*(1-params(13))*y(34)));
  g1(5,14)=1;
  g1(5,35)=(-(params(10)*y(39)));
  g1(5,15)=(-1);
  g1(5,39)=(-(params(10)*y(35)));
  g1(6,15)=1;
  g1(6,17)=(-T57);
  g1(7,1)=(-(y(31)*T230));
  g1(7,10)=y(39)*y(43)*y(36)/y(16)*T275;
  g1(7,11)=y(28)*params(11)*y(13)*T307*T308;
  g1(7,13)=T64*y(28)*params(11);
  g1(7,4)=(-(y(31)*T322));
  g1(7,16)=y(28)*params(11)*y(13)*T308*T335-(y(31)*T338-y(39)*y(43)*T275*T341);
  g1(7,36)=y(39)*y(43)*T275*T351;
  g1(7,39)=y(43)*T79;
  g1(7,28)=params(11)*y(13)*T64;
  g1(7,30)=(-1);
  g1(7,31)=(-(y(1)*y(16)/y(4)));
  g1(7,43)=y(39)*T79;
  g1(8,17)=(-1);
  g1(8,18)=1;
  g1(9,1)=(-(T91*T235*T236));
  g1(9,17)=1;
  g1(9,23)=(-(T88*T409));
  g1(9,7)=(-(T91*T236*T437));
  g1(10,16)=(-1);
  g1(10,18)=1;
  g1(10,19)=(-1);
  g1(10,27)=(-(1+y(32)));
  g1(10,32)=(-y(27));
  g1(11,1)=(-(params(1)*y(21)/y(5)*T240));
  g1(11,20)=1;
  g1(11,5)=(-(T110*(-(params(1)*y(21)))/(y(5)*y(5))));
  g1(11,21)=(-(T110*params(1)/y(5)));
  g1(12,1)=(-(y(22)*params(9)*T246*T247));
  g1(12,19)=(-(T363+y(22)*params(9)*T247*T366));
  g1(12,21)=1;
  g1(12,22)=(-(params(9)*T130));
  g1(12,23)=(-T415);
  g1(12,6)=(-(y(22)*params(9)*T247*T433));
  g1(12,24)=(-(T363*(-(T117*T119))));
  g1(13,10)=(-(params(1)*(1-params(9))*(T141*T280+T137*y(38)/y(24)*T282)));
  g1(13,19)=T119*T117*T363;
  g1(13,38)=(-(params(1)*(1-params(9))*T137*T282*T378));
  g1(13,22)=1;
  g1(13,40)=(-(params(1)*(1-params(9))*T135*T141));
  g1(13,23)=T117*T122*T412+T119*T117*T415;
  g1(13,24)=(-(params(1)*(1-params(9))*T137*T282*T447-T119*T117*T363*(-(T117*T119))));
  g1(14,18)=(-(T157*1/y(23)));
  g1(14,19)=T152*T363;
  g1(14,21)=T122*T402;
  g1(14,23)=T152*T415+T122*T424-T157*(-y(18))/(y(23)*y(23));
  g1(14,24)=T152*T363*(-(T117*T119))+T122*T456;
  g1(15,1)=(-(T161*(-y(6))/(y(1)*y(1))*T253));
  g1(15,19)=(-(T163*getPowerDeriv(y(19),params(9),1)));
  g1(15,6)=(-(T161*T253*T437));
  g1(15,24)=1;
  g1(16,1)=(-((1-params(6))*T235));
  g1(16,7)=(-((1-params(6))*T437));
  g1(16,25)=1;
  g1(16,27)=(-1);
  g1(17,1)=(-(y(33)*T259));
  g1(17,10)=y(44)*y(39)*T291;
  g1(17,39)=T182*y(44);
  g1(17,26)=1;
  g1(17,8)=(-(y(33)*T476));
  g1(17,27)=(-(y(33)*T485-y(44)*y(39)*T290*T489));
  g1(17,42)=y(44)*y(39)*T290*T500;
  g1(17,32)=(-1);
  g1(17,33)=(-(y(1)*y(27)/y(8)));
  g1(17,44)=y(39)*T182;
  g1(18,10)=(-(y(39)*params(2)*(params(8)-1)*y(37)/(params(8)*params(15)*y(25))));
  g1(18,37)=(-(y(39)*params(2)*y(10)*(params(8)-1)/(params(8)*params(15)*y(25))));
  g1(18,39)=(-(params(2)*y(10)*(params(8)-1)*y(37)/(params(8)*params(15)*y(25))+(1-params(6))*y(41)));
  g1(18,25)=(-(y(39)*T469));
  g1(18,26)=1;
  g1(18,41)=(-(y(39)*(1-params(6))));
  g1(19,9)=(-(params(14)*1/y(9)));
  g1(19,28)=1/y(28);
  g1(19,45)=(-0.1);
  g1(20,12)=(-y(13));
  g1(20,13)=(-y(12));
  g1(20,29)=1;
  g1(21,1)=(-(T214*T230*T262));
  g1(21,4)=(-(T214*T262*T322));
  g1(21,16)=(-(T214*T262*T338));
  g1(21,30)=1;
  g1(22,1)=(-(params(16)*T230));
  g1(22,4)=(-(params(16)*T322));
  g1(22,16)=(-(params(16)*T338));
  g1(22,31)=1;
  g1(23,1)=(-(T223*T259*T268));
  g1(23,8)=(-(T223*T268*T476));
  g1(23,27)=(-(T223*T268*T485));
  g1(23,32)=1;
  g1(24,1)=(-(params(17)*T259));
  g1(24,8)=(-(params(17)*T476));
  g1(24,27)=(-(params(17)*T485));
  g1(24,33)=1;
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  v2 = zeros(245,3);
  v2(1,1)=2;
  v2(1,2)=451;
  v2(1,3)=1;
  v2(2,1)=2;
  v2(2,2)=11;
  v2(2,3)=  v2(1,3);
  v2(3,1)=3;
  v2(3,2)=461;
  v2(3,3)=(-(T34*y(28)*getPowerDeriv(y(11),1-params(11),2)));
  v2(4,1)=3;
  v2(4,2)=686;
  v2(4,3)=(-(y(28)*getPowerDeriv(y(11),1-params(11),1)*getPowerDeriv(y(16),params(11),1)));
  v2(5,1)=3;
  v2(5,2)=466;
  v2(5,3)=  v2(4,3);
  v2(6,1)=3;
  v2(6,2)=691;
  v2(6,3)=(-(T32*getPowerDeriv(y(16),params(11),2)));
  v2(7,1)=3;
  v2(7,2)=1226;
  v2(7,3)=(-(T34*getPowerDeriv(y(11),1-params(11),1)));
  v2(8,1)=3;
  v2(8,2)=478;
  v2(8,3)=  v2(7,3);
  v2(9,1)=3;
  v2(9,2)=1231;
  v2(9,3)=(-(T31*getPowerDeriv(y(16),params(11),1)));
  v2(10,1)=3;
  v2(10,2)=703;
  v2(10,3)=  v2(9,3);
  v2(11,1)=4;
  v2(11,2)=1744;
  v2(11,3)=(-(params(10)*(1-params(13))));
  v2(12,1)=4;
  v2(12,2)=1524;
  v2(12,3)=  v2(11,3);
  v2(13,1)=5;
  v2(13,2)=1745;
  v2(13,3)=(-params(10));
  v2(14,1)=5;
  v2(14,2)=1569;
  v2(14,3)=  v2(13,3);
  v2(15,1)=7;
  v2(15,2)=415;
  v2(15,3)=y(39)*y(43)*y(36)/y(16)*2*y(36)/y(16);
  v2(16,1)=7;
  v2(16,2)=461;
  v2(16,3)=y(28)*params(11)*y(13)*T307*T536;
  v2(17,1)=7;
  v2(17,2)=551;
  v2(17,3)=T307*T308*y(28)*params(11);
  v2(18,1)=7;
  v2(18,2)=463;
  v2(18,3)=  v2(17,3);
  v2(19,1)=7;
  v2(19,2)=136;
  v2(19,3)=(-(y(31)*(-y(16))/(y(4)*y(4))));
  v2(20,1)=7;
  v2(20,2)=4;
  v2(20,3)=  v2(19,3);
  v2(21,1)=7;
  v2(21,2)=139;
  v2(21,3)=(-(y(31)*T548));
  v2(22,1)=7;
  v2(22,2)=676;
  v2(22,3)=(-(y(31)*1/y(4)));
  v2(23,1)=7;
  v2(23,2)=16;
  v2(23,3)=  v2(22,3);
  v2(24,1)=7;
  v2(24,2)=685;
  v2(24,3)=y(39)*y(43)*(T341*2*y(36)/y(16)+T275*(-y(36))/(y(16)*y(16)));
  v2(25,1)=7;
  v2(25,2)=421;
  v2(25,3)=  v2(24,3);
  v2(26,1)=7;
  v2(26,2)=686;
  v2(26,3)=y(28)*params(11)*y(13)*(T335*T536+T308*(-1)/(y(16)*y(16)));
  v2(27,1)=7;
  v2(27,2)=466;
  v2(27,3)=  v2(26,3);
  v2(28,1)=7;
  v2(28,2)=688;
  v2(28,3)=y(28)*params(11)*T308*T335;
  v2(29,1)=7;
  v2(29,2)=556;
  v2(29,3)=  v2(28,3);
  v2(30,1)=7;
  v2(30,2)=679;
  v2(30,3)=(-(y(31)*(-y(1))/(y(4)*y(4))));
  v2(31,1)=7;
  v2(31,2)=151;
  v2(31,3)=  v2(30,3);
  v2(32,1)=7;
  v2(32,2)=691;
  v2(32,3)=y(28)*params(11)*y(13)*(T335*T335*T535+T308*(-((-y(11))*(y(16)+y(16))))/(y(16)*y(16)*y(16)*y(16)))-(-(y(39)*y(43)*(T341*2*T341+T275*(-((-(y(10)*y(36)))*(y(16)+y(16))))/(y(16)*y(16)*y(16)*y(16)))));
  v2(33,1)=7;
  v2(33,2)=1585;
  v2(33,3)=y(39)*y(43)*(T351*2*y(36)/y(16)+T275*T307);
  v2(34,1)=7;
  v2(34,2)=441;
  v2(34,3)=  v2(33,3);
  v2(35,1)=7;
  v2(35,2)=1591;
  v2(35,3)=y(39)*y(43)*(T351*2*T341+T275*(-y(10))/(y(16)*y(16)));
  v2(36,1)=7;
  v2(36,2)=711;
  v2(36,3)=  v2(35,3);
  v2(37,1)=7;
  v2(37,2)=1611;
  v2(37,3)=y(39)*y(43)*T351*2*T351;
  v2(38,1)=7;
  v2(38,2)=1720;
  v2(38,3)=y(43)*y(36)/y(16)*T275;
  v2(39,1)=7;
  v2(39,2)=444;
  v2(39,3)=  v2(38,3);
  v2(40,1)=7;
  v2(40,2)=1726;
  v2(40,3)=y(43)*T275*T341;
  v2(41,1)=7;
  v2(41,2)=714;
  v2(41,3)=  v2(40,3);
  v2(42,1)=7;
  v2(42,2)=1746;
  v2(42,3)=y(43)*T275*T351;
  v2(43,1)=7;
  v2(43,2)=1614;
  v2(43,3)=  v2(42,3);
  v2(44,1)=7;
  v2(44,2)=1226;
  v2(44,3)=params(11)*y(13)*T307*T308;
  v2(45,1)=7;
  v2(45,2)=478;
  v2(45,3)=  v2(44,3);
  v2(46,1)=7;
  v2(46,2)=1228;
  v2(46,3)=params(11)*T64;
  v2(47,1)=7;
  v2(47,2)=568;
  v2(47,3)=  v2(46,3);
  v2(48,1)=7;
  v2(48,2)=1231;
  v2(48,3)=params(11)*y(13)*T308*T335;
  v2(49,1)=7;
  v2(49,2)=703;
  v2(49,3)=  v2(48,3);
  v2(50,1)=7;
  v2(50,2)=1351;
  v2(50,3)=(-T230);
  v2(51,1)=7;
  v2(51,2)=31;
  v2(51,3)=  v2(50,3);
  v2(52,1)=7;
  v2(52,2)=1354;
  v2(52,3)=(-T322);
  v2(53,1)=7;
  v2(53,2)=166;
  v2(53,3)=  v2(52,3);
  v2(54,1)=7;
  v2(54,2)=1366;
  v2(54,3)=(-T338);
  v2(55,1)=7;
  v2(55,2)=706;
  v2(55,3)=  v2(54,3);
  v2(56,1)=7;
  v2(56,2)=1900;
  v2(56,3)=y(39)*y(36)/y(16)*T275;
  v2(57,1)=7;
  v2(57,2)=448;
  v2(57,3)=  v2(56,3);
  v2(58,1)=7;
  v2(58,2)=1906;
  v2(58,3)=y(39)*T275*T341;
  v2(59,1)=7;
  v2(59,2)=718;
  v2(59,3)=  v2(58,3);
  v2(60,1)=7;
  v2(60,2)=1926;
  v2(60,3)=y(39)*T275*T351;
  v2(61,1)=7;
  v2(61,2)=1618;
  v2(61,3)=  v2(60,3);
  v2(62,1)=7;
  v2(62,2)=1929;
  v2(62,3)=T79;
  v2(63,1)=7;
  v2(63,2)=1753;
  v2(63,3)=  v2(62,3);
  v2(64,1)=9;
  v2(64,2)=1;
  v2(64,3)=(-(T91*(T236*(-((-y(7))*(y(1)+y(1))))/(y(1)*y(1)*y(1)*y(1))+T235*T235*getPowerDeriv(T86,params(2),2))));
  v2(65,1)=9;
  v2(65,2)=991;
  v2(65,3)=(-(T235*T236*T409));
  v2(66,1)=9;
  v2(66,2)=23;
  v2(66,3)=  v2(65,3);
  v2(67,1)=9;
  v2(67,2)=1013;
  v2(67,3)=(-(T88*getPowerDeriv(y(23),1-params(2),2)));
  v2(68,1)=9;
  v2(68,2)=271;
  v2(68,3)=(-(T91*(T437*T235*getPowerDeriv(T86,params(2),2)+T236*(-1)/(y(1)*y(1)))));
  v2(69,1)=9;
  v2(69,2)=7;
  v2(69,3)=  v2(68,3);
  v2(70,1)=9;
  v2(70,2)=293;
  v2(70,3)=(-(T409*T236*T437));
  v2(71,1)=9;
  v2(71,2)=997;
  v2(71,3)=  v2(70,3);
  v2(72,1)=9;
  v2(72,2)=277;
  v2(72,3)=(-(T91*T437*T437*getPowerDeriv(T86,params(2),2)));
  v2(73,1)=10;
  v2(73,2)=1422;
  v2(73,3)=(-1);
  v2(74,1)=10;
  v2(74,2)=1202;
  v2(74,3)=  v2(73,3);
  v2(75,1)=11;
  v2(75,2)=1;
  v2(75,3)=(-(params(1)*y(21)/y(5)*getPowerDeriv(y(1),(-params(4)),2)));
  v2(76,1)=11;
  v2(76,2)=181;
  v2(76,3)=(-(T240*(-(params(1)*y(21)))/(y(5)*y(5))));
  v2(77,1)=11;
  v2(77,2)=5;
  v2(77,3)=  v2(76,3);
  v2(78,1)=11;
  v2(78,2)=185;
  v2(78,3)=(-(T110*(-((-(params(1)*y(21)))*(y(5)+y(5))))/(y(5)*y(5)*y(5)*y(5))));
  v2(79,1)=11;
  v2(79,2)=901;
  v2(79,3)=(-(T240*params(1)/y(5)));
  v2(80,1)=11;
  v2(80,2)=21;
  v2(80,3)=  v2(79,3);
  v2(81,1)=11;
  v2(81,2)=905;
  v2(81,3)=(-(T110*(-params(1))/(y(5)*y(5))));
  v2(82,1)=11;
  v2(82,2)=201;
  v2(82,3)=  v2(81,3);
  v2(83,1)=12;
  v2(83,2)=1;
  v2(83,3)=(-(y(22)*params(9)*(T247*(-((-(y(19)*y(6)))*(y(19)*y(1)*y(19)+y(19)*y(1)*y(19))))/(y(1)*y(19)*y(1)*y(19)*y(1)*y(19)*y(1)*y(19))+T246*T670)));
  v2(84,1)=12;
  v2(84,2)=811;
  v2(84,3)=(-(y(22)*params(9)*(T366*T670+T247*(y(1)*y(19)*y(1)*y(19)*(-y(6))-(-(y(1)*y(6)))*(y(19)*y(1)*y(19)+y(19)*y(1)*y(19)))/(y(1)*y(19)*y(1)*y(19)*y(1)*y(19)*y(1)*y(19)))));
  v2(85,1)=12;
  v2(85,2)=19;
  v2(85,3)=  v2(84,3);
  v2(86,1)=12;
  v2(86,2)=829;
  v2(86,3)=(-(T685+y(22)*params(9)*(T366*T366*T669+T247*(-((-(y(1)*y(6)))*(y(1)*y(1)*y(19)+y(1)*y(1)*y(19))))/(y(1)*y(19)*y(1)*y(19)*y(1)*y(19)*y(1)*y(19)))));
  v2(87,1)=12;
  v2(87,2)=946;
  v2(87,3)=(-(params(9)*T246*T247));
  v2(88,1)=12;
  v2(88,2)=22;
  v2(88,3)=  v2(87,3);
  v2(89,1)=12;
  v2(89,2)=964;
  v2(89,3)=(-(params(9)*T247*T366));
  v2(90,1)=12;
  v2(90,2)=832;
  v2(90,3)=  v2(89,3);
  v2(91,1)=12;
  v2(91,2)=1009;
  v2(91,3)=(-(T414*T685));
  v2(92,1)=12;
  v2(92,2)=833;
  v2(92,3)=  v2(91,3);
  v2(93,1)=12;
  v2(93,2)=1013;
  v2(93,3)=(-T709);
  v2(94,1)=12;
  v2(94,2)=226;
  v2(94,3)=(-(y(22)*params(9)*(T433*T670+T247*(-y(19))/(y(1)*y(19)*y(1)*y(19)))));
  v2(95,1)=12;
  v2(95,2)=6;
  v2(95,3)=  v2(94,3);
  v2(96,1)=12;
  v2(96,2)=244;
  v2(96,3)=(-(y(22)*params(9)*(T433*T366*T669+T247*(-y(1))/(y(1)*y(19)*y(1)*y(19)))));
  v2(97,1)=12;
  v2(97,2)=816;
  v2(97,3)=  v2(96,3);
  v2(98,1)=12;
  v2(98,2)=247;
  v2(98,3)=(-(params(9)*T247*T433));
  v2(99,1)=12;
  v2(99,2)=951;
  v2(99,3)=  v2(98,3);
  v2(100,1)=12;
  v2(100,2)=231;
  v2(100,3)=(-(y(22)*params(9)*T433*T433*T669));
  v2(101,1)=12;
  v2(101,2)=1054;
  v2(101,3)=(-((-(T117*T119))*T685));
  v2(102,1)=12;
  v2(102,2)=834;
  v2(102,3)=  v2(101,3);
  v2(103,1)=12;
  v2(103,2)=1058;
  v2(103,3)=(-((-(T117*T119))*T414*T685+T363*(-(T117*T412))));
  v2(104,1)=12;
  v2(104,2)=1014;
  v2(104,3)=  v2(103,3);
  v2(105,1)=12;
  v2(105,2)=1059;
  v2(105,3)=(-((-(T117*T119))*(-(T117*T119))*T685));
  v2(106,1)=13;
  v2(106,2)=415;
  v2(106,3)=(-(params(1)*(1-params(9))*(T742+T141*y(40)*getPowerDeriv(y(10),(-params(4)),2)+T742+T137*y(38)/y(24)*T746)));
  v2(107,1)=13;
  v2(107,2)=829;
  v2(107,3)=T119*T117*T685;
  v2(108,1)=13;
  v2(108,2)=1675;
  v2(108,3)=(-(params(1)*(1-params(9))*(T280*T282*T378+T137*(T378*T746+T282*1/y(24)))));
  v2(109,1)=13;
  v2(109,2)=443;
  v2(109,3)=  v2(108,3);
  v2(110,1)=13;
  v2(110,2)=1703;
  v2(110,3)=(-(params(1)*(1-params(9))*T137*T378*T378*T745));
  v2(111,1)=13;
  v2(111,2)=1765;
  v2(111,3)=(-(params(1)*(1-params(9))*(T141*getPowerDeriv(y(10),(-params(4)),1)+T135*y(38)/y(24)*T282)));
  v2(112,1)=13;
  v2(112,2)=445;
  v2(112,3)=  v2(111,3);
  v2(113,1)=13;
  v2(113,2)=1793;
  v2(113,3)=(-(params(1)*(1-params(9))*T135*T282*T378));
  v2(114,1)=13;
  v2(114,2)=1705;
  v2(114,3)=  v2(113,3);
  v2(115,1)=13;
  v2(115,2)=1009;
  v2(115,3)=T117*T363*T412+T119*T117*T414*T685;
  v2(116,1)=13;
  v2(116,2)=833;
  v2(116,3)=  v2(115,3);
  v2(117,1)=13;
  v2(117,2)=1013;
  v2(117,3)=T412*T117*T415+T117*T122*getPowerDeriv(y(23),1+params(3),2)+T412*T117*T415+T119*T117*T709;
  v2(118,1)=13;
  v2(118,2)=1045;
  v2(118,3)=(-(params(1)*(1-params(9))*(T280*T282*T447+T137*(T447*T746+T282*(-y(38))/(y(24)*y(24))))));
  v2(119,1)=13;
  v2(119,2)=429;
  v2(119,3)=  v2(118,3);
  v2(120,1)=13;
  v2(120,2)=1054;
  v2(120,3)=T119*T117*(-(T117*T119))*T685;
  v2(121,1)=13;
  v2(121,2)=834;
  v2(121,3)=  v2(120,3);
  v2(122,1)=13;
  v2(122,2)=1073;
  v2(122,3)=(-(params(1)*(1-params(9))*T137*(T447*T378*T745+T282*(-y(10))/(y(24)*y(24)))));
  v2(123,1)=13;
  v2(123,2)=1689;
  v2(123,3)=  v2(122,3);
  v2(124,1)=13;
  v2(124,2)=1075;
  v2(124,3)=(-(params(1)*(1-params(9))*T135*T282*T447));
  v2(125,1)=13;
  v2(125,2)=1779;
  v2(125,3)=  v2(124,3);
  v2(126,1)=13;
  v2(126,2)=1058;
  v2(126,3)=T412*T117*T363*(-(T117*T119))+T119*T117*((-(T117*T119))*T414*T685+T363*(-(T117*T412)));
  v2(127,1)=13;
  v2(127,2)=1014;
  v2(127,3)=  v2(126,3);
  v2(128,1)=13;
  v2(128,2)=1059;
  v2(128,3)=(-(params(1)*(1-params(9))*T137*(T447*T447*T745+T282*(-((-(y(10)*y(38)))*(y(24)+y(24))))/(y(24)*y(24)*y(24)*y(24)))-T119*T117*(-(T117*T119))*(-(T117*T119))*T685));
  v2(129,1)=14;
  v2(129,2)=829;
  v2(129,3)=T152*T685;
  v2(130,1)=14;
  v2(130,2)=919;
  v2(130,3)=T363*T402;
  v2(131,1)=14;
  v2(131,2)=831;
  v2(131,3)=  v2(130,3);
  v2(132,1)=14;
  v2(132,2)=921;
  v2(132,3)=T122*T150*(y(21)+y(21))/(y(21)*y(21)*y(21)*y(21));
  v2(133,1)=14;
  v2(133,2)=1008;
  v2(133,3)=(-(T157*(-1)/(y(23)*y(23))));
  v2(134,1)=14;
  v2(134,2)=788;
  v2(134,3)=  v2(133,3);
  v2(135,1)=14;
  v2(135,2)=1009;
  v2(135,3)=T152*T414*T685+T363*T424;
  v2(136,1)=14;
  v2(136,2)=833;
  v2(136,3)=  v2(135,3);
  v2(137,1)=14;
  v2(137,2)=1011;
  v2(137,3)=T402*T415+T122*(-1)/(y(21)*y(21))*y(24)*params(7)*getPowerDeriv(y(23),params(3),1);
  v2(138,1)=14;
  v2(138,2)=923;
  v2(138,3)=  v2(137,3);
  v2(139,1)=14;
  v2(139,2)=1013;
  v2(139,3)=T415*T424+T152*T709+T415*T424+T122*T151*y(24)*params(7)*getPowerDeriv(y(23),params(3),2)-T157*(-((-y(18))*(y(23)+y(23))))/(y(23)*y(23)*y(23)*y(23));
  v2(140,1)=14;
  v2(140,2)=1054;
  v2(140,3)=T152*(-(T117*T119))*T685+T363*T456;
  v2(141,1)=14;
  v2(141,2)=834;
  v2(141,3)=  v2(140,3);
  v2(142,1)=14;
  v2(142,2)=1056;
  v2(142,3)=T402*T363*(-(T117*T119))+T122*(-1)/(y(21)*y(21))*params(7)*y(23)^params(3);
  v2(143,1)=14;
  v2(143,2)=924;
  v2(143,3)=  v2(142,3);
  v2(144,1)=14;
  v2(144,2)=1058;
  v2(144,3)=T424*T363*(-(T117*T119))+T152*((-(T117*T119))*T414*T685+T363*(-(T117*T412)))+T415*T456+T122*T151*params(7)*getPowerDeriv(y(23),params(3),1);
  v2(145,1)=14;
  v2(145,2)=1014;
  v2(145,3)=  v2(144,3);
  v2(146,1)=14;
  v2(146,2)=1059;
  v2(146,3)=T363*(-(T117*T119))*T456+T363*(-(T117*T119))*T456+T152*(-(T117*T119))*(-(T117*T119))*T685;
  v2(147,1)=15;
  v2(147,2)=1;
  v2(147,3)=(-(T161*(T253*(-((-y(6))*(y(1)+y(1))))/(y(1)*y(1)*y(1)*y(1))+(-y(6))/(y(1)*y(1))*T889)));
  v2(148,1)=15;
  v2(148,2)=811;
  v2(148,3)=(-((-y(6))/(y(1)*y(1))*T253*getPowerDeriv(y(19),params(9),1)));
  v2(149,1)=15;
  v2(149,2)=19;
  v2(149,3)=  v2(148,3);
  v2(150,1)=15;
  v2(150,2)=829;
  v2(150,3)=(-(T163*getPowerDeriv(y(19),params(9),2)));
  v2(151,1)=15;
  v2(151,2)=226;
  v2(151,3)=(-(T161*(T437*T889+T253*(-1)/(y(1)*y(1)))));
  v2(152,1)=15;
  v2(152,2)=6;
  v2(152,3)=  v2(151,3);
  v2(153,1)=15;
  v2(153,2)=244;
  v2(153,3)=(-(getPowerDeriv(y(19),params(9),1)*T253*T437));
  v2(154,1)=15;
  v2(154,2)=816;
  v2(154,3)=  v2(153,3);
  v2(155,1)=15;
  v2(155,2)=231;
  v2(155,3)=(-(T161*T437*T437*T888));
  v2(156,1)=16;
  v2(156,2)=1;
  v2(156,3)=(-((1-params(6))*(-((-y(7))*(y(1)+y(1))))/(y(1)*y(1)*y(1)*y(1))));
  v2(157,1)=16;
  v2(157,2)=271;
  v2(157,3)=(-((1-params(6))*(-1)/(y(1)*y(1))));
  v2(158,1)=16;
  v2(158,2)=7;
  v2(158,3)=  v2(157,3);
  v2(159,1)=17;
  v2(159,2)=415;
  v2(159,3)=y(44)*y(39)*y(42)/y(27)*2*y(42)/y(27);
  v2(160,1)=17;
  v2(160,2)=1720;
  v2(160,3)=y(44)*T291;
  v2(161,1)=17;
  v2(161,2)=444;
  v2(161,3)=  v2(160,3);
  v2(162,1)=17;
  v2(162,2)=316;
  v2(162,3)=(-(y(33)*(-y(27))/(y(8)*y(8))));
  v2(163,1)=17;
  v2(163,2)=8;
  v2(163,3)=  v2(162,3);
  v2(164,1)=17;
  v2(164,2)=323;
  v2(164,3)=(-(y(33)*T927));
  v2(165,1)=17;
  v2(165,2)=1171;
  v2(165,3)=(-(y(33)*1/y(8)));
  v2(166,1)=17;
  v2(166,2)=27;
  v2(166,3)=  v2(165,3);
  v2(167,1)=17;
  v2(167,2)=1180;
  v2(167,3)=y(44)*y(39)*(T489*2*y(42)/y(27)+T290*(-y(42))/(y(27)*y(27)));
  v2(168,1)=17;
  v2(168,2)=432;
  v2(168,3)=  v2(167,3);
  v2(169,1)=17;
  v2(169,2)=1209;
  v2(169,3)=y(44)*T290*T489;
  v2(170,1)=17;
  v2(170,2)=1737;
  v2(170,3)=  v2(169,3);
  v2(171,1)=17;
  v2(171,2)=1178;
  v2(171,3)=(-(y(33)*(-y(1))/(y(8)*y(8))));
  v2(172,1)=17;
  v2(172,2)=342;
  v2(172,3)=  v2(171,3);
  v2(173,1)=17;
  v2(173,2)=1197;
  v2(173,3)=y(44)*y(39)*(T489*2*T489+T290*(-((-(y(10)*y(42)))*(y(27)+y(27))))/(y(27)*y(27)*y(27)*y(27)));
  v2(174,1)=17;
  v2(174,2)=1855;
  v2(174,3)=y(44)*y(39)*(T500*2*y(42)/y(27)+T290*1/y(27));
  v2(175,1)=17;
  v2(175,2)=447;
  v2(175,3)=  v2(174,3);
  v2(176,1)=17;
  v2(176,2)=1884;
  v2(176,3)=y(44)*T290*T500;
  v2(177,1)=17;
  v2(177,2)=1752;
  v2(177,3)=  v2(176,3);
  v2(178,1)=17;
  v2(178,2)=1872;
  v2(178,3)=y(44)*y(39)*(T500*2*T489+T290*(-y(10))/(y(27)*y(27)));
  v2(179,1)=17;
  v2(179,2)=1212;
  v2(179,3)=  v2(178,3);
  v2(180,1)=17;
  v2(180,2)=1887;
  v2(180,3)=y(44)*y(39)*T500*2*T500;
  v2(181,1)=17;
  v2(181,2)=1441;
  v2(181,3)=(-T259);
  v2(182,1)=17;
  v2(182,2)=33;
  v2(182,3)=  v2(181,3);
  v2(183,1)=17;
  v2(183,2)=1448;
  v2(183,3)=(-T476);
  v2(184,1)=17;
  v2(184,2)=348;
  v2(184,3)=  v2(183,3);
  v2(185,1)=17;
  v2(185,2)=1467;
  v2(185,3)=(-T485);
  v2(186,1)=17;
  v2(186,2)=1203;
  v2(186,3)=  v2(185,3);
  v2(187,1)=17;
  v2(187,2)=1945;
  v2(187,3)=y(39)*T291;
  v2(188,1)=17;
  v2(188,2)=449;
  v2(188,3)=  v2(187,3);
  v2(189,1)=17;
  v2(189,2)=1974;
  v2(189,3)=T182;
  v2(190,1)=17;
  v2(190,2)=1754;
  v2(190,3)=  v2(189,3);
  v2(191,1)=17;
  v2(191,2)=1962;
  v2(191,3)=y(39)*T290*T489;
  v2(192,1)=17;
  v2(192,2)=1214;
  v2(192,3)=  v2(191,3);
  v2(193,1)=17;
  v2(193,2)=1977;
  v2(193,3)=y(39)*T290*T500;
  v2(194,1)=17;
  v2(194,2)=1889;
  v2(194,3)=  v2(193,3);
  v2(195,1)=18;
  v2(195,2)=1630;
  v2(195,3)=(-(y(39)*params(2)*(params(8)-1)/(params(8)*params(15)*y(25))));
  v2(196,1)=18;
  v2(196,2)=442;
  v2(196,3)=  v2(195,3);
  v2(197,1)=18;
  v2(197,2)=1720;
  v2(197,3)=(-(params(2)*(params(8)-1)*y(37)/(params(8)*params(15)*y(25))));
  v2(198,1)=18;
  v2(198,2)=444;
  v2(198,3)=  v2(197,3);
  v2(199,1)=18;
  v2(199,2)=1747;
  v2(199,3)=(-(params(2)*y(10)*(params(8)-1)/(params(8)*params(15)*y(25))));
  v2(200,1)=18;
  v2(200,2)=1659;
  v2(200,3)=  v2(199,3);
  v2(201,1)=18;
  v2(201,2)=1090;
  v2(201,3)=(-(y(39)*(-(params(2)*(params(8)-1)*y(37)*params(8)*params(15)))/(params(8)*params(15)*y(25)*params(8)*params(15)*y(25))));
  v2(202,1)=18;
  v2(202,2)=430;
  v2(202,3)=  v2(201,3);
  v2(203,1)=18;
  v2(203,2)=1117;
  v2(203,3)=(-(y(39)*(-(params(2)*y(10)*(params(8)-1)*params(8)*params(15)))/(params(8)*params(15)*y(25)*params(8)*params(15)*y(25))));
  v2(204,1)=18;
  v2(204,2)=1645;
  v2(204,3)=  v2(203,3);
  v2(205,1)=18;
  v2(205,2)=1119;
  v2(205,3)=(-T469);
  v2(206,1)=18;
  v2(206,2)=1735;
  v2(206,3)=  v2(205,3);
  v2(207,1)=18;
  v2(207,2)=1105;
  v2(207,3)=(-(y(39)*(-((-(params(2)*y(10)*(params(8)-1)*y(37)*params(8)*params(15)))*(params(8)*params(15)*y(25)*params(8)*params(15)+params(8)*params(15)*y(25)*params(8)*params(15))))/(params(8)*params(15)*y(25)*params(8)*params(15)*y(25)*params(8)*params(15)*y(25)*params(8)*params(15)*y(25))));
  v2(208,1)=18;
  v2(208,2)=1839;
  v2(208,3)=(-(1-params(6)));
  v2(209,1)=18;
  v2(209,2)=1751;
  v2(209,3)=  v2(208,3);
  v2(210,1)=19;
  v2(210,2)=369;
  v2(210,3)=(-(params(14)*(-1)/(y(9)*y(9))));
  v2(211,1)=19;
  v2(211,2)=1243;
  v2(211,3)=(-1)/(y(28)*y(28));
  v2(212,1)=20;
  v2(212,2)=552;
  v2(212,3)=(-1);
  v2(213,1)=20;
  v2(213,2)=508;
  v2(213,3)=  v2(212,3);
  v2(214,1)=21;
  v2(214,2)=1;
  v2(214,3)=(-(T214*T230*2*T230));
  v2(215,1)=21;
  v2(215,2)=136;
  v2(215,3)=(-(T214*(T322*2*T230+T262*(-y(16))/(y(4)*y(4)))));
  v2(216,1)=21;
  v2(216,2)=4;
  v2(216,3)=  v2(215,3);
  v2(217,1)=21;
  v2(217,2)=139;
  v2(217,3)=(-(T214*(T322*2*T322+T262*T548)));
  v2(218,1)=21;
  v2(218,2)=676;
  v2(218,3)=(-(T214*(T338*2*T230+T262*1/y(4))));
  v2(219,1)=21;
  v2(219,2)=16;
  v2(219,3)=  v2(218,3);
  v2(220,1)=21;
  v2(220,2)=679;
  v2(220,3)=(-(T214*(T338*2*T322+T262*(-y(1))/(y(4)*y(4)))));
  v2(221,1)=21;
  v2(221,2)=151;
  v2(221,3)=  v2(220,3);
  v2(222,1)=21;
  v2(222,2)=691;
  v2(222,3)=(-(T214*T338*2*T338));
  v2(223,1)=22;
  v2(223,2)=136;
  v2(223,3)=(-(params(16)*(-y(16))/(y(4)*y(4))));
  v2(224,1)=22;
  v2(224,2)=4;
  v2(224,3)=  v2(223,3);
  v2(225,1)=22;
  v2(225,2)=139;
  v2(225,3)=(-(params(16)*T548));
  v2(226,1)=22;
  v2(226,2)=676;
  v2(226,3)=(-(params(16)*1/y(4)));
  v2(227,1)=22;
  v2(227,2)=16;
  v2(227,3)=  v2(226,3);
  v2(228,1)=22;
  v2(228,2)=679;
  v2(228,3)=(-(params(16)*(-y(1))/(y(4)*y(4))));
  v2(229,1)=22;
  v2(229,2)=151;
  v2(229,3)=  v2(228,3);
  v2(230,1)=23;
  v2(230,2)=1;
  v2(230,3)=(-(T223*T259*2*T259));
  v2(231,1)=23;
  v2(231,2)=316;
  v2(231,3)=(-(T223*(T476*2*T259+T268*(-y(27))/(y(8)*y(8)))));
  v2(232,1)=23;
  v2(232,2)=8;
  v2(232,3)=  v2(231,3);
  v2(233,1)=23;
  v2(233,2)=323;
  v2(233,3)=(-(T223*(T476*2*T476+T268*T927)));
  v2(234,1)=23;
  v2(234,2)=1171;
  v2(234,3)=(-(T223*(T485*2*T259+T268*1/y(8))));
  v2(235,1)=23;
  v2(235,2)=27;
  v2(235,3)=  v2(234,3);
  v2(236,1)=23;
  v2(236,2)=1178;
  v2(236,3)=(-(T223*(T485*2*T476+T268*(-y(1))/(y(8)*y(8)))));
  v2(237,1)=23;
  v2(237,2)=342;
  v2(237,3)=  v2(236,3);
  v2(238,1)=23;
  v2(238,2)=1197;
  v2(238,3)=(-(T223*T485*2*T485));
  v2(239,1)=24;
  v2(239,2)=316;
  v2(239,3)=(-(params(17)*(-y(27))/(y(8)*y(8))));
  v2(240,1)=24;
  v2(240,2)=8;
  v2(240,3)=  v2(239,3);
  v2(241,1)=24;
  v2(241,2)=323;
  v2(241,3)=(-(params(17)*T927));
  v2(242,1)=24;
  v2(242,2)=1171;
  v2(242,3)=(-(params(17)*1/y(8)));
  v2(243,1)=24;
  v2(243,2)=27;
  v2(243,3)=  v2(242,3);
  v2(244,1)=24;
  v2(244,2)=1178;
  v2(244,3)=(-(params(17)*(-y(1))/(y(8)*y(8))));
  v2(245,1)=24;
  v2(245,2)=342;
  v2(245,3)=  v2(244,3);
  g2 = sparse(v2(:,1),v2(:,2),v2(:,3),24,2025);
end
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],24,91125);
end
end
