# Clase 5 - Visualizaciones

cars      # Tabla ya existente en R
carros <- cars

View(carros)
plot(x = carros$dist, y = carros$speed)   # graficar (ver Plots) plot basico

plot(x = carros$dist, 
     y = carros$speed,
     main = "Relacion entre velocidad y distancia de frenado",
     xlab = "Distancia de frenado",
     ylab = "Velocidad",
     col = 10 # escoger un tipo de color caliente de la paleta
     )
