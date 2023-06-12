-- 코드를 입력하세요
SELECT p.PRODUCT_CODE, p.PRICE * SUM(SALES_AMOUNT) AS SALES 
FROM PRODUCT p JOIN OFFLINE_SALE o 
ON p.PRODUCT_ID = o.PRODUCT_ID 
GROUP BY PRODUCT_CODE 
ORDER BY SALES DESC, PRODUCT_CODE ASC;