-- order_id 20001, insert and rollback

BEGIN;
INSERT INTO orders VALUES(20001,'VINET', 5, '1996-07-04', '1996-08-01', '1996-07-16', 3, 32.3800011, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', NULL, '51100', 'France');
ROLLBACK;
