
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'UniversityDB')
CREATE DATABASE UniversityDB;
GO

USE UniversityDB;
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'University')
CREATE TABLE University (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(255) NOT NULL,
    country NVARCHAR(100) NOT NULL,
    alpha_two_code CHAR(2) NOT NULL
);
GO

IF EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID('University') AND name = 'alpha_two_code')
BEGIN
    EXEC sp_rename 'University.alpha_two_code', 'code', 'COLUMN';
END

 
 
    
