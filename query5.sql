SELECT COUNT(*)
FROM Seller
Where Rating>1000
GROUP BY Seller.UserID
