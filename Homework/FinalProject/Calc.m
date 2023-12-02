%% Current
function In = Calc_I_NMOS(ratio, vov)
    kn = 267.2e-6;
    In =  0.5*kn*ratio*vov^2;
end

function Ip = Calc_I_PMOS(ratio, vov)
    kp = 49.1e-6;
    Ip =  0.5*kp*ratio*vov^2;
end

%% gm

function gm = Calc_gm(current, vov)
    gm =  2*current / vov;
end

%% Vin
function vin = Calc_vin_NMOS(vov)
    vin = vov + 307.2e-3;
end

function vin = Calc_vin_PMOS(vov)
    vin = vov + 380.4e-3;
end

%% Convert dB to real unit
function real = dB_to_real(dB)
    syms x
    eqn = 20*log(x) == dB;
    real = solve(eqn, x);
end
