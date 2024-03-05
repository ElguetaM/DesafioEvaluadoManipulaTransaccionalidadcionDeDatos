CREATE TABLE IF NOT EXISTS INSCRITOS(cantidad INT, fecha DATE, fuente
VARCHAR);

INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 44, '01/01/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 56, '01/01/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 39, '01/02/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 81, '01/02/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 12, '01/03/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 91, '01/03/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 48, '01/04/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 45, '01/04/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 55, '01/05/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 33, '01/05/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 18, '01/06/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 12, '01/06/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 34, '01/07/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 24, '01/07/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 83, '01/08/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 99, '01/08/2021', 'Página' );

--Visualizar tabla con los datos actuales--
SELECT * FROM INSCRITOS;

--1.Contar total de registros // Se previsualiza un total de 16 registros--
SELECT COUNT(*) FROM INSCRITOS; 

--2.Suma total de inscritos // Hay un total de 774 inscritos--
SELECT SUM(cantidad) FROM INSCRITOS; 

--3.Buscamos la fecha más antigua // Se obtiene '2021-01-01'--
SELECT MIN(fecha) FROM INSCRITOS; 

--Muestra los registros de mayor antigüedad // Junto al dato anterior obtenemos que Blog y Pagina son los registros de mayor antigüedad--
SELECT fecha, fuente FROM INSCRITOS WHERE fecha = '2021-01-01'; 

--4.Muestra la suma de inscritos por día // Obtendríamos fecha e inscritos por día siendo; "2021-02-01" = 120 |"2021-08-01" = 182 |"2021-05-01"= 88 |"2021-04-01" = 93 |"2021-06-01" = 30 |"2021-07-01" = 58 |"2021-03-01" = 103 |"2021-01-01" = 100--
SELECT fecha, SUM(cantidad) FROM INSCRITOS GROUP BY fecha; 

--5.Muestra el día que tiene más inscritos// Se previsualiza la misma tabla de antes pero está ordenada de forma descendente y con límite de 1 mostrandonos que el día "2021-08-01" tuvo la mayor cantidad de inscritos, siendo un total de 182--
SELECT fecha, SUM(cantidad) FROM INSCRITOS GROUP BY fecha ORDER BY SUM(cantidad)DESC limit 1;