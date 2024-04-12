close all; 
clear variables; 

%% Cargamos los datos
root = 'D:\Documents\Ingenieria fisica\Levitador\Rodamina\20240321\'; 
E1 = readmatrix( [ root '1e-4\Emision.csv' ] );
E2 = readmatrix( [ root '1e-5\Emision.csv' ] );
E3 = readmatrix( [ root '1e-6\Emision.csv' ] );
E4 = readmatrix( [ root '5e-5\Emision.csv' ] );
E5 = readmatrix( [ root '5e-6\Emision.csv' ] );

A1 = readmatrix( [ root '1e-4\Absorption.csv' ] );
A2 = readmatrix( [ root '1e-5\Absorption.csv' ] );
A3 = readmatrix( [ root '1e-6\Absorption.csv' ] );
A4 = readmatrix( [ root '5e-5\Absorption.csv' ] );
A5 = readmatrix( [ root '5e-6\Absorption.csv' ] );

%% Ploteo de la emision
figure(); 
plot(E1(20:end, 1), E1(20:end, 2), "k", E2(20:end, 1), E2(20:end, 2), "b", ...
    E3(20:end, 1), E3(20:end, 2), "r", E4(20:end, 1), E4(20:end, 2), "c", ...
    E5(20:end, 1), E5(20:end, 2), "m");
title('Rd Emission');
xlabel('Wavelength (nm)');
ylabel('cps');
legend('1e-4', '1e-5', '1e-6', '5e-5', '5e-6')

%% Ploteo de la absorcion
figure(); 
plot(A1(23:end, 1), A1(23:end, 2), "k", A2(23:end, 1), A2(23:end, 2), "b", ...
    A3(23:end, 1), A3(23:end, 2), "r", A4(23:end, 1), A4(23:end, 2), "c", ...
    A5(23:end, 1), A5(23:end, 2), "m");
title('Rd Absorption');
xlabel('Wavelength (nm)');
ylabel('cps');
legend('1e-4', '1e-5', '1e-6', '5e-5', '5e-6')

%% Normalización de la emision
NE1 = (E1(20:end, 2)-min(E1(20:end, 2))) / (max(E1(20:end, 2))-min(E1(20:end, 2)));
NE2 = (E2(20:end, 2)-min(E2(20:end, 2))) / (max(E2(20:end, 2))-min(E2(20:end, 2)));
NE3 = (E3(20:end, 2)-min(E3(20:end, 2))) / (max(E3(20:end, 2))-min(E3(20:end, 2)));
NE4 = (E4(20:end, 2)-min(E4(20:end, 2))) / (max(E4(20:end, 2))-min(E4(20:end, 2)));
NE5 = (E5(20:end, 2)-min(E5(20:end, 2))) / (max(E5(20:end, 2))-min(E5(20:end, 2)));
figure(); 
plot(E1(20:end, 1), NE1, "k", ...
    E2(20:end, 1), NE2, "b", ...
    E3(20:end, 1), NE3, "r", ...
    E4(20:end, 1), NE4, "c", ...
    E5(20:end, 1), NE5, "m");

title('Rd Normalized Emission');
xlabel('Wavelength (nm)');
ylabel('cps');
legend('1e-4', '1e-5', '1e-6', '5e-5', '5e-6')

%% Normalización de la Absorcion
NA1 = (A1(23:end, 2)-min(A1(23:end, 2))) / (max(A1(23:end, 2))-min(A1(23:end, 2)));
NA2 = (A2(23:end, 2)-min(A2(23:end, 2))) / (max(A2(23:end, 2))-min(A2(23:end, 2)));
NA3 = (A3(23:end, 2)-min(A3(23:end, 2))) / (max(A3(23:end, 2))-min(A3(23:end, 2)));
NA4 = (A4(23:end, 2)-min(A4(23:end, 2))) / (max(A4(23:end, 2))-min(A4(23:end, 2)));
NA5 = (A5(23:end, 2)-min(A5(23:end, 2))) / (max(A5(23:end, 2))-min(A5(23:end, 2)));
figure(); 
plot(A1(23:end, 1), NA1, "k", ...
    A2(23:end, 1), NA2, "b", ...
    A3(23:end, 1), NA3, "r", ...
    A4(23:end, 1), NA4, "c", ...
    A5(23:end, 1), NA5, "m");

title('Rd Normalized Absorption');
xlabel('Wavelength (nm)');
ylabel('cps');
legend('1e-4', '1e-5', '1e-6', '5e-5', '5e-6')

%% Comparacion de emision vs absorcion
%1e-4
figure(); 
plot(E1(20:end, 1), NE1, "r"); hold on;
plot(A1(23:end, 1), NA1, "b"); hold off;
title('Emission vs Absorption Rd + H2O 1e-4 M')
xlabel('Wavelength (nm)');
ylabel('cps');
legend('Emission', 'Absorption')

%1e-5
figure(); 
plot(E2(20:end, 1), NE2, "r"); hold on;
plot(A2(23:end, 1), NA2, "b"); hold off;
title('Emission vs Absorption Rd + H2O 1e-5 M')
xlabel('Wavelength (nm)');
ylabel('cps');
legend('Emission', 'Absorption')

%1e-6
figure(); 
plot(E3(20:end, 1), NE3, "r"); hold on;
plot(A3(23:end, 1), NA3, "b"); hold off;
title('Emission vs Absorption Rd + H2O 1e-6 M')
xlabel('Wavelength (nm)');
ylabel('cps');
legend('Emission', 'Absorption')

%5e-5
figure(); 
plot(E4(20:end, 1), NE4, "r"); hold on;
plot(A4(23:end, 1), NA4, "b"); hold off;
title('Emission vs Absorption Rd + H2O 5e-5 M')
xlabel('Wavelength (nm)');
ylabel('cps');
legend('Emission', 'Absorption')

%5e-6
figure(); 
plot(E5(20:end, 1), NE5, "r"); hold on;
plot(A5(23:end, 1), NA5, "b"); hold off;
title('Emission vs Absorption Rd + H2O 5e-6 M')
xlabel('Wavelength (nm)');
ylabel('cps');
legend('Emission', 'Absorption')



