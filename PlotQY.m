close all; 
clear variables; 


%% Obtrenemos las gráficas iniciales

% Cargamos los datos
root = 'D:\Documents\Ingenieria fisica\Levitador\Rodamina\Rodamina6G\'; 
E1 = readmatrix( [ root 'Rodamina4 (QY).csv' ] );


figure(); 
plot(E1(25:end, 1), E1(25:end, 2), "r", E1(25:end, 1), E1(25:end, 3), "b");
title('Rd Muestra y Solvente');
xlabel('Wavelength (nm)');
ylabel('I(λ)')
legend('Muestra', 'Solvente')

%% Cargamos los datos
root = 'D:\Documents\Ingenieria fisica\Levitador\Rodamina\Rodamina6G\'; 
E1 = readmatrix( [ root 'QY.csv' ] );

% Ploteo de la muestra y solvente
figure(); 
plot(E1(2:end, 1), E1(2:end, 2), "r", E1(2:end, 1), E1(2:end, 3), "b");
title('Rd muestra y solvente');
xlabel('Energy');
ylabel('I')
legend('muestra', 'solvente','Location','northwest')

%% Calculo de la integral
Integral_muestra = trapz(E1(2:end, 1), E1(2:end, 2));
Integral_solvente = trapz(E1(2:end, 1), E1(2:end, 3));


