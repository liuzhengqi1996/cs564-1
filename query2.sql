SELECT
(SELECT COUNT(*) UserID FROM Item
WHERE Location LIKE '%New York%')
+
(SELECT COUNT(*) UserID FROM Bidder
WHERE Location LIKE '%New York%')
-
(SELECT COUNT(*) FROM Item I, Bidder B
WHERE I.Location LIKE '%New York%'
AND B.Location LIKE '%New York%'
AND I.UserID = B.UserID);
