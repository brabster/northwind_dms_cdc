BEGIN;
-- create new order 30017
INSERT INTO orders VALUES(30017, 'VINET', 5, CURRENT_DATE - INTERVAL '40' day, CURRENT_DATE - INTERVAL '3' day, NULL, 3, 32.3800011, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', NULL, '51100', 'France');
COMMIT;

BEGIN;
-- update pk
UPDATE orders SET order_id = 30018 WHERE order_id = 30017;
COMMIT;

BEGIN;
-- update pk again
UPDATE orders SET order_id = 30019 WHERE order_id = 30018;
COMMIT;

BEGIN;
-- update pk again
UPDATE orders SET order_id = 30020 WHERE order_id = 30019;
COMMIT;
