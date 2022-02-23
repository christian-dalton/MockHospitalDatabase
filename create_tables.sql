--SCRIPT TO CREATE TABLES 
USE Mock_Healthcare; 
GO 
 
--Creating the Jobs table 
CREATE TABLE Jobs 
(JobID INT IDENTITY(100, 1) PRIMARY KEY, 
 JobName VARCHAR(25) 
); 
GO 
--Creating the Employees table 
CREATE TABLE Employees 
(EmpID INT IDENTITY(1000, 1) PRIMARY KEY, 
 EmpFName VARCHAR(25), 
 EmpLName VARCHAR(25), 
 EmpPhone VARCHAR(12), 
 JobID INT REFERENCES Jobs(JobID) 
); 
GO 
  
--Creating the Buildings table 
CREATE TABLE Buildings 
(BuildingID INT IDENTITY (25,5) PRIMARY KEY, 
 BUildingName VARCHAR(30) 
); 
GO 
--Creating the Department table 
CREATE TABLE Departments 
(DepartmentID INT IDENTITY(100,10) PRIMARY KEY, 
 BuildingID INT REFERENCES Buildings(BuildingID), 
 DepFloor VARCHAR(3), 
 DepName VARCHAR(25) 
); 
GO 
--Creating the Incidents table 
CREATE TABLE Incidents 
(IncidentID INT IDENTITY(100000,1) PRIMARY KEY, 
 Incident VARCHAR(50), 
 Response VARCHAR(50) 
); 
GO 
--Creating the Medication table 
CREATE TABLE Medication 
(MedID INT IDENTITY(500, 1) PRIMARY KEY, 
 MedName VARCHAR(30), 
 MedType VARCHAR(30) 
); 
GO 
  
--Creating the Billing table 
CREATE TABLE Billing 
(BillingID INT IDENTITY(50000, 1) PRIMARY KEY, 
 BillingDate DATE, 
 TotalOwedAmount MONEY, 
 ZeroBalanceDate DATE 
); 
GO 
  
--Creating the Insurance table 
CREATE TABLE Insurance 
(InsuranceID INT IDENTITY(25000, 50) PRIMARY KEY, 
 PolicyNumber INT, 
 PolicyCompany VARCHAR(40), 
 PolicyHolder VARCHAR(50) 
); 
GO 
  
--Creating the Patients table 
CREATE TABLE Patients 
(PatientID INT IDENTITY(1000000, 10) PRIMARY KEY, 
 PatFName VARCHAR(25), 
 PatLName VARCHAR(25), 
 BirthDate DATE, 
 Race VARCHAR(40), 
 Sex CHAR(1), 
 BloodType VARCHAR(20), 
 InsuranceID INT REFERENCES Insurance(InsuranceID), 
 PatAddress VARCHAR(75), 
 PatPhone VARCHAR(12) 
); 
GO 
  
--Creating the AmtPaid table 
CREATE TABLE AmtPaid 
(AmtPaidID INT IDENTITY(100, 1) PRIMARY KEY, 
 BillingID INT REFERENCES Billing(BillingID), 
 InsuranceID INT REFERENCES Insurance(InsuranceID), 
 InsPaid MONEY, 
 PatientPaid MONEY, 
 PaidDate DATE 
); 
GO 
  
--Creating the VisitEventd table 
CREATE TABLE VisitEvent 
(VisitID INT IDENTITY(10000, 1) PRIMARY KEY, 
 DepartmentID INT REFERENCES Departments(DepartmentID), 
 PatientID INT REFERENCES Patients(PatientID), 
 Room INT, 
 IncidentID INT REFERENCES Incidents(IncidentID), 
 BillingID INT REFERENCES Billing(BillingID), 
 VisitNotes VARCHAR(1000), 
 AdmitTime DATETIME 
); 
GO 
  
--Creating the VisitEmp table 
CREATE TABLE VisitEmp 
(EmpID INT REFERENCES Employees(EmpID), 
 VisitID INT REFERENCES VisitEvent(VisitID), 
 PRIMARY KEY (EmpID, VisitID) 
); 
GO 
  
--Creating the VisitMedicine table 
CREATE TABLE VisitMedicine 
(MedID INT REFERENCES Medication(MedID), 
 VisitID INT REFERENCES VisitEvent(VisitID), 
 MedDosage DECIMAL, 
 MedUnits VARCHAR(10), 
 PRIMARY KEY (MedID, VisitID) 
); 
GO 
