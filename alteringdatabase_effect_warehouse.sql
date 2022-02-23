--SCRIPT TO CREATE TABLES 
USE Mock_Healthcare; 
GO 

UPDATE Patients 
SET PatLName = 'Mandolorian' 
WHERE PatientID = 1000000; 
GO 
 
 
 
  --Updating Patient Blood types
Update Patients
set BloodType = 'AB-'
where PatientID = 1000780 
or PatientID = 1000750
or PatientID = 1000980
or PatientID = 1001020
or PatientID = 1001060
or PatientID = 1001370
or PatientID = 1001410
or PatientID = 1001420
or PatientID = 1001550
or PatientID = 1001570
 
Update Patients
set BloodType = 'B-'
where PatientID = 1000730 
or PatientID = 1001590
or PatientID = 1001650
or PatientID = 1001510
 
Update Patients
set BloodType = 'B+'
where PatientID = 1000860 
or PatientID = 1000870
or PatientID = 1000910
or PatientID = 1001020
or PatientID = 1001070
or PatientID = 1001180
or PatientID = 1001240
or PatientID = 1001640
or PatientID = 1001670
or PatientID = 1001490
 
Update Patients
set BloodType = 'A-'
where PatientID = 1000740 
or PatientID = 1000810
or PatientID = 1000820
or PatientID = 1000940
 
Update Patients
set BloodType = 'A+'
where PatientID = 1000840 
or PatientID = 1000890
or PatientID = 1000920
or PatientID = 1000960
or PatientID = 1001000
or PatientID = 1001030
or PatientID = 1001100
or PatientID = 1001130
or PatientID = 1001140
or PatientID = 1001160
or PatientID = 1001190
or PatientID = 1001200
or PatientID = 1001220
or PatientID = 1001250
or PatientID = 1001290
or PatientID = 1001320
or PatientID = 1001380
or PatientID = 1001430
or PatientID = 1001450
or PatientID = 1001460
or PatientID = 1001470
or PatientID = 1001500
or PatientID = 1001530
or PatientID = 1001540
or PatientID = 1001600
or PatientID = 1001610
or PatientID = 1001360
 
Update Patients
set BloodType = 'AB+'
where PatientID = 1000680
or PatientID = 1000710
or PatientID = 1000720
or PatientID = 1000790
or PatientID = 1000880
or PatientID = 1000990
or PatientID = 1001040
or PatientID = 1001120
or PatientID = 1001230
or PatientID = 1001340
or PatientID = 1001400
 
 
Update Patients
set BloodType = 'O+'
where PatientID = 1000700
or PatientID = 1000770
or PatientID = 1000830
or PatientID = 1000850
or PatientID = 1000900
or PatientID = 1000950
or PatientID = 1001050
or PatientID = 1001080
or PatientID = 1001090
or PatientID = 1001110
or PatientID = 1001280
or PatientID = 1001310
or PatientID = 1001620
 
Update Patients
set BloodType = 'O-'
where PatientID = 1000690
or PatientID = 1000760
or PatientID = 1000800
or PatientID = 1000930
or PatientID = 1000970
or PatientID = 1001010
or PatientID = 1001150
or PatientID = 1001170
or PatientID = 1001210
or PatientID = 1001260
or PatientID = 1001270
or PatientID = 1001300
or PatientID = 1001330
or PatientID = 1001350
or PatientID = 1001390
or PatientID = 1001440
or PatientID = 1001480
or PatientID = 1001520
or PatientID = 1001560
or PatientID = 1001580
or PatientID = 1001630
or PatientID = 1001660

--Updating VisitMedicine table to add MedUnits
Update VisitMedicine
set MedUnits = 'Grams'
where VisitID = 10204
or VisitID = 10295
or VisitID = 10286
or VisitID = 10248
or VisitID = 10284
or VisitID = 10257
or VisitID = 10259
 
Update VisitMedicine
set MedUnits = 'Milligrams'
where VisitID = 10205
or VisitID = 10263
or VisitID = 10277
or VisitID = 10267
or VisitID = 10213
or VisitID = 10275
or VisitID = 10203
 
Update VisitMedicine
set MedUnits = 'Centiliter'
where VisitID = 10210
or VisitID = 10276
or VisitID = 10271
or VisitID = 10271
or VisitID = 10282
 
Update VisitMedicine
set MedUnits = 'Ounces'
where VisitID = 10212
or VisitID = 10297
or VisitID = 10262
or VisitID = 10273
or VisitID = 10279
or VisitID = 10208
or VisitID = 10239
or VisitID = 10208
or VisitID = 10262
or VisitID = 10264
or VisitID = 10290

