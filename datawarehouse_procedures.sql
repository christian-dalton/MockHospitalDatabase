USE Mock_Healthcare; 
GO 
--CREATING THE STORED PROCEDURES 
 
 
 
--CREATING A PROCEDURE TO DO INCREMENTAL UPDATES IN THE dwDateDim 
ALTER PROC fillDates 
(@StartDate DATE, @EndDate DATE) 
AS 
BEGIN 
WHILE @StartDate <= @EndDate 
BEGIN 
INSERT INTO dwDateDim 
VALUES ( 
@StartDate, --RawDate 
DATENAME(WEEKDAY, @StartDate), --DayOfTheWeek 
DATENAME(MONTH, @StartDate), --MonthOfTheYear 
CONCAT('Q', DATEPART(QUARTER, @StartDate),'-',YEAR(@StartDate)), -- QuarterOfTheYear 
YEAR(@StartDate), -- YearNumber 
getDate() 
); 
SET @StartDate = DATEADD(DAY, 1, @StartDate); 
END; 
END; 
GO 
EXEC fillDates @StartDate = '1/1/2020', @EndDate = '1/1/2023'; 
GO 
  
 
--CREATING A PROCEDURE TO DO INCREMENTAL UPDATES IN THE dwIncidentDim 
ALTER PROC fillIncidents 
AS 
BEGIN 
INSERT INTO dwIncidentDim 
SELECT IncidentID, Incident, Response, getDate() 
FROM Incidents 
WHERE IncidentID NOT IN (SELECT IncidentID FROM dwIncidentDim); 
END; 
GO 
EXEC fillIncidents; 
GO 
  
 
--CREATING A PROCEDURE TO DO INCREMENTAL UPDATES IN THE dwDepAgg 
ALTER Proc DepAggDim 
AS 
BEGIN 
Insert into dwDepAgg 
Select d.DepartmentID, Count(e.EmpID), Count(Ve.Room), Count(Ve.VisitID), GETDATE() 
from Departments d join VisitEvent ve 
on D.DepartmentID=ve.DepartmentID 
join VisitEmp v 
on ve.VisitID=v.VisitID 
join Employees e 
on v.EmpID=e.EmpID 
Where d.departmentID NOT IN (Select DepartmentID from dwDepAgg) 
Group by d.DepartmentID 
End;  
GO 
EXEC DepAggDim; 
GO 
 
 --Creating fillEventFacts stored procedure
ALTER PROC [dbo].[fillEventFacts]
AS
BEGIN
INSERT INTO dwEventFacts
SELECT VisitID, PatientID, IncidentID, Room, dbo.DateToID(AdmitTime), DepartmentID, getDate()
FROM VisitEvent
WHERE VisitID NOT IN (SELECT VisitID FROM dwEventFacts);
END;
GO

EXEC fillEventFacts;
GO;
 

--SELECT * FROM [dbo].[dwDateDim]; 
--SELECT * FROM [dbo].[dwDepAgg]; 
--SELECT * FROM [dbo].[dwIncidentDim]; 
--SELECT * FROM [dbo].[dwIncidentDim]; 
--SELECT * FROM [dbo].[dwPatientDim]; 
 
--SELECT * FROM [dbo].[dwEventFacts]; 
 
 
 
--CREATING A Function To change admit date to the appropriate date ID 
ALTER FUNCTION DateToID 
(@AdmitDate DATE) 
RETURNS INT 
AS 
BEGIN 
DECLARE @AdmitDateID INT; 
SELECT @AdmitDateID = DateID 
FROM dwDateDim 
WHERE RawDate = @AdmitDate; 
RETURN @AdmitDateID; 
END; 
GO 
  
  
--Trigger for the assignment 
ALTER TRIGGER PatientChanges ON Patients--TriggerName ON Table that when changes happen trigger to a different table 
AFTER UPDATE 
AS 
BEGIN 
    ALTER TABLE dwEventFacts--Table to suspend Ref Integrity on (Most likely facts table, as all dw tables need to be suspended when modified because of FK in facts table) 
    NOCHECK CONSTRAINT [FK__dwEventFa__Patie__4E3E9311] --FK code from the alter table that connects to the alter table to the table in DELETE FROM 
        DELETE FROM dwPatientDim --Table we want updated 
        WHERE PatientID IN (SELECT PatientID FROM INSERTED) --PK IN (SELECT PK FROM INSERTED) NOTE: The PK should be coming from the Table we set in Trigger 
            INSERT INTO dwPatientDim--Same as DELETE FROM table 
                SELECT PatientID, PatFName, PatLName, GETDATE()--All column values that goes into the new table 
                FROM Patients--Old table (CREATE TRIGGER table) 
                WHERE PatientID NOT IN (SELECT PatientID FROM dwPatientDim)--PRIMARY KEY NOT IN (SELECT PRIMARY KEY FROM new table); 
    ALTER TABLE dwEventFacts --Table we suspended Ref integirty on 
    CHECK CONSTRAINT [FK__dwEventFa__Patie__4E3E9311]--FK from NO CHECK CONSTRAINT 
END; 
GO 