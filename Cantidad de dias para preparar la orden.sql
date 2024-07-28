USE AdventureWorks2019
GO

--Se requiere saber la cantidad de dias para preparar la orden para cada producto

SELECT pp.ProductID, pp.Name, pwo.WorkOrderID, DATEDIFF(DAY, StartDate, EndDate) AS dias_para_prepar_oden
FROM production.WorkOrder pwo
INNER JOIN Production.Product pp
ON pwo.ProductID = pp.ProductID