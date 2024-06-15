-- this is how comments are written in SQL
BEGIN; -- order_id 19998: insert alone in transaction
INSERT INTO orders VALUES(19998,'VINET', 5, '1996-07-04', '1996-08-01', '1996-07-16', 3, 32.3800011, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', NULL, '51100', 'France');
COMMIT;

BEGIN; -- order_id 19998: update alone in transaction
UPDATE orders SET shipped_date = DATE '1996-07-17' WHERE order_id = 19998;
COMMIT;

BEGIN; -- order_id 19998: delete alone in transaction
DELETE FROM orders WHERE order_id = 19998;
COMMIT;
