SELECT COUNT(*)
FROM Seller, Bidder 
WHERE Seller.UserID = Bidder.UserID;
