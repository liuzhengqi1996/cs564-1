SELECT ItemID
FROM (
    SELECT ItemID, MAX(Currently)
    FROM Item
);
