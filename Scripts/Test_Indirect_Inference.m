%% Setup 
clear;clc;close all;
addpath('VAR')
addpath('VAR\VAR')
addpath('VAR\Utils')
addpath('VAR\Stats')
addpath('VAR\Auxiliary')
addpath('VAR\Figure')
addpath('VAR\ExportFig')

%% Indirect Inference: Transform Series Generated by Dynare

% Make results repeatable
% rng(2^28);

% Get simulated series
% plot_simulated_series;

% Transform them
% R_sim = transform_series( R_simul' );
% A_sim = transform_series( A_simul' );
% Y_sim = transform_series( Y_simul' );

% Define data
% X = [A_sim, Y_sim, R_sim];
% vnames = {'TFP', 'GDP', 'R&D'};

%% US Data
Data = readtable('US_logged_series.csv');
X = [Data.gdp, Data.tfp, Data.rd];
vnames = {'GDP', 'TFP', 'R&D'};

% Define number of variables and of observations
[nobs, nvar] = size(X);
% fitlm(X(1:end-1, :),R_sim(2:end), 'Intercept', false)


%% VAR ESTIMATION
% =======================================================================
% Set the case for the VARout (0, 1, or 2)
% const: 0 no constant; 1 constant; 2 constant and trend; 3 constant, 
%       trend, and trend^2 [dflt = 0]
const = 1;
% Set number of nlags
nlags = 1;

% Estimate 
% NOTE: I added list wise deletion to VARmodel.m (drop any rows with missing data)
[VAR, VARopt] = VARmodel(X,nlags,const);
% Print at screen and create table
VARopt.vnames = vnames;
[beta, tstat, TABLE] = VARprint(VAR,VARopt);


%% IMPULSE RESPONSE
% =======================================================================
% Set options some options for IRF calculation
VARopt.nsteps = 10;
VARopt.ident = 'oir';
VARopt.quality = 0;
% Compute IRF
[IRF, VAR] = VARir(VAR,VARopt);





%% these IRFs are correct -> they perfectly match those produced by pvar in stata

% Issue: they change a lot each time I simulate the model again. it's seems
% it's just because different shocks are being used each time. this is not
% fixed by increasing the length of the simulated series. it is fixed by
% setting rng() before simulation
% 
% response = 1; % tfp
% shock    = 3; % rd
% IRF(:, response, shock)
% plot(IRF(:, response, shock))
% 
% % in the case of response = 1, shock = 3
% title('tfp response to rd shock')

%% TODO:
% these are not yet cumulative IRFs -> make cumulative
% use them to match the pvar IRFs
% currently we're very far away from a good match.... the impact of a R&D
% shock on TFP is negative!!!


%% Compute error bands
% VARopt.pctg = 95;
[IRFINF,IRFSUP,IRFMED] = VARirband(VAR,VARopt);

%% Plot
VARirplot(IRF,VARopt, IRFINF, IRFSUP);
