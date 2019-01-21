USE AdventureWorks2014
GO

ALTER PROCEDURE dbo.uspGetProductInfo @Quantity INT = NULL, @Name nvarchar(50) = NULL
AS

SELECT * FROM [Production].[ProductInventory] 
INNER JOIN Production.ProductCategory ON Production.ProductCategory.ProductCategoryID = Production.ProductInventory.ProductID
INNER JOIN Production.ProductDescription ON Production.ProductDescription.ProductDescriptionID = Production.ProductInventory.ProductID	
WHERE Production.ProductInventory.Quantity <= ISNULL(@Quantity,[Production].[ProductInventory].Quantity)
AND 
Production.ProductCategory.Name = ISNULL (@Name,[Production].[ProductCategory].Name)


EXEC uspGetProductInfo @Name = 'Clothing', @Quantity = 585