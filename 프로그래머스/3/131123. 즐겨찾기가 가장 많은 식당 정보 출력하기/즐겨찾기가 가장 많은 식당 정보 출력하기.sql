-- 코드를 입력하세요
SELECT FOOD_TYPE, REST_ID, REST_NAME, FAVORITES
FROM REST_INFO AS r1
WHERE FAVORITES = (SELECT MAX(FAVORITES) FROM REST_INFO AS r2
                  WHERE r1.FOOD_TYPE = r2.FOOD_TYPE)
GROUP BY FOOD_TYPE
ORDER BY FOOD_TYPE DESC