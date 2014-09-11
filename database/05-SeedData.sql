/*
 * Insurance Claims Analytics Warehouse
 * Sample Data
 * SQL Server 2008/2012
 */

USE ClaimsDW;
GO

-- Insert sample records
INSERT INTO dbo.MainRecords (RecordCode, RecordName, Description, CreatedBy)
VALUES
('REC001', 'Sample Record 1', 'First sample record for Insurance-Claims-Analytics-Warehouse', 'admin'),
('REC002', 'Sample Record 2', 'Second sample record for Insurance-Claims-Analytics-Warehouse', 'admin'),
('REC003', 'Sample Record 3', 'Third sample record for Insurance-Claims-Analytics-Warehouse', 'admin');

PRINT 'Sample data inserted successfully';
PRINT 'Total records: ' + CAST(@@ROWCOUNT AS VARCHAR(10));
GO
