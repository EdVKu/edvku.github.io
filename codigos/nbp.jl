# Extraemos paquetes de visualización



# masas de los cuerpos 
# (en kg)

M_1 = 2e30
M_2 = 5.97e24

# velocidad angular inicial, distancia radial, y cambio de distancia radial 
# respecto al tiempo
# (en radianes, m, m/s)

w, rho, rdo = (2*pi)/(365.25*24*3600), 1.5e11, 0

t, h, N = 0, 1e0, 365.25*24*3600

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


#so = [t, θ, ρ]
#son las condiciones iniciales para el sistema de dos cuerpos

x0 = rho + rdo*h + 1/2*rdd(rho)*h^2
θ0 = h*thd(rho)
so = [[t, 0, rho],[t+h, θ0, x0]]
# xyto = [mu/M_1*xy(rho,0); t]
s3 = so
t+=2*h
while t<h*(N)
    s = so 
    ls = last(s,2)
    ρ_1 = (2*ls[2][3] - ls[1][3] + rdd(ls[2][3])*h^2/2)
    θ_1 = ls[1][2] + h*thd(ρ_1)
    global t += h
    s2 = [ls[1],[t, θ_1, ρ_1]]

    global so = s2
    # xyt = [mu/M_1*xy(ρ_1,θ_1); t]
    push!(s3, last(s2))
end

print(last(s3,4))