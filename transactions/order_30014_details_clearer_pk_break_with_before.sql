BEGIN;
-- insert new order '30014'
INSERT INTO orders VALUES(30014,'VINET', 5, CURRENT_DATE - INTERVAL '40' day, CURRENT_DATE - INTERVAL '3' day, NULL, 3, 32.3800011, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', NULL, '51100', 'France');
COMMIT;

BEGIN;
-- insert an order detail for this order and product_id '1'
INSERT INTO order_details VALUES(30014,1,11,12,0);
COMMIT;

BEGIN;
-- insert an order detail for this order and product_id '2'
INSERT INTO order_details VALUES(30014,2,11,12,0);

-- update the order detail for product_id '1' to product_id '66'
UPDATE order_details SET product_id = 66 WHERE order_id = 30014 AND product_id = 1;

-- insert an order detail for this order and product_id '3'
INSERT INTO order_details VALUES(30014,3,11,12,0);
COMMIT;

BEGIN;
-- update the order details for product_id '2' to product_id '77'
UPDATE order_details SET product_id = 77 WHERE order_id = 30014 AND product_id = 2;
COMMIT;
