--SCRIPT TO FILL TABLES 
USE Mock_Healthcare; 
GO 
--Inserting data into Jobs table 
INSERT INTO Jobs 
VALUES 
('Doctor'), 
('Nurse'), 
('Resident'), 
('Health Care Assistant'), 
('CNA'), 
('Receptionist'), 
('Medical Assistant'), 
('Nursing Assistant'), 
('RNA'), 
('Radiologist'), 
('Therapist'); 
GO 
 
--Inserting data into Employees table *NOTE (Need to make sure EmpID match) 
INSERT INTO Employees 
VALUES 
('Paige', 'Berre', '629-135-8613', 108), 
('Kellsie', 'D'' Angelo', '835-458-7465', 104), 
('Asa', 'Bulger', '557-992-5755', 102), 
('Edd', 'Vaughan-Hughes', '459-826-6124', 102), 
('Manny', 'Bouch', '953-232-2371', 103), 
('Valentin', 'Handover', '320-190-3955', 109), 
('Bryn', 'Batchellor', '685-572-4503', 103), 
('Taddeusz', 'Sandyfirth', '276-316-4370', 110), 
('April', 'Rippen', '522-893-5527', 105), 
('Christophorus', 'Coulson', '894-812-7261', 108), 
('Kathrine', 'Rillatt', '889-771-3913', 105), 
('Florrie', 'Baffin', '530-722-0482', 105), 
('Yuma', 'Woodbridge', '683-303-5536', 109), 
('Marylinda', 'Gniewosz', '735-416-9225', 107), 
('Kellen', 'Lowless', '888-989-7857', 104), 
('Eirena', 'Vassman', '977-561-5672', 103), 
('Gaile', 'Thirsk', '272-874-3582', 107), 
('Seward', 'Addams', '721-512-0231', 110), 
('Amby', 'Gentreau', '845-573-5309', 109), 
('Min', 'Arrigucci', '627-468-2207', 109), 
('Natalya', 'Rittmeyer', '121-135-5817', 110), 
('Laverna', 'Adnam', '747-273-9625', 101), 
('Alfredo', 'Cuttle', '329-664-7203', 104), 
('Ernesta', 'Staples', '301-632-6436', 109), 
('Dominic', 'Gooderson', '419-162-9126', 101), 
('Sidoney', 'Goodge', '925-885-3244', 103), 
('Inesita', 'Joder', '930-933-7817', 102), 
('Sigmund', 'Penke', '747-882-5701', 105), 
('Wade', 'Dorkins', '175-120-0475', 104), 
('Nero', 'Hengoed', '982-331-9977', 102); 
GO 
 
--Inserting data into Buildings table 
INSERT INTO Buildings 
VALUES 
('Main Hospital'), 
('VA Hospital'), 
('Clinic'), 
('Pediatric Hospital'), 
('Geriatric Hospital'); 
GO 
 
--Inserting data into the Departments table 
INSERT INTO Departments 
VALUES 
(25, 1, 'Facilities'), 
(25, 1, 'Emergency'), 
(25, 1, 'Operating'), 
(25, 2, 'Labor and Delivery'), 
(25, 3, 'Recovery'), 
(25, 4, 'Recovery'), 
(25, 1, 'Therapy'), 
(30, 1, 'Emergency'), 
(30, 2, 'Recovery'), 
(30, 3, 'Therapy'), 
(30, 4, 'Radiology'), 
(35, 1, 'Reception'), 
(35, 1, 'Physician'), 
(35, 1, 'Emergency'), 
(40, 1, 'NICU'), 
(40, 2, 'Recovery'), 
(40, 3, 'Radiology'), 
(45, 1, 'Emergency'), 
(45, 2, 'Recovery'), 
(45, 3, 'Radiology'), 
(45, 1, 'Therapy'); 
GO 
 
--Inserting into the Incidents table 
INSERT INTO Incidents 
VALUES 
('High blood pressure','Gave medicine, water, and food.'), 
('low heart rate','checked sensor and patient'), 
('bloody nose','Put clotting material in nose'), 
('Infection','Gave antibiotics'), 
('Patient fell','Got wheelchair and escorted back to room'), 
('Unresponsive patient','Woke patient up'), 
('Unresponsive patient','Checked vitals, monitors, and sensors'), 
('Delivering Child','delivered baby, and got mom and baby cleaned up'), 
('Detection of Cancer','Infromed Radiologist and doctor'), 
('Patient broke finger when falling','took xrays and supported finger'), 
('Patient slipped on liquid','helped patient and cleaned up liquid'), 
('Went to bathroom in bed','cleaned patient and bed'), 
('Got concussion','kept patient awake, gave water, and monitored'), 
('Choking patient','perfomred Heimlich maneuver. OPbject came out'), 
('Heart stopped beating','perfromed CPR'), 
('High heart rate','calmed patient, and did controlled breathing'), 
('Low blood pressure','gave food, water, and talked with patient'), 
('Patient passed away','Infromed family and prepared body'); 
GO 
 
--Inserting data into Medication table 
INSERT INTO Medication 
VALUES 
('Ibuprofen','Tablet'), 
('Fish Oil','Tablet'), 
('Diuretics','Tablet'), 
('Morphine','Tablet'), 
('Morphine','Liquid'), 
('Oxycodone','Tablet'), 
('IV','Liquid'), 
('Fluticasone','Inhaler'), 
('Dabigatran','Tablet'), 
('Propofol','Injection'), 
('Misoprostol','Tablet'); 
GO 
 
--Inserting data into Billing table 
INSERT INTO Billing 
VALUES 
('11/7/2021', '$6824.31', null), 
('10/14/2021', '$4876.90', '11/3/2021'), 
('11/6/2021', '$7610.51', null), 
('10/7/2021', '$733.83', '10/10/2021'), 
('10/16/2021', '$6767.73', null), 
('10/14/2021', '$298.35', '10/17/2021'), 
('11/2/2021', '$1199.14', '11/24/2021'), 
('10/24/2021', '$1607.05', '10/27/2021'), 
('11/6/2021', '$7173.50', '11/6/2021'), 
('10/26/2021', '$6596.97', null), 
('10/21/2021', '$4826.95', '11/16/2021'), 
('11/3/2021', '$528.22', null), 
('10/15/2021', '$5765.72', '10/19/2021'), 
('10/12/2021', '$8577.33', '10/23/2021'), 
('10/10/2021', '$3394.45', '10/24/2021'), 
('11/5/2021', '$6223.32', '11/11/2021'), 
('10/14/2021', '$5978.79', '10/19/2021'), 
('10/6/2021', '$1450.81', null), 
('10/5/2021', '$196.82', '10/7/2021'), 
('10/21/2021', '$8416.64', null), 
('10/9/2021', '$8350.43', '10/29/2021'), 
('10/9/2021', '$3294.78', '11/14/2021'), 
('10/3/2021', '$8357.50', '10/22/2021'), 
('10/3/2021', '$1833.06', null), 
('10/30/2021', '$7154.31', null), 
('10/1/2021', '$9869.86', '10/15/2021'), 
('10/19/2021', '$410.57', '10/31/2021'), 
('10/1/2021', '$9415.32', '10/12/2021'), 
('10/1/2021', '$331.09', '10/3/2021'), 
('10/2/2021', '$2523.48', '10/11/2021'), 
('10/26/2021', '$6613.31', null), 
('10/25/2021', '$5087.02', null), 
('10/8/2021', '$332.64', '10/25/2021'), 
('11/5/2021', '$4131.72', '11/21/2021'), 
('10/2/2021', '$4928.85', '10/31/2021'), 
('10/29/2021', '$7613.61', '11/3/2021'), 
('11/14/2021', '$4915.77', '11/15/2021'), 
('10/6/2021', '$2496.04', null), 
('10/5/2021', '$4207.79', '10/28/2021'), 
('10/6/2021', '$6223.29', '10/12/2021'), 
('10/16/2021', '$8860.41', '10/28/2021'), 
('11/2/2021', '$2197.85', '11/14/2021'), 
('10/30/2021', '$8616.29', '11/4/2021'), 
('10/15/2021', '$8305.09', '11/5/2021'), 
('10/2/2021', '$4639.86', '10/3/2021'), 
('11/16/2021', '$2747.69', '11/22/2021'), 
('10/21/2021', '$2023.94', null), 
('11/11/2021', '$6553.87', null), 
('10/7/2021', '$31.94', '10/13/2021'), 
('10/29/2021', '$7232.23', null), 
('10/1/2021', '$8671.62', '10/3/2021'), 
('11/2/2021', '$9744.83', '11/11/2021'), 
('11/6/2021', '$6230.51', null), 
('10/25/2021', '$4927.85', null), 
('10/9/2021', '$3445.18', '10/13/2021'), 
('10/3/2021', '$9017.01', '10/3/2021'), 
('10/18/2021', '$8803.93', '10/27/2021'), 
('10/29/2021', '$9895.99', null), 
('11/1/2021', '$5948.08', null), 
('10/22/2021', '$5004.67', '11/16/2021'), 
('11/2/2021', '$4309.31', '11/13/2021'), 
('10/2/2021', '$3592.05', null), 
('10/6/2021', '$2559.47', '10/25/2021'), 
('10/4/2021', '$7841.58', '11/15/2021'), 
('10/11/2021', '$5266.67', null), 
('10/28/2021', '$2318.08', '10/28/2021'), 
('10/8/2021', '$3952.32', '10/26/2021'), 
('10/4/2021', '$2024.18', null), 
('11/3/2021', '$3338.84', '11/16/2021'), 
('10/15/2021', '$6148.73', null), 
('11/2/2021', '$6373.04', '11/6/2021'), 
('11/18/2021', '$5132.20', null), 
('10/23/2021', '$8519.79', null), 
('10/17/2021', '$7654.93', '11/12/2021'), 
('10/13/2021', '$6237.49', '10/21/2021'), 
('10/21/2021', '$8091.48', null), 
('10/14/2021', '$1631.52', null), 
('11/6/2021', '$6679.18', null), 
('10/9/2021', '$8088.41', '10/31/2021'), 
('10/4/2021', '$6892.37', '11/3/2021'), 
('10/1/2021', '$2464.83', '11/21/2021'), 
('10/19/2021', '$7063.80', '10/23/2021'), 
('10/31/2021', '$3347.20', '11/16/2021'), 
('11/9/2021', '$8076.35', null), 
('10/13/2021', '$2597.68', '11/7/2021'), 
('10/4/2021', '$8702.23', null), 
('10/10/2021', '$1012.92', '10/28/2021'), 
('10/7/2021', '$2939.53', '10/26/2021'), 
('10/2/2021', '$3422.65', '10/17/2021'), 
('10/7/2021', '$8178.99', '11/5/2021'), 
('11/5/2021', '$9764.17', null), 
('10/22/2021', '$103.57', null), 
('10/11/2021', '$384.57', '10/12/2021'), 
('10/3/2021', '$6106.57', null), 
('10/11/2021', '$1289.88', '10/20/2021'), 
('10/9/2021', '$6993.26', '10/30/2021'), 
('11/16/2021', '$3851.37', null), 
('10/10/2021', '$6199.67', '10/26/2021'), 
('10/8/2021', '$7737.77', '11/18/2021'), 
('11/5/2021', '$6250.49', '11/16/2021'); 
GO 
 
 
--Inserting data into Insurance table 
INSERT INTO Insurance 
VALUES 
(47, 'Morar LLC', 'Cally Doggrell'), 
(33, 'Medhurst and Sons', 'Bradford O''Dee'), 
(22, 'Hand-Carter', 'Junie Ingall'), 
(24, 'Harris-Weber', 'Chrissy Livett'), 
(36, 'Koelpin-McDermott', 'Nathan Sweed'), 
(43, 'Anderson-Upton', 'Minna Seer'), 
(22, 'Braun-Rosenbaum', 'Marlo Forri'), 
(44, 'Bechtelar, Kihn and Pagac', 'Gardie D''Antoni'), 
(40, 'Bernier Inc', 'Eba Hawtry'), 
(3, 'Goodwin-Wisozk', 'Shanon Stangroom'), 
(3, 'Jakubowski and Rogahn', 'Gardner Sawell'), 
(11, 'Hahn and Kautzer', 'Norah Kitcherside'), 
(28, 'Doyle and Daniel', 'Sunny Menloe'), 
(49, 'Gislason and Bruen', 'Carolina O''Doherty'), 
(23, 'Fadel-Christiansen', 'Shaun Eicke'), 
(12, 'Auer-Lebsack', 'Addison Mowat'), 
(37, 'Anderson-Mertz', 'Catarina Eltringham'), 
(42, 'Hettinger-Dach', 'Karmen Wyne'), 
(3, 'Schmitt-Fahey', 'Odilia Godber'), 
(19, 'Ritchie and Greenholt', 'Janetta Mapson'), 
(16, 'Parisian-Kris', 'Alonzo Foulser'), 
(50, 'Bashirian and Nolan', 'Ash Stother'), 
(25, 'Bode and Breitenberg', 'Edy MacAlister'), 
(27, 'Hammes Group', 'Jeramey Jaslem'), 
(24, 'Wehner-Steuber', 'Tatum Munro'), 
(33, 'Kuvalis and Sons', 'Geri Harborow'), 
(24, 'Schuster-Weber', 'Farlay Minot'), 
(50, 'Stamm-Weissnat', 'Graeme Gillard'), 
(36, 'Little-Davis', 'Willey Scotcher'), 
(13, 'Russel, and Waelchi', 'Cookie Limprecht'), 
(1, 'Koelpin Group', 'Cyrille Lapsley'), 
(27, 'Hauck-Cartwright', 'Camellia Waddilove'), 
(22, 'Hickle and Pfannerstill', 'Dunc Elders'), 
(31, 'Friesen and Bogan', 'Ambros Lukes'), 
(31, 'Zemlak Inc', 'Elvina Sellwood'), 
(38, 'Willms and Huel', 'Aldric Davidovich'), 
(19, 'Labadie-Satterfield', 'Heidie Enderlein'), 
(24, 'Rohan and McKenzie', 'Eartha Puttick'), 
(23, 'Dietrich-Parker', 'Mersey Dooman'), 
(3, 'Casper and Sons', 'Shelly Hanna'), 
(34, 'Kunde-Flatley', 'Salomo Berriman'), 
(29, 'Ferry and Sons', 'Elke Pawelke'), 
(42, 'Hackett and Jast', 'Orelee Rentoll'), 
(27, 'Schowalter and Bins', 'Ambrose Ozelton'), 
(15, 'Hirthe-Mayert', 'Eadith Cornehl'), 
(32, 'Tremblay-Powlowski', 'Mabelle Fazakerley'), 
(35, 'Hermiston and Kertzmann', 'Collin Cackett'), 
(33, 'Kerluke and Bradtke', 'Colly Von Der Empten'), 
(14, 'Rogahn Group', 'Desdemona Gaylard'), 
(20, 'Nikolaus Inc', 'Maxim Busher'), 
(34, 'Mueller and Sons', 'Lucilia Garrioch'), 
(45, 'Schuppe LLC', 'Collette Dallaway'), 
(22, 'Paucek-Marks', 'Ralina Ainscow'), 
(43, 'Ullrich-Cassin', 'Reina Dulson'), 
(16, 'Stark and Hermiston', 'Fleurette Bunney'), 
(1, 'Dickensn and Hintz', 'Dacie Dowles'), 
(12, 'Howe-Kuhn', 'Frederik Clarridge'), 
(26, 'Baumbach-Thiel', 'Babita Tender'), 
(19, 'Ryan-Kuhic', 'Buddie Sander'), 
(2, 'Gutmann and Sons', 'Pandora Hartop'), 
(30, 'Marks-Wisoky', 'Basil Tamburo'), 
(37, 'Prohaska-Crona', 'Shalne Leverson'), 
(50, 'Bechtelar-Grady', 'Aundrea Rembrandt'), 
(31, 'Schamberger LLC', 'Tremain Napton'), 
(33, 'Sawayn-Corwin', 'Alicia Ransbury'), 
(8, 'Swaniawski Inc', 'Donnajean Karpeev'), 
(48, 'Bayer and Swift', 'Brietta Haitlie'), 
(16, 'Yundt-Kling', 'Burton Mayhou'), 
(45, 'Gerhold-Jaskolski', 'Sharai Kohnen'), 
(36, 'Rutherford and Sons', 'Denice Clissold'), 
(33, 'Becker-MacGyver', 'Miltie Winsley'), 
(18, 'Heathcote-Rogahn', 'Pat Matheson'), 
(22, 'King-Beier', 'Mord Frome'), 
(8, 'Wiza-Kuvalis', 'Linette Pickard'), 
(23, 'Bashirian-Oberbrunner', 'Bay Le Count'), 
(17, 'Homenick Inc', 'Christoffer Edmund'), 
(2, 'Langosh and Daugherty', 'Read Gadsby'), 
(33, 'Streich and Monahan', 'Humbert Sankey'), 
(13, 'Keebler Inc', 'Nonna Calafate'), 
(44, 'Rath and Nikolaus', 'Astrid Provost'), 
(33, 'Wilderman LLC', 'Drusy Oag'), 
(29, 'Kuhic and Krajcik', 'Dar Port'), 
(24, 'Beier and Sons', 'Britt Veelers'), 
(13, 'Hermiston-Zboncak', 'Frederich Keune'), 
(50, 'Fisher-Wiegand', 'Erinna Gebhardt'), 
(6, 'Buckridge Group', 'Neala Mayo'), 
(39, 'Pacocha and Sons', 'Roanne Fass'), 
(48, 'Rippin-Goldner', 'Ellissa Sterricks'), 
(13, 'Prohaska-McClure', 'Ettie Woosnam'), 
(21, 'Windler and Marvin', 'Adelle Dumbarton'), 
(29, 'Wintheiser-Schiller', 'Mohammed Nutman'), 
(13, 'Botsford-Sauer', 'Adi Sturge'), 
(46, 'Schamberger, Kovacek and Harris', 'Kenon Verrechia'), 
(44, 'Grady Inc', 'Madelina Titlow'), 
(6, 'Schroeder LLC', 'Minor Piel'), 
(24, 'Hermann Inc', 'Hedwig Harner'), 
(42, 'Lesch, Hirthe and Brekke', 'Sam Mantrup'), 
(10, 'Jacobson LLC', 'Gaultiero Seymour'), 
(50, 'Stiedemann LLC', 'Buffy Harberer'), 
(15, 'Cummings Group', 'Thomasin Gostling'); 
GO 
 
 
-- Inserting Data into the patients table 
INSERT INTO Patients 
VALUES 
('Juliet', 'McMurdo', '10/8/2021', 'Malaysian', 'F', null, 25000, '7437 Calypso Point', '774-800-5903'), 
('Willey', 'Duffit', '6/1/2012', 'Cree', 'M', null, 25050, '63857 Ridgeview Court', '960-375-5302'), 
('Elora', 'Kuhwald', '8/18/1999', 'Spaniard', 'F', null, 25100, '5 Gina Junction', '417-414-7478'), 
('Patty', 'Chavez', '7/14/1982', 'Cree', 'M', null, 25150, '97 Welch Avenue', '337-122-5446'), 
('Amelia', 'Dunlap', '7/15/1991', 'Peruvian', 'F', null, 25200, '0361 Larry Park', '868-178-7188'), 
('Reinhard', 'Farmer', '10/21/2008', 'Tohono O''Odham', 'M', null, 25250, '44669 Tony Plaza', '156-892-2792'), 
('Allyn', 'Rodder', '5/9/1934', 'Ottawa', 'M', null, 25250, '19026 Susan Point', '413-428-6512'), 
('Gisela', 'Castanho', '7/8/1946', 'Pakistani', 'F', null, 25300, '06 Warbler Center', '274-241-3719'), 
('Candice', 'Hixson', '1/29/1997', 'Uruguayan', 'F', null, 25350, '85906 Ilene Alley', '519-360-7416'), 
('Gram', 'Fryers', '10/30/1967', 'South American', 'M', null, 25400, '5056 Lunder Alley', '781-507-7097'), 
('Arlina', 'Kermeen', '1/10/1999', 'Indonesian', 'F', null, 25450, '20967 Mariners Cove Circle', '610-229-2346'), 
('Hart', 'Ivatts', '5/11/1989', 'Chippewa', 'M', null, 25500, '925 Dawn Way', '319-145-9483'), 
('Danni', 'Spenclay', '5/22/1946', 'Kiowa', 'F', null, 25550, '90 Manufacturers Trail', '333-261-0922'), 
('Karlens', 'Vannet', '1/22/1968', 'Fijian', 'M', null, 25600, '9 Summit Crossing', '325-878-4559'), 
('Robinette', 'Esley', '4/15/2014', 'Blackfeet', 'F', null, 25650, '468 Lillian Way', '920-522-1580'), 
('Timmie', 'Bantham', '5/7/1972', 'Melanesian', 'F', null, 25700, '674 Sauthoff Parkway', '100-721-8197'), 
('Ario', 'Cornfoot', '10/17/1973', 'Delaware', 'M', null, 25750, '079 Northview Hill', '524-475-6232'), 
('Daune', 'Bramhill', '9/10/1957', 'Costa Rican', 'F', null, 25800, '250 Stoughton Trail', '819-585-5322'), 
('Gweneth', 'BURWIN', '10/21/1986', 'Tongan', 'F', null, 25850, '6 Basil Crossing', '706-381-7338'), 
('Hobart', 'Tatlow', '4/9/1936', 'Guamanian', 'M', null, 25900, '27007 Rieder Crossing', '578-483-1139'), 
('Livvyy', 'Wherry', '11/21/2010', 'Tohono O''Odham', 'F', null, 25950, '11318 Bashford Plaza', '985-147-9206'), 
('Vaclav', 'Revie', '2/13/2020', 'Apache', 'M', null, 26000, '07809 Springs Park', '477-496-0405'), 
('Jillian', 'Linnock', '7/3/1998', 'Laotian', 'F', null, 26050, '593 Ludington Court', '657-361-8542'), 
('Freddy', 'Myles', '5/31/2013', 'Asian', 'M', null, 26100, '99153 Raven Street', '714-689-0488'), 
('Thayne', 'Posen', '12/11/1979', 'Black or African American', 'M', null, 26150, '808 Oxford Place', '873-676-0875'), 
('Flint', 'Bonds', '11/14/2008', 'Crow', 'M', null, 26200, '94 Forest Junction', '829-425-3455'), 
('Rodolph', 'Wither', '4/7/1943', 'Tongan', 'M', null, 26250, '196 Vera Way', '475-340-6837'), 
('Barth', 'Neumann', '8/31/1971', 'Ottawa', 'M', null, 26300, '01928 Goodland Avenue', '269-450-7648'), 
('Amie', 'Raigatt', '8/10/2019', 'Comanche', 'F', null, 26350, '438 Main Park', '300-478-7899'), 
('Micheil', 'Mathiot', '11/13/1937', 'Malaysian', 'M', null, 26400, '4627 Artisan Junction', '875-349-6956'), 
('Charline', 'Wornum', '7/22/1923', 'Mexican', 'F', null, 26450, '7594 Monterey Road', '418-656-8472'), 
('Paxon', 'Pelzer', '2/14/1928', 'Cherokee', 'M', null, 26500, '0940 Northfield Point', '312-390-7421'), 
('Donall', 'Wibberley', '7/21/2012', 'Tlingit-Haida', 'M', null, 26550, '3 Debs Way', '781-860-9549'), 
('Raina', 'Maltster', '2/10/1935', 'Apache', 'F', null, 26550, '41714 Sugar Street', '563-656-0330'), 
('Renell', 'Largent', '5/25/1974', 'Sri Lankan', 'F', null, 26600, '1563 Kingsford Plaza', '240-592-3583'), 
('Rivkah', 'McClary', '3/16/1992', 'Hmong', 'F', null, 26650, '9926 Sycamore Place', '453-957-7851'), 
('Kandace', 'Larrosa', '10/28/2021', 'Pakistani', 'F', null, 26700, '52 Bunker Hill Terrace', '419-631-6460'), 
('Carolin', 'Rieger', '8/15/1954', 'Ottawa', 'F', null, 26750, '89 Tennessee Pass', '237-955-6997'), 
('Dosi', 'Gilliland', '7/19/1933', 'American Indian and Alaska Native (AIAN)', 'F', null, 26750, '312 Lillian Center', '999-471-3685'), 
('Bond', 'Bruford', '8/9/1954', 'Tohono O''Odham', 'M', null, 26800, '6 La Follette Parkway', '426-265-1643'), 
('Wood', 'Stanion', '2/17/2017', 'Yaqui', 'M', null, 26850, '40364 Petterle Way', '791-157-6179'), 
('Abagail', 'Etheridge', '6/29/1948', 'South American', 'F', null, 26900, '78776 Division Street', '572-183-6366'), 
('Constantino', 'Elmhurst', '4/3/1943', 'Uruguayan', 'M', null, 26950, '00 Forest Dale Way', '203-325-9024'), 
('Matty', 'Ramsey', '6/21/1992', 'Korean', 'M', null, 27000, '5331 Cherokee Pass', '941-569-0175'), 
('Rock', 'Cluatt', '3/14/1921', 'Sioux', 'M', null, 27050, '421 Spohn Circle', '318-162-6602'), 
('Andeee', 'Stracey', '10/3/1971', 'Pima', 'F', null, 27100, '2 Bartillon Point', '564-547-1676'), 
('Leanor', 'Eastam', '4/19/1922', 'Crow', 'F', null, 27150, '25204 Glacier Hill Circle', '485-815-4004'), 
('Guido', 'Mozzini', '8/24/1928', 'Menominee', 'M', null, 27200, '45712 Talmadge Way', '805-969-5829'), 
('Reggie', 'Trounce', '10/2/1978', 'Sri Lankan', 'M', null, 27250, '94867 Northport Lane', '707-187-2845'), 
('Arlan', 'Togwell', '4/29/1948', 'Asian Indian', 'M', null, 27300, '22720 Oak Valley Park', '360-123-1123'), 
('Leoine', 'Probart', '8/29/1993', 'Bangladeshi', 'F', null, 27350, '27 Thompson Trail', '376-498-4960'), 
('Bobinette', 'Putterill', '7/11/1929', 'Choctaw', 'F', null, 27400, '67239 Forster Junction', '599-870-5388'), 
('Reynard', 'Doolan', '10/16/1944', 'Cambodian', 'M', null, 27450, '69377 Kennedy Way', '835-378-0129'), 
('Rosemarie', 'Pickard', '5/19/1952', 'Indonesian', 'F', null, 27500, '38 Daystar Lane', '349-446-2776'), 
('Jermayne', 'Delacroux', '10/11/1976', 'Peruvian', 'M', null, 27550, '92821 Mccormick Place', '557-461-2040'), 
('Laurie', 'McKendry', '5/8/1968', 'Shoshone', 'M', null, 27600, '5538 Lukken Center', '341-989-9470'), 
('Cortney', 'Boniface', '7/19/1988', 'Delaware', 'F', null, 27650, '252 Anhalt Lane', '144-330-8661'), 
('Remy', 'Antrack', '2/25/1975', 'Sri Lankan', 'F', null, 27700, '580 American Ash Center', '645-808-0061'), 
('Janifer', 'Real', '7/16/2008', 'Apache', 'F', null, 27750, '3435 Sutteridge Junction', '969-294-2628'), 
('Blane', 'Klimke', '2/25/1926', 'Ottawa', 'M', null, 27800, '1499 Randy Park', '228-237-6625'), 
('Rachel', 'Volke', '8/18/1927', 'Comanche', 'F', null, 27850, '472 Acker Alley', '244-878-7480'), 
('Syman', 'Bonny', '10/7/1921', 'Tongan', 'M', null, 27900, '55 Doe Crossing Trail', '686-490-4222'), 
('Andrej', 'Raddin', '3/29/1988', 'Ottawa', 'M', null, 27950, '41 Dexter Center', '330-201-6523'), 
('Gaye', 'Strathern', '4/12/1984', 'American Indian and Alaska Native (AIAN)', 'F', null, 28000, '38161 Granby Avenue', '978-370-3160'), 
('Thatch', 'Conley', '2/15/2012', 'Mexican', 'M', null, 28050, '06 Clemons Crossing', '140-964-5048'), 
('Guendolen', 'Dory', '2/24/1977', 'Sioux', 'F', null, 28100, '8806 Reinke Street', '116-177-4000'), 
('Nollie', 'Petrescu', '7/28/1982', 'Cheyenne', 'F', null, 28150, '9853 Coolidge Parkway', '290-140-0405'), 
('Brewer', 'Elsby', '9/29/1984', 'Navajo', 'M', null, 28150, '58 Anthes Parkway', '927-874-4231'), 
('Fiona', 'Brockelsby', '6/14/1938', 'Apache', 'F', null, 28150, '6605 Sundown Park', '219-456-5543'), 
('Alwyn', 'Fronzek', '11/12/1999', 'Polynesian', 'M', null, 28200, '08 Brickson Park Hill', '337-322-9493'), 
('Lyndy', 'Redhole', '5/26/1978', 'Taiwanese', 'F', null, 28250, '698 Rigney Hill', '227-618-8658'), 
('Jacynth', 'Rabjohn', '9/29/1956', 'Eskimo', 'F', null, 28300, '5 Vidon Point', '829-209-5525'), 
('Rudie', 'Le Floch', '3/31/2016', 'Ottawa', 'M', null, 28350, '28 Petterle Street', '679-165-9504'), 
('Odo', 'McAnellye', '7/23/1941', 'Yuman', 'M', null, 28400, '27035 Northwestern Center', '908-993-2112'), 
('Kendal', 'Corde', '8/8/2021', 'Iroquois', 'M', null, 28450, '6467 Walton Park', '209-600-1272'), 
('Kayla', 'Tapscott', '5/28/1965', 'Colombian', 'F', null, 28500, '5708 Helena Park', '952-174-3818'), 
('Elizabet', 'Duggon', '1/20/1961', 'Costa Rican', 'F', null, 28550, '25 Walton Crossing', '214-228-4547'), 
('Meier', 'Damato', '1/30/1968', 'Ecuadorian', 'M', null, 28600, '37353 Colorado Avenue', '601-167-8934'), 
('Reggy', 'Blasi', '8/24/2003', 'Peruvian', 'M', null, 28650, '4 Cardinal Road', '538-794-6247'), 
('Raven', 'Brahan', '6/7/1981', 'Korean', 'F', null, 28700, '70836 Garrison Avenue', '632-312-2211'), 
('Fayth', 'Sommerton', '4/29/1969', 'Cuban', 'F', null, 28750, '4603 Elmside Road', '637-440-4595'), 
('Tamas', 'Fibbit', '3/4/1929', 'American Indian and Alaska Native (AIAN)', 'M', null, 28800, '5208 Mitchell Street', '998-523-5343'), 
('Cathlene', 'Stothert', '4/1/2020', 'Puget Sound Salish', 'F', null, 28850, '6219 Kedzie Park', '426-364-2432'), 
('Darsey', 'Spradbery', '2/21/1946', 'Alaskan Athabascan', 'F', null, 28900, '28 Oneill Junction', '354-979-1319'), 
('Jacquetta', 'Dalgety', '4/24/1964', 'Creek', 'F', null, 28950, '41 High Crossing Pass', '226-182-4277'), 
('Percival', 'Elbourn', '6/11/1973', 'Nicaraguan', 'M', null, 29000, '6042 Granby Crossing', '219-296-9903'), 
('Lev', 'Catlow', '12/11/1997', 'Paraguayan', 'M', null, 29050, '042 Jenifer Center', '977-794-1909'), 
('Prudence', 'McPhate', '7/16/2013', 'Laotian', 'F', null, 29100, '4 Manitowish Pass', '742-786-7287'), 
('Joelly', 'Barnwille', '1/20/1956', 'Japanese', 'F', null, 29150, '369 Carpenter Way', '325-643-0609'), 
('Elana', 'Tongue', '12/15/1987', 'Pima', 'F', null, 29200, '3206 Dennis Junction', '995-902-6922'), 
('Emmett', 'Philippsohn', '12/18/1930', 'Chinese', 'M', null, 29250, '67 Hermina Court', '144-329-4536'), 
('Crosby', 'Muldrew', '11/23/1939', 'Dominican (Dominican Republic)', 'M', null, 29300, '2 Annamark Trail', '301-913-0390'), 
('Garrott', 'Duiguid', '12/2/1955', 'Micronesian', 'M', null, 29350, '87159 Talmadge Drive', '456-252-4871'), 
('Olly', 'Riggoll', '4/4/1932', 'Potawatomi', 'M', null, 29400, '24117 Sugar Street', '272-158-0783'), 
('Ivan', 'Braferton', '4/8/1979', 'Salvadoran', 'M', null, 29450, '5 Sunfield Avenue', '556-648-1910'), 
('Anestassia', 'Boome', '8/3/1958', 'Puget Sound Salish', 'F', null, 29500, '835 Derek Crossing', '773-848-2641'), 
('Lane', 'Pedlingham', '4/9/1957', 'Cheyenne', 'M', null, 29550, '4 Pepper Wood Plaza', '393-758-2117'), 
('Yurik', 'Roelvink', '3/14/1976', 'Salvadoran', 'M', null, 29600, '8729 Maryland Center', '918-727-9799'), 
('Elena', 'Sherwen', '3/14/1944', 'Asian', 'F', null, 29650, '17 Springview Center', '784-112-4266'), 
('Lynett', 'Spreull', '6/8/1981', 'Colville', 'F', null, 29700, '05614 Bay Court', '589-984-3432'); 
GO 
 
--Inserting data into AmtPaid table 
INSERT INTO AmtPaid 
VALUES 
(50097, 25000, '$5703.14', '$9826.28', '10/19/2021'), 
(50006, 25050, '$7721.99', '$769.52', null), 
(50022, 25100, '$946.75', '$9018.34', '11/1/2021'), 
(50080, 25150, '$4473.27', '$2988.75', '11/2/2021'), 
(50095, 25200, '$766.75', '$4401.55', null), 
(50069, 25250, '$7684.73', '$3747.41', '10/12/2021'), 
(50098, 25300, '$6199.41', '$2130.08', '11/6/2021'), 
(50088, 25350, '$2261.46', '$6911.23', '11/5/2021'), 
(50056, 25400, '$8483.42', '$2113.76', '11/16/2021'), 
(50097, 25450, '$8307.45', '$3565.41', '10/13/2021'), 
(50075, 25500, '$8276.45', '$5493.02', null), 
(50057, 25550, '$9776.65', '$9923.29', '10/4/2021'), 
(50090, 25600, '$9580.66', '$4277.95', '10/30/2021'), 
(50053, 25650, '$5998.20', '$8899.06', '11/4/2021'), 
(50039, 25700, '$9698.51', '$8397.20', '10/5/2021'), 
(50036, 25750, '$9096.53', '$8187.58', '10/9/2021'), 
(50025, 25800, '$1011.87', '$1190.87', '11/5/2021'), 
(50051, 25850, null, null, '10/25/2021'), 
(50090, 25900, '$9500.48', '$5678.20', null), 
(50097, 25950, '$935.56', '$7319.77', null), 
(50005, 26000, '$8603.34', '$4476.12', '10/30/2021'), 
(50073, 26050, '$8490.49', '$2507.56', null), 
(50023, 26100, null, null, null), 
(50090, 26150, '$5656.96', '$8772.45', '10/1/2021'), 
(50080, 26200, '$904.65', '$5426.85', null), 
(50030, 26250, '$5203.34', '$1866.71', '11/4/2021'), 
(50098, 26300, '$3112.11', '$1490.64', '10/27/2021'), 
(50008, 26350, '$8143.92', '$8541.32', '11/17/2021'), 
(50050, 26400, '$3678.09', '$5527.54', '10/26/2021'), 
(50027, 26450, '$9565.05', '$5494.59', '11/2/2021'), 
(50047, 26500, '$1233.43', '$6005.26', '11/18/2021'), 
(50015, 26550, '$1474.75', '$5621.69', null), 
(50006, 26600, '$5475.33', '$8750.79', '10/24/2021'), 
(50057, 26650, '$840.26', '$8576.95', null), 
(50069, 26700, '$7605.65', '$5656.68', null), 
(50059, 26750, '$3681.82', '$9116.84', '10/6/2021'), 
(50078, 26800, '$147.45', '$4206.44', '10/17/2021'), 
(50069, 26850, '$6302.32', '$7232.19', '11/2/2021'), 
(50005, 26900, '$1808.50', '$5574.72', null), 
(50061, 26950, '$9682.63', '$5815.77', '10/30/2021'), 
(50028, 27000, '$5543.84', '$6773.55', null), 
(50096, 27050, '$7387.52', '$5475.34', '10/3/2021'), 
(50086, 27100, '$1219.29', '$4612.89', null), 
(50070, 27150, '$6366.56', '$3734.98', null), 
(50078, 27200, '$7973.71', '$6678.47', '10/5/2021'), 
(50038, 27250, '$6899.70', '$4887.32', '10/24/2021'), 
(50019, 27300, '$9514.72', '$5929.98', '11/19/2021'), 
(50023, 27250, '$3730.85', '$1610.70', null), 
(50077, 27300, null, null, null), 
(50017, 27350, null, null, '10/26/2021'), 
(50071, 27400, '$5366.38', '$8620.78', null), 
(50080, 27450, '$7175.60', '$243.13', '10/2/2021'), 
(50045, 27500, '$5872.01', '$6513.89', null), 
(50099, 27550, '$7951.44', '$8446.24', null), 
(50060, 27600, '$4278.73', '$1092.08', null), 
(50000, 27650, '$108.73', '$5576.43', '10/10/2021'), 
(50016, 27700, '$3337.89', '$640.88', null), 
(50068, 27750, '$4086.06', '$8791.59', '10/7/2021'), 
(50073, 27800, '$9608.41', '$1080.16', '11/11/2021'), 
(50011, 27850, '$2537.54', '$3649.00', '10/23/2021'), 
(50044, 27900, '$9969.68', '$1286.04', '10/21/2021'), 
(50077, 27950, '$7555.38', '$8116.62', null), 
(50011, 28000, '$9693.59', '$5487.98', null), 
(50094, 28050, '$3107.50', '$6817.69', '11/18/2021'), 
(50024, 28100, '$5068.76', '$9133.89', '11/11/2021'), 
(50005, 28150, '$8368.70', '$7825.35', null), 
(50035, 28200, '$5918.32', '$8854.87', null), 
(50010, 28250, '$3764.28', '$1182.46', null), 
(50015, 28300, null, null, null), 
(50005, 28350, '$417.20', '$1293.97', '10/15/2021'), 
(50075, 28400, '$7769.82', '$8343.68', null), 
(50093, 28450, '$2391.65', '$9827.30', '11/19/2021'), 
(50022, 28500, '$9955.76', '$8112.61', null), 
(50097, 28550, '$6136.03', '$3115.43', '11/2/2021'), 
(50033, 28550, '$9005.32', '$7156.53', '11/21/2021'), 
(50097, 28600, '$1625.59', '$9376.40', '11/3/2021'), 
(50025, 28650, '$5275.77', '$5121.58', '10/17/2021'), 
(50040, 28700, '$4089.53', '$7139.21', '10/17/2021'), 
(50022, 28750, '$1955.26', '$1948.19', '10/11/2021'), 
(50072, 28800, '$7596.38', '$2011.81', null), 
(50001, 28850, '$5177.33', '$3135.71', '11/3/2021'), 
(50004, 28900, '$9618.89', '$2080.95', '11/19/2021'), 
(50074, 28950, '$9738.09', '$5304.18', '11/19/2021'), 
(50096, 29000, '$6292.91', '$4161.88', '11/6/2021'), 
(50040, 29050, '$7454.07', '$607.56', '10/24/2021'), 
(50062, 29100, '$7223.23', '$7944.61', '10/12/2021'), 
(50045, 29150, '$9164.81', '$8228.85', '11/19/2021'), 
(50026, 29200, '$6615.54', '$9436.85', null), 
(50060, 29250, '$3187.36', '$9715.26', '10/5/2021'), 
(50061, 29300, null, null, null), 
(50042, 29350, '$243.96', '$1378.71', null), 
(50020, 29400, '$6390.53', '$3506.31', '11/15/2021'), 
(50067, 29450, '$4546.14', '$9340.60', '10/13/2021'), 
(50027, 29500, '$6158.89', '$3342.30', '10/25/2021'), 
(50039, 29550, '$2123.38', '$1079.25', '11/6/2021'), 
(50075, 29600, '$2200.37', '$9552.62', '10/12/2021'), 
(50031, 29650, '$8141.23', '$8561.86', null), 
(50033, 29700, '$8003.71', '$4364.35', '11/7/2021'), 
(50068, 29750, '$196.14', '$8507.87', null), 
(50015, 29800, '$9199.86', '$3103.17', '10/10/2021'); 
GO 
 
--Inserting data into VisitEvent table 
INSERT INTO VisitEvent 
VALUES 
(	
100	
,	
1000780	
,	
39	
,	
100005	
,	
50000	
,	
NULL	
,	
5/12/2021	
)	
, 
(	
110	
,	
1000790	
,	
24	
,	
100007	
,	
50001	
,	
NULL	
,	
7/14/2021	
)	
, 
(	
120	
,	
1000800	
,	
11	
,	
100003	
,	
50002	
,	
NULL	
,	
3/5/2021	
)	
, 
(	
130	
,	
1000810	
,	
45	
,	
100002	
,	
50003	
,	
NULL	
,	
10/5/2021	
)	
, 
(	
140	
,	
1000820	
,	
18	
,	
100003	
,	
50004	
,	
NULL	
,	
1/7/2021	
)	
, 
(	
150	
,	
1000830	
,	
23	
,	
100014	
,	
50005	
,	
NULL	
,	
7/23/2021	
)	
, 
(	
160	
,	
1000840	
,	
32	
,	
100007	
,	
50006	
,	
NULL	
,	
7/21/2021	
)	
, 
(	
170	
,	
1000850	
,	
29	
,	
100014	
,	
50007	
,	
NULL	
,	
5/14/2021	
)	
, 
(	
180	
,	
1000860	
,	
20	
,	
100013	
,	
50008	
,	
NULL	
,	
9/25/2021	
)	
, 
(	
190	
,	
1000870	
,	
20	
,	
100002	
,	
50009	
,	
NULL	
,	
2/18/2021	
)	
, 
(	
200	
,	
1000880	
,	
28	
,	
100012	
,	
50010	
,	
NULL	
,	
11/4/2021	
)	
, 
(	
210	
,	
1000890	
,	
1	
,	
100004	
,	
50011	
,	
NULL	
,	
1/13/2021	
)	
, 
(	
220	
,	
1000900	
,	
8	
,	
100010	
,	
50012	
,	
NULL	
,	
9/13/2021	
)	
, 
(	
230	
,	
1000910	
,	
32	
,	
100007	
,	
50013	
,	
NULL	
,	
9/10/2021	
)	
, 
(	
240	
,	
1000920	
,	
46	
,	
100002	
,	
50014	
,	
NULL	
,	
8/28/2021	
)	
, 
(	
250	
,	
1000930	
,	
28	
,	
100000	
,	
50015	
,	
NULL	
,	
12/20/2020	
)	
, 
(	
260	
,	
1000940	
,	
42	
,	
100013	
,	
50016	
,	
NULL	
,	
4/5/2021	
)	
, 
(	
270	
,	
1000950	
,	
33	
,	
100000	
,	
50017	
,	
NULL	
,	
10/14/2021	
)	
, 
(	
280	
,	
1000960	
,	
21	
,	
100004	
,	
50018	
,	
NULL	
,	
11/4/2021	
)	
, 
(	
290	
,	
1000970	
,	
5	
,	
100005	
,	
50019	
,	
NULL	
,	
11/24/2021	
); 
GO 
 
 
INSERT INTO VisitEmp 
VALUES 
(	
1000	
,	
10000	
)	
, 
(	
1001	
,	
10001	
)	
, 
(	
1002	
,	
10002	
)	
, 
(	
1003	
,	
10003	
)	
, 
(	
1004	
,	
10004	
)	
, 
(	
1005	
,	
10005	
)	
, 
(	
1006	
,	
10006	
)	
, 
(	
1007	
,	
10007	
)	
, 
(	
1008	
,	
10008	
)	
, 
(	
1009	
,	
10009	
)	
, 
(	
1010	
,	
10010	
)	
, 
(	
1011	
,	
10011	
)	
, 
(	
1012	
,	
10012	
)	
, 
(	
1013	
,	
10013	
)	
, 
(	
1014	
,	
10014	
)	
, 
(	
1015	
,	
10015	
)	
, 
(	
1016	
,	
10016	
)	
, 
(	
1017	
,	
10017	
)	
, 
(	
1018	
,	
10018	
)	
, 
(	
1019	
,	
10019	
)	
, 
(	
1020	
,	
10000	
)	
, 
(	
1021	
,	
10001	
)	
, 
(	
1022	
,	
10002	
)	
, 
(	
1023	
,	
10003	
)	
, 
(	
1024	
,	
10004	
)	
, 
(	
1025	
,	
10005	
)	
, 
(	
1026	
,	
10006	
)	
, 
(	
1027	
,	
10007	
)	
, 
(	
1028	
,	
10008	
)	
, 
(	
1029	
,	
10009	
)	
, 
(	
1000	
,	
10010	
)	
, 
(	
1000	
,	
10011	
)	
; 
GO 
 
