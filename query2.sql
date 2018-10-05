SELECT
(SELECT COUNT(*) UserID FROM Seller WHERE Location = "New York")
+
(SELECT COUNT(*) UserID FROM Bidder WHERE Location = "New York")
-
(SELECT COUNT(*) FROM Seller S, Bidder B
WHERE S.UserID = B.UserID
AND Location = "New York");
