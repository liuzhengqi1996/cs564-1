SELECT
(SELECT COUNT(*) UserID FROM Seller)
+
(SELECT COUNT(*) UserID FROM Bidder)
-
(SELECT COUNT(*) FROM Seller S, Bidder B
WHERE S.UserID = B.UserID);
