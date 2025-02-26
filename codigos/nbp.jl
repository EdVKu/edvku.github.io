# masas de los cuerpos 
# (en kg)

M_1 = 1e5
M_2 = 1e10

# velocidad angular inicial, distancia radial, y cambio de distancia radial 
# respecto al tiempo
# (en radianes, m, m/s)

w, rho, rdo = 1e-3, 1e7, 1.25452e-2

# constante gravitacional
# (en m^3 kg^-1 s^-2)
G = 6.67408e-11

# masa reducida
mu = M_1*M_2/(M_1+M_2)

# momento angular
Lo = mu*rho^2*w

# Cambio de coordenadas polares a cartesianas
function xy(r, t)
    [r*cos(t), r*sin(t)]
end

# todas las ecuaciones de movimiento (recordemos que vρ es una variable que extraeremos de manera iterativa)
function rdd(r)
    Lo^2/(r^3*mu^2) - (G*(M_1 + M_2))/(r^3)
end

function thd(r)
    Lo^2/(r^4*mu^2)
end

function thdd(r, rd)
    -(2*Lo*rd)/(mu*r^3)
end


#so = [t, θ, ρ, ̇ρ, ̈ρ, dot(θ), ddot(θ)]
#son las condiciones iniciales para el sistema de dos cuerpos
so = [0, 0, rho, rdo, rdd(rho),thd(rho),thdd(rho, rdo)]