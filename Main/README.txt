AA3-ReadMe

Que es nuestra práctica:

La base de nuestra práctica es el famoso clip de Elmillor de "Baron Baron Baron" donde se queja de que su equipo no se dirije al Baron, en nuestro juego nos ponemos en la piel de Fiddle el cual tiene el objetivo de llegar a la zona del Baron donde esta Elmillor para ayudarlo ha matarlo.
Aunque el recorrido hacía el Baron esta lleno de enemigos que estan dispuesto a matar a fiddle y evitar que Elmillor pueda hacerse el Baron, pero gracias a las habilidades de fiddle este es capaz de luchar contra ellos en forma de combate Pokemon.
Todas las interacciones se hacen pulsando el mouse ya sea para decidir donde moverse o decidir que ataque hacer
Los ataques del player son:
	·Terror - Causa un 30% de daño al rival
	·Cosecha abundante - Causa un 20% de daño y te cura un 20% 
	·Segar - Causa un 10% de daño y silencias al enemigo (no ataca ese turno)
	·Tormenta de Cuervos - Causa un 60% de daño
Cada ataque tiene una cantidad de uso

Requisitos del enunciado:

-4 elementos vistos en Algebra:
	·Colision AABB (la detección con los enemigos y las colisiones con el entorno)
	·Particulas (ataques de los enemigos y el player durante las peleas, ej: el cuervo, las raices, el logo de Pixar...)
	·Path Finding (el player se mueve al pulsar el boton en un lugar de la pantalla, moviendose hasta esa posición)
	·Isometría (usamos la matriz de transición para distingir el fondo con lo interactuable en el juego)
	.Colision circulo (colisión con los circulos para acceder a otro parte del escenario)

-2 curvas
	·2 curvas de interpolación simple con 2 segmentos cada una(la primera se encuentra en la primera sala donde un enemigo se mueve a partir de esta, mientras que la segunda se encuentra en la tercera sala donde hay otro enemigo moviendose por esta)
	·1 curva de Bezier compuesta por 3 segmentos (esta curva se encuentra en la segunda sala donde se mueve el único enemigo de esa sala siguiendo la curva)
	(las curvas no estan dibujadas ya que son usadas para mover enemigos aunque existe la función pintar_curva() y pinta_curva() para poder ver el recorrido de estas)

-No tiene ninguna parecido con las anteriores prácticas

-Interacciones con el juego y duración:
	·Se puede interactuar para moverse a la vez que entrar en combate
	·Se interactua con los alrededores, habiendo colisiones con el entorno
	·En el combata el jugador elige que movimiento usar
	·El juego durá más de 30 segundos

-Nuestro práctica es un juego a la vez que un broma-meme

-Prestaciones técnicas
	·2 efectos de LUTs (el primer LUT aparece en la pelea contra Mordekaiser, el enemigo que se mueve con al curva de la primera sala y este consiste en el fondo de commbate con una tonalidad más azul, el segundo LUT esta en la pelea de Nocturne, el enemigo que hay en la segunda sala, el cual consite en un LUT del fondo en negro y blanco)

-Temáticas de la práctica
	·Homenaje a Pokemon (el sistema de combate esta inspirado en este)
	·Homenaje al LOL (los enemigos y habilidades a la vez que el meme del juego nacen del LOL)

Requisitos:

	·Librería de video para Processing 3
	·Librería de sonido SoundCloud
	·Se recomienda no tener muy alto el volumen

Repartición de la práctica:

	·Path Finding - Dani Muñoz
	·Colisiones AABB en el mapa - Dani Muñoz
	·Colisiones circulos - Dani Muñoz
	·Movimiento entre salas y creación de estas - Dani Muñoz
	·Menu principal - Dani Muñoz
	·Colisiones AABB en los combates - Marcos Ruiz
	·Los 5 combates - Marcos Ruiz
	·Particulas - Marcos Ruiz
	·Curvas - Marcos Ruiz
	·Luts - Marcos Ruiz
	·Audios - Marcos Ruiz 
	·Videos - Marcos Ruiz
	-Isometría - Dani y Marcos
