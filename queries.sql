CREATE TABLE clientes (
    id_cliente INTEGER PRIMARY KEY,
    nombre TEXT,
    pais TEXT
);

CREATE TABLE productos (
    id_producto INTEGER PRIMARY KEY,
    nombre_producto TEXT,
    categoria TEXT,
    precio REAL
);

CREATE TABLE ventas (
    id_venta INTEGER PRIMARY KEY,
    id_cliente INTEGER,
    id_producto INTEGER,
    monto REAL,
    fecha TEXT
);

-- Consultas
SELECT * FROM clientes;
SELECT * FROM productos;
SELECT * FROM ventas;

SELECT id_cliente, SUM(monto) AS total_compras
FROM ventas
GROUP BY id_cliente
ORDER BY total_compras DESC;
