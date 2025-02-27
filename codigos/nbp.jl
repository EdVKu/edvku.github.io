# masas de los cuerpos 
# (en kg)

M_1 = 1e5
M_2 = 1e10

# velocidad angular inicial, distancia radial, y cambio de distancia radial 
# respecto al tiempo
# (en radianes, m, m/s)

w, rho, rdo = 1e-3, 1e7, 0

t, h, N = 0, 1e-3, 1e5

# constante gravitacional
# (en m^3 kg^-1 s^-2)
G = 6.67408e-11

# masa reducida
mu = M_1*M_2/(M_1+M_2)

# momento angular
Lo = mu*rho^2*w

# Cambio de coordenadas polares a cartesianas
xy(r, t) = [r*cos(t), r*sin(t)]

# todas las ecuaciones de movimiento (recordemos que vρ es una variable que extraeremos de manera iterativa)
function rdd(r)
    Lo^2/(r^3*mu^2) - (G*(M_1 + M_2))/(r^2)
end

function thd(r)
    Lo/(r^2*mu)
end

function thdd(r, rd)
    -(2*Lo*rd)/(mu*r^3)
end


#so = [t, θ, ρ, ̇ρ]
#son las condiciones iniciales para el sistema de dos cuerpos
so = [t, 0, rho, rdo]
xyto = [xy(rho,0); t]
s3 = xyto


while t<h*(N)
    s = so
    dρ_12 = s[4] + h/2*rdd(s[3])
    ρ_1 = s[3] + h*dρ_12
    dρ_1 = dρ_12 + h/2*ρ_1
    θ_1 = s[2] + h*thd(ρ_1)
    global t += h
    s2 = [t, θ_1, ρ_1, dρ_1]

    global so = s2
    xyt = [xy(ρ_1,θ_1); t]
    global s3 = [[s3]; [xyt]]
end



