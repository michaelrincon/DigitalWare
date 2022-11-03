
/*Ejercicio 1*/
SELECT p.producto, p.nombre_producto,p.valor
FROM Productos AS p 
WHERE p.valor > 1000

/*Ejercicio 2*/
SELECT c.cliente, c.nombre_cliente, ca.total
FROM Clientes AS c INNER JOIN Cabeza_factura as ca ON c.cliente = ca.cliente

/*Ejercicio 3*/
SELECT ca.numero, c.nombre_cliente, ca.fecha, p.nombre_producto, de.cantidad, de.valor
FROM Clientes AS c INNER JOIN Cabeza_factura as ca ON c.cliente = ca.cliente
INNER JOIN Detalle_factura AS de ON ca.numero = de.numero
INNER JOIN Productos AS p ON de.producto = p.producto
WHERE ca.fecha between '20050101' and '20050331'

/*Ejercicio 4*/
SELECT c.cliente, c.nombre_cliente
FROM Clientes AS c LEFT OUTER JOIN Cabeza_factura as ca ON c.cliente = ca.cliente
WHERE ca.numero IS NULL

/*Ejercicio5*/
SELECT p.producto, p.nombre_producto, SUM(de.cantidad) as Total
FROM Detalle_factura AS de RIGHT OUTER JOIN Productos AS p ON de.producto = p.producto
GROUP BY p.nombre_producto, p.producto
ORDER BY P.nombre_producto