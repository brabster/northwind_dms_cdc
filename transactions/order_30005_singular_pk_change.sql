BEGIN;
-- create new order 30005
INSERT INTO orders VALUES(30005, 'VINET', 5, CURRENT_DATE - INTERVAL '40' day, CURRENT_DATE - INTERVAL '3' day, NULL, 3, 32.3800011, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', NULL, '51100', 'France');
COMMIT;

BEGIN;
-- update order 30005 to be order 30006
UPDATE orders SET order_id = 30006 WHERE order_id = 30005
COMMIT;
