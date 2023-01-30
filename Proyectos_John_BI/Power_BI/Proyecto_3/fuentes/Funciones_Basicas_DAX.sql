/*Contar empleados con DAX*/

Total Empleados = COUNT('Tabla Empleados'[ID Empleado])

/*Promedio Average*/
Seleccionamos nueva medida en la tabla que queremos trabajar.

Sueldo Prom = AVERAGE('Tabla Sueldo'[Sueldo])

Evaluacion Prom = AVERAGE('Tabla Evaluacion'[Evaluacion])

/*Calculo de edad*/

se hace uso de tres funciones de DAX, INT para castear, YEARFRAC, Obtiene la edad a partir de una fecha, TODAY(), Fecha Actual.

Edad = INT(YEARFRAC('Tabla Empleados'[Nacimiento],TODAY()))

/*Realización de columnas condicionales*/
Tabla Empleados - Nueva columna

Grupo Edad = 
IF('Tabla Empleados'[Edad] <= 30 , "20-30" ,
IF('Tabla Empleados'[Edad] <= 40, "30-40" ,
IF('Tabla Empleados'[Edad] <= 50 , "40-50" ,
IF('Tabla Empleados'[Edad] <= 60 , "50-60" ,
IF('Tabla Empleados'[Edad] <= 70 , "60-70" ,
"Mas 70"
)))))


En el siguiente módulo crearemos grupos de Sueldo y Evaluación en sus respectivas tablas.

Por favor intenta realizar las expresiones, en dado caso de no funcionar puedes compararlas  a continuación:



Tabla Sueldo - Nueva columna

Grupo Sueldo = 
IF('Tabla Sueldo'[Sueldo] <= 40000 , "0-40K" ,
IF('Tabla Sueldo'[Sueldo] <= 60000 , "40-60K" ,
IF('Tabla Sueldo'[Sueldo] <= 80000 , "60-80K" ,
IF('Tabla Sueldo'[Sueldo] <= 100000 , "80-100K",
"Mas 100K"
))))


Tabla Evaluación - Nueva columna

Grupo Evaluacion = 
IF('Tabla Evaluacion'[Evaluacion] <= 6 , "0-6" ,
IF('Tabla Evaluacion'[Evaluacion] <= 7 , "6-7" ,
IF('Tabla Evaluacion'[Evaluacion] <= 8 , "7-8" ,
IF('Tabla Evaluacion'[Evaluacion] <= 9 , "8-9" ,
"9-10"
))))