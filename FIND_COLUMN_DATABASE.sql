USE NewgenDB; -- Replace with your actual database name
GO

SELECT 
    t.name AS Table_Name,
    c.name AS Column_Name
FROM 
    sys.tables t
INNER JOIN 
    sys.columns c ON t.object_id = c.object_id
WHERE 
    c.name LIKE '%Fulfill%'
	and t.name LIKE '%SME%'
ORDER BY 
    Table_Name, Column_Name;

