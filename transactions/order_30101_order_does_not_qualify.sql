-- simulates queuing of statements in a transaction as user makes edits
BEGIN;
-- only one day between order and required - does not qualify for promotion
INSERT INTO orders VALUES(30101,'VINET', 5, '1996-07-04', '1996-07-05', NULL, 3, 32.3800011, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', NULL, '51100', 'France');
COMMIT;

BEGIN;
-- user updates the required date - now qualifies for promotion if shipped
UPDATE orders SET required_date = '1996-08-25' WHERE order_id = 30101;
COMMIT;

BEGIN;
-- user updates the required date - does not qualify for promotion if shipped
UPDATE orders SET required_date = '1996-07-20' WHERE order_id = 30101;
COMMIT;

BEGIN;
-- user sets the shipped_date - order does not qualify for promotion
UPDATE orders SET shipped_date = '1996-08-01' WHERE order_id = 30101;
COMMIT;
