-- ejercicio de práctica
--BodegaTech - Script de Inventario
--Autor: Ignacio Esparza Iraola
--Fecha: 19/11/2026

--Sección DDL:
DROP TABLE IF EXISTS inventario;

CREATE TABLE inventario (
	id_inventario INT PRIMARY KEY,
	nombre_producto VARCHAR(100),
	categoria VARCHAR(100),
	precio_unitario DECIMAL(10,2), --se usa DECIMAL ya que se necesita saber el precio con precision, por eso se agregan los decimales.
	stock_actual INT, --se utiliza INT ya que el stock es en números enteros, no puede haber 0.8 unidades de algún producto, por ejemplo.
	stock_minimo INT,
	fecha_ingreso DATE, --se utiliza DATE ya que es el formato para guardar fechas.
	activo BOOLEAN
);

--Sección DML:
INSERT INTO inventario (id_inventario,nombre_producto,categoria,precio_unitario,stock_actual,stock_minimo,fecha_ingreso, activo)
VALUES
	(1,'Laptop Pro 15','Computación',1200.00,15,3,'2024-01-10',TRUE),
	(2,'Mouse Inalámbrico','Accesorios',28.00,80,10,'2024-01-10',TRUE),
	(3,'Monitor 4K 27','Computación',450.00,12,2,'2024-01-15',TRUE),
	(4,'Teclado Mecánico','Accesorios',95.00,40,5,'2024-01-15',TRUE),
	(5,'Laptop Basic 14','Computación',650.00,20,3,'2024-02-01',TRUE),
	(6,'Auriculares BT Pro','Audio',120.00,35,5,'2024-02-01',TRUE),
	(7,'Hub USB-C 7 puertos','Accesorios',45.00,60,10,'2024-02-10',TRUE),
	(8,'Webcam HD 1080p','Accesorios',85.00,25,5,'2024-02-10',TRUE),
	(9,'SSD Externo 1TB','Almacenamiento',130.00,18,3,'2024-03-01',TRUE),
	(10,'Parlante Bluetooth','Audio',60.00,45,8,'2024-03-01',TRUE);

--Acá veo que la tabla se haya creado correctamente y los valores se hayan insertado.
	SELECT * FROM inventario ORDER BY id_inventario;

--UPDATE ventas del día
--ejemplo: UPDATE productos SET precio = 10.99 WHERE id = 5;
UPDATE inventario SET stock_actual = stock_actual-3 WHERE id_inventario=1;
UPDATE inventario SET stock_actual = stock_actual-12 WHERE id_inventario=2;
UPDATE inventario SET stock_actual = stock_actual-5 WHERE id_inventario=6;

--UPDATE producto descontinuado
UPDATE inventario SET activo=FALSE WHERE id_inventario=8;

--SELECT validaciones
-- Ver la tabla completa para confirmar que los datos se cargaron
SELECT * FROM inventario;
--fin.
