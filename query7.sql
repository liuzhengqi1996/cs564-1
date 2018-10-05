SELECT COUNT(*)
FROM (
    SELECT *
    FROM Bid M, Category N
    WHERE M.ItemID = N.ItemID
    AND M.Amount > 100
    GROUP BY N.Category
    HAVING COUNT(*) >= 1
);
