# PROBLEMA TABLA DE DECISIÓN --------------------------------------------------

### Enunciado --------------------------------------------------------------

# Se tiene la siguiente matriz de decisión:

#                                      e1  e2  e3
#                                 d1 | 15  25  35
#                                 d2 | 10  30  50
#                                 d3 | 20  28  30
#                                 d4 | 12  22  27

# Aplicar los  distintos métodos de decisión bajo 
# incertidumbre para resolver el problema, tanto para el caso favorable (beneficios) como para 
# el caso desfavorable (costos).


### Solución ---------------------------------------------------------------

source("teoriadecision_funciones_incertidumbre.R")

tabla_4 = crea.tablaX(c(15, 25, 35,  
                        10, 30, 50,  
                        20, 28, 30,  
                        18, 22, 27) , numalternativas = 4, numestados = 3)
tabla_4

## Utilizaremos la función solución creada para el problema 1

#### Favorables ----------------------------------------------------------------

##### Hurwicz ------------------------------------------------------------------

solucion(criterio.Hurwicz(tabla_4))

##### Hurwicz General ----------------------------------------------------------

solucion(criterio.Hurwicz.General(tabla_4))

##### Laplace ------------------------------------------------------------------

solucion(criterio.Laplace(tabla_4))

##### Optimista ----------------------------------------------------------------

solucion(criterio.Optimista(tabla_4))

##### PuntoIdeal ---------------------------------------------------------------

solucion(criterio.PuntoIdeal(tabla_4))

##### Savage -------------------------------------------------------------------

solucion(criterio.Savage(tabla_4))


#### Desfavorables -------------------------------------------------------------


##### Hurwicz ------------------------------------------------------------------

solucion(criterio.Hurwicz(tabla_4, favorable = F))

##### Hurwicz General ----------------------------------------------------------

solucion(criterio.Hurwicz.General(tabla_4, favorable = F))

##### Laplace ------------------------------------------------------------------

solucion(criterio.Laplace(tabla_4, favorable = F))

##### Optimista ----------------------------------------------------------------

solucion(criterio.Optimista(tabla_4, favorable = F))

##### PuntoIdeal ---------------------------------------------------------------

solucion(criterio.PuntoIdeal(tabla_4, favorable = F))

##### Savage -------------------------------------------------------------------

solucion(criterio.Savage(tabla_4, favorable = F))



# PROBLEMA SITUACIÓN REAL -----------------------------------------------------

### Enunciado ---------------------------------------------------------------

# Supongamos que una empresa debe decidir en cuál de tres proyectos (P1, P2, P3) invertir, 
# pero las condiciones futuras del mercado son inciertas. Existen cuatro posibles escenarios económicos: 
# Recesión, Estabilidad, Crecimiento moderado y Crecimiento elevado. 
# Los beneficios estimados para cada proyecto, dependiendo del escenario económico, 
# están dados en millones de dólares en la siguiente tabla:

#                     Recesión  Estabilidad  Crecimiento moderado  Crecimiento elevado
#       Proyecto 1. |    2           6                10.                  12
#       Proyecto 2  |    4           8                 6                    8
#       Proyecto 3  |   -1           5                15                   20
#


### Solución ----------------------------------------------------------------

# Primero, creamos la matriz del problema.

tabla_8 = crea.tablaX(c(2, 6, 10, 12,  
                       4, 8, 6, 8,     
                       -1, 5, 15, 20) , numalternativas = 3, numestados = 4)
tabla_8

# Resolvemos mediante todos los métodos a la vez.

criterio.Todos(tabla_8, favorable = T)

# Solución:

#  -   El Proyecto 3 es la alternativa óptima según los criterios Optimista, Hurwicz, Savage, Laplace y Punto Ideal.

#  -   El Proyecto 2 es la alternativa óptima únicamente según el criterio de Wald.

#  -   El Proyecto 1 no es óptima según ninguno de los criterios aplicados.

# Dado que el Proyecto 3ves la alternativa óptima en la mayoría de los criterios de decisión 
# (Optimista, Hurwicz, Savage, Laplace y Punto Ideal), 
# se recomienda a la empresa optar por invertir en este proecto. 
# Dicho proyecto maximiza las expectativas de beneficios bajo diversas perspectivas de incertidumbre.
