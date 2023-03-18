#-------------------LABORATORIO 51-----------------------------------------
# Hecho con gusto por Carla Carolina Pérez Hernández (UAEH)
#V8
#--------------Alumna: Ana Grisel Sanjuan Merida----------------------------
#LABORATORIO - Gráficos en R con ggplot2 para Ciencia de Datos
#Editando el color de los gráficos (PARTE 1)

#Instalando paquete con los datos
install.packages("gapminder")
install.packages("ggplot2")

#Cargar libreria ggplot2 y gapminder
library(ggplot2)
library(gapminder)

#Cargando datos a entorno
data("gapminder")

#Filtrando por año 2007
gapminder2007 <- gapminder[gapminder$year == '2007', ]

#¿De dónde sacar colores?
#http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf
#Guía de colores dentro de R

#Escala discreta
#Haciendo grafica de puntos por continente
#Gráfico 1
g1 <- ggplot(data = gapminder2007,
             mapping = aes(x = gdpPercap,
                           y = lifeExp,
                           color = continent)) +
  geom_point()

#ver g1
g1

#Haciendo boxplot en continentes
g2 <- ggplot(data = gapminder2007,
             mapping = aes(x = continent, 
                           y = lifeExp,
                           fill = continent)) +
  geom_boxplot()

#ver g1
g2

#Cambiando el color de los continentes del gráfico g1
#Se llama al objeto g1 (gráfico de puntos)
#Se agrega capa scale_color
#Selección manual
#Se llenan los valores en diversos colores
g1 + scale_color_manual (values = c('cadetblue',
                                               'chartreuse',
                                               'firebrick',
                                               'gold',
                                               'darkorchid'))

#Cambiando el color de los continentes del gráfico g2
#Se llama al objeto g2 (gráfico de cajas bigotes)
#Se agrega capa completa scale_fill
#Selección manual
#Se llenan los valores en diversos colores                                              
g2 + scale_fill_manual (values = c('cadetblue',
                                              'chartreuse',
                                              'firebrick',
                                              'gold',
                                              'darkorchid'))
                                              
#Cambiando colores con paleta RColorBrewer
#Es una paleta predefinida
#Instalar RColorBrewer
install.packages('RColorBrewer')

#Se carga la librería
library(RColorBrewer)

#Para ver el tipo de paletas a las que se puede tener acceso
#Guardar como imagen width = 400, height = 800
display.brewer.all()

#Cambiando escala de color al objeto g1
g1 + scale_color_brewer(palette = "BrBg")

#Cambiando escala de color al objeto g2
g2 + scale_fill_brewer(palette = "Paired") 

#Cambiando a escala de grises el objeto g1
g1 + scale_color_grey()

#Cambiando a escala de grises el objeto g2
g2 + scale_fill_grey()


#-----------------------FIN LABORATORIO 51----------------------------------