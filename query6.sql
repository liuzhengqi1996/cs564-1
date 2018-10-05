SELECT COUNT(*)
FROM Seller S, Bidder B
WHERE S.UserID = B.UserID;