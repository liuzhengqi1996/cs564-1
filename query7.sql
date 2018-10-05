SELECT COUNT(*)
FROM Item I, Category C, Bid B
WHERE I.ItemID = C.ItemID
AND I.ItemID = B.ItemID
AND MAX(B.Amount) > 100
ORDER BY C.ItemID;
