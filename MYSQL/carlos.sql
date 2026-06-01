CREATE DATABASE tiendita;
use tiendita;
CREATE TABLE productos(
	id_producto INT primary Key auto_increment,
	nombre_producto VARCHAR (50),
    descripcion_producto VARCHAR (200),
    precio_venta_producto Decimal (18),
    activo_producto boolean
    

);
use tiendita;
SELECT * From productos; -- READ (Leer)

INSERT INTO productos (nombre_producto, descripcion_producto, precio_venta_producto, activo_producto)
VALUES ("Colgate","Crema dental blanqueadora",4500,1); -- CREATE (Crear masivo)

INSERT INTO productos (nombre_producto, descripcion_producto, precio_venta_producto, activo_producto)
VALUES 
("Aguila Roja","Cafe instantaneo",2600,1),
("Headshoulder","Shampu para cabello",7000,1),
("Ramen","Sopa instantanea",5000,1),
("Condones","Preservativo",3500,1),
("Halls negros","Banana mentolada",600,1),
("Duracell","Pilas",5400,1),
("Margaritas de limon","Papas sabor limon",3500,1);

UPDATE productos -- UPDATE (actualizar tabla de datos)
SET nombre_producto = "Margaritas de pollo"
WHERE id_producto = 10;

delete from productos -- Delete (borrar producto)
WHERE id_producto = 7;

create table proveedores(
	id_proveedores INT primary Key auto_increment,
    nombre_proveedores VARCHAR (50),
    nombre_producto	VARCHAR (50),
    descripcion_producto VARCHAR (200),
    valor_unitario Decimal (18),
    valor_al_mayor	Decimal (18),
    activo_producto	boolean
    
);

SELECT * From proveedores; -- READ (Leer
alter table proveedores
add telefono_proveedor VARCHAR (20) AFTER nombre_proveedores;

INSERT INTO proveedores (nombre_proveedores, telefono_proveedor, nombre_producto, descripcion_producto, valor_unitario, valor_al_mayor, activo_producto)
VALUES
("Geforce",3207548527,"TargetaRTX","Targeta de video",1100000,10000000,1)
