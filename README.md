# Prueba 2 de rails
## Backend

## Tips para tener éxito en la prueba.
- Leer la prueba completa antes de empezar.
- Dibujar el modelo de datos y tenerlo a mano en todo momento.
- Comparar el modelo a mano con el de railroady es buena idea para detectar errores de modelado
- No se necesita contestar toda la prueba, concentrarse en incluir la mayor cantidad de ítemes funcionales posibles, empezar por los que sean más fáciles.
- No contestar preguntas a medias, sólo en escasas excepciones tienen puntos.
Se puede utilizar internet, google, stackoverflow, blogs, y material previo del curso, etc
- Copia de código a compañeros será castigada con nota 0.
- El código debe ser súbido a Github y el link de Github a la plataforma empieza.
- La prueba empieza a las 7pm termina a las 10pm hora chile, no se revisarán commits posterior a esa hora.
- Cada item funcional (requisito) vale un punto, la suma total de puntos equivale al 100% o nota 10.
- Para aprobar realizar al menos el 50% de lo pedido.
- Llegar 15 minutos antes de que empieze la prueba (6:45)

## Comienza la prueba
Una empresa dedicada al cambio de neumáticos necesita un sistema de gestión y control. Se acuerda con la empresa que nuestro primer entregable será el modelo de datos capaz de gestionar las operaciones básicas del negocio, que principalmente consisten en llevar registro del inventario,trabajadores y operaciones de la empresa

### Configuración con postgres (1 pto)
* Crear una aplicación nueva con postgres, el nombre de la base de datos para test y para development debe ser prueba2_tunombre

### Lógica a nivel de base de datos (2 ptos)
* Construir el modelo de inventario, dentro del inventario en la etapa inicial solo guardaremos ítems del tipo rueda. Cada item que se guarda en la tabla inventarios se hace por número de serie (Además de la PK) y además se debe guardar el tamaño de la rueda (un integer) y una descripción genérica.
* Dentro de la migración se debe validar que el número de serie es único y no debe ser nulo

### Lógica a nivel de de modelo (3 ptos)
* Construir el modelo de trabajadores, estos serán los usuarios de las plataforma, del trabajador se debe guardar el nombre y el email
* Validar a nivel de modelo que el nombre esté presentes
* Realizar un test para validar que no se puede ingresar un operador sin nombre

### Relaciones 1 a n (3 ptos)
* Construir el modelo de operaciones donde se registrará quien hizo el trabajo y por lo mismo se debe hacer la referencias (fks) al trabajador respectivo
* Establecer la relaciones has_many donde corresponda
* Hacer los fixtures para dos trabajadores y 3 operaciones.
* Realizar un test que nos asegure que de una operación podamos obtener al usuario responsable.

### Relaciones 1 a 1 (4 ptos) 

*Cada operación tiene registrada un item del inventario utilizado, por lo mismo debemos guardar en la base de datos la información del item del inventario utilizado en la operación, la clave foránea se puede agregar por cualquiera de los dos lados, pero sólo se debe agregar en uno de ellos.
* Establecer la relación belongs_to y has_one. (se debe tener cuidado de que lado ponerlas)
* Realizar un test que nos asegure que de una operación podamos obtener el item de inventario utilizada.
* Realizar un test que nos asegure que de una pieza de inventario podamos obtener la operación respectiva (si es que existe)
