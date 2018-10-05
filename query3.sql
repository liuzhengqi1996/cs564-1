SELECT COUNT(*)
FROM ( 
    SELECT *
    FROM Category
    GROUP BY ItemID
    HAVING COUNT(Category) = 4
);
