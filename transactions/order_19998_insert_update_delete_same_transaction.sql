BEGIN; -- order_id 19998: insert, update, delete. Effectively a no-op as the row ends up deleted
INSERT INTO orders VALUES(19998,'VINET', 5, '1996-07-04', '1996-08-01', '1996-07-16', 3, 32.3800011, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', NULL, '51100', 'France');
UPDATE orders SET shipped_date = DATE '1996-07-17' WHERE order_id = 19998;
DELETE FROM orders WHERE order_id = 19998;
COMMIT;
