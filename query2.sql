SELECT
(SELECT COUNT(*) UserID FROM Item
WHERE Location = "New York")
+
(SELECT COUNT(*) UserID FROM Bidder
WHERE Location = "New York")
-
(SELECT COUNT(*) FROM Item I, Bidder B
WHERE I.Location = "New York"
AND B.Location = "New York"
AND I.UserID = B.UserID);
