CREATE VIEW [Dimension].[VDate]
AS
SELECT
[Date]
,[Day Number]
,[Day]
,[Month]
,[Calendar Month Number]
,[Calendar Month Label]
,[Calendar Year]
,[Calendar Year Label]
,[Fiscal Month Number]
,[Fiscal Month Label]
,[Fiscal Year]
,[Fiscal Year Label]
FROM [Dimension].[Date]
GO 

CREATE VIEW[Dimension].[VCustomer]
AS
SELECT[Customer Key]
,[WWI Customer ID]
,[Customer][Category],
 [Customer]
,[Bill To Customer]
,[Buying Group]
,[Primary Contact]
,[Postal Code]
,[Valid From]
,[Valid To]
FROM [Dimension].[Customer]
GO

CREATE VIEW [Dimension].[VCity]
AS
SELECT
       [City Key]
      ,[WWI City ID]
      ,[City]
      ,[State Province]
      ,[Country]
      ,[Continent]
      ,[Sales Territory]
      ,[Region]
      ,[Subregion]
      ,[Location]
      ,[Valid From]
      ,[Valid To]
 FROM [Dimension].[City] 
 GO    

 CREATE VIEW [Dimension].[VEmployee]
 AS
 SELECT 
      [Employee Key]
      ,[WWI Employee ID]
      ,[Employee]
      ,[Preferred Name]
      ,[Is Salesperson]
	  ,[Valid From]
      ,[Valid To]
FROM [Dimension].[Employee]
GO

CREATE VIEW [Dimension].[VStock Item]
AS
SELECT
       [Stock Item Key]
      ,[WWI Stock Item ID]
      ,[Stock Item]
      ,[Color]
      ,[Selling Package]
      ,[Buying Package]
      ,[Brand]
      ,[Size]
      ,[Lead Time Days]
      ,[Quantity Per Outer]
      ,[Is Chiller Stock]
      ,[Barcode]
      ,[Tax Rate]
      ,[Unit Price]
      ,[Recommended Retail Price]
      ,[Typical Weight Per Unit]
      ,[Valid From]
      ,[Valid To]
      ,[Lineage Key]
FROM [Dimension].[Stock Item]
GO

CREATE VIEW [Dimension].[VSupplier]
AS
SELECT 
       [Supplier Key]
      ,[WWI Supplier ID]
      ,[Supplier]
      ,[Category]
      ,[Primary Contact]
      ,[Supplier Reference]
      ,[Payment Days]
      ,[Postal Code]
      ,[Valid From]
      ,[Valid To]
      ,[Lineage Key]
  FROM [Dimension].[Supplier]
GO

CREATE VIEW [Dimension].[VTransaction Type]
AS 
SELECT
       [Transaction Type Key]
      ,[WWI Transaction Type ID]
      ,[Transaction Type]
      ,[Valid From]
      ,[Valid To]
      ,[Lineage Key]
  FROM [Dimension].[Transaction Type]
GO

CREATE VIEW [Fact].[VFOrder]
AS
SELECT
 [Order Key]
      ,[City Key]
      ,[Customer Key]
      ,[Stock Item Key]
      ,[Order Date Key]
      ,[WWI Order ID]
      ,[WWI Backorder ID]
      ,[Description]
      ,[Package]
      ,[Quantity]
      ,[Unit Price]
      ,[Tax Rate]
      ,[Total Excluding Tax]
      ,[Tax Amount]
      ,[Total Including Tax]
      ,[Lineage Key]
  FROM [Fact].[Order]
GO

CREATE VIEW [Fact].[VFMovement]
AS
SELECT
 [Movement Key]
      ,[Date Key]
      ,[Stock Item Key]
      ,[Customer Key]
      ,[Supplier Key]
      ,[Transaction Type Key]
      ,[WWI Stock Item Transaction ID]
      ,[WWI Invoice ID]
      ,[WWI Purchase Order ID]
      ,[Quantity]
      ,[Lineage Key]
  FROM [Fact].[Movement]
GO

CREATE VIEW [Fact].[VFPurchase]
AS
SELECT
 [Purchase Key]
      ,[Date Key]
      ,[Supplier Key]
      ,[Stock Item Key]
      ,[WWI Purchase Order ID]
      ,[Ordered Outers]
      ,[Ordered Quantity]
      ,[Received Outers]
      ,[Package]
      ,[Is Order Finalized]
      ,[Lineage Key]
  FROM [Fact].[Purchase]
GO

CREATE VIEW [Fact].[VFSale]
AS
SELECT  [Sale Key]
      ,[City Key]
      ,[Customer Key]
      ,[Bill To Customer Key]
      ,[Stock Item Key]
      ,[Invoice Date Key]
      ,[Delivery Date Key]
      ,[Salesperson Key]
      ,[WWI Invoice ID]
      ,[Description]
      ,[Package]
      ,[Quantity]
      ,[Unit Price]
      ,[Tax Rate]
      ,[Total Excluding Tax]
      ,[Tax Amount]
      ,[Profit]
      ,[Total Including Tax]
      ,[Total Dry Items]
      ,[Total Chiller Items]
      ,[Lineage Key]
  FROM [Fact].[Sale]
GO

CREATE VIEW [Fact].[VFStock Holding]
AS
SELECT [Stock Holding Key]
      ,[Stock Item Key]
      ,[Quantity On Hand]
      ,[Bin Location]
      ,[Last Stocktake Quantity]
      ,[Last Cost Price]
      ,[Reorder Level]
      ,[Target Stock Level]
      ,[Lineage Key]
  FROM [Fact].[Stock Holding]
GO

Drop view [Dimension].[VCustomer]