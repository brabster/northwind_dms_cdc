-- update the composite key in the order_details table

BEGIN;
INSERT INTO orders VALUES(30000,'VINET', 5, CURRENT_DATE - INTERVAL '40' day, CURRENT_DATE - INTERVAL '3' day, NULL, 3, 32.3800011, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', NULL, '51100', 'France');
INSERT INTO order_details VALUES(30000,1,11,12,0);
UPDATE order_details SET quantity = 1 WHERE order_id = 30000;
UPDATE order_details SET product_id = 77 WHERE order_id = 30000;
COMMIT;
