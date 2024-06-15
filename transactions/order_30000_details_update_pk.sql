-- update the composite key in the order_details table

BEGIN;
INSERT INTO orders VALUES(30000,'VINET', ... '51100', 'France');
INSERT INTO order_details VALUES(30000,1,11,12,0);
UPDATE order_details SET quantity = 1 WHERE order_id = 30000;
UPDATE order_details SET product_id = 77 WHERE order_id = 30000;
COMMIT;
