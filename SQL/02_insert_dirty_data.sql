-- ============================================================
-- DIRTY DATA — 100 ROWS — EMPLOYEES TABLE
-- ============================================================

-- ============================================================
--  FOREIGN KEY REFENCES TABLES : 
-- ============================================================

INSERT INTO departments (id, name, description) VALUES
(1, 'Engineering', 'Software and hardware engineering'),
(2, 'Finance', 'Financial operations and accounting'),
(3, 'HR', 'Human Resources'),
(4, 'Marketing', 'Marketing and communications'),
(5, 'Sales', 'Sales and business development');

INSERT INTO countries (id, name, capital, code_country) VALUES
(1, 'Ghana', 'Accra', 'GH'),
(2, 'Nigeria', 'Abuja', 'NG'),
(3, 'Kenya', 'Nairobi', 'KE'),
(4, 'Senegal', 'Dakar', 'SN'),
(5, 'South Africa', 'Pretoria', 'ZA');

INSERT INTO experiences (id, year, description) VALUES
(1, 1, 'Junior level'),
(2, 3, 'Mid level'),
(3, 7, 'Senior level'),
(4, 12, 'Lead level');


-- =========================================================
--  EMPLOYEES TABLES 
-- ==========================================

INSERT INTO employees (fullname, phone, email, age, city, salary, country_id, status, address, department_id, hire_date) VALUES

-- BLOC 1 : Emails invalides / malformes
('Kofi Mensah', '0244123456', 'kofi.mensah@', 28, 'Accra', 2500.00, 1, 'active', '12 Ring Road, Accra', 1, '2022-03-15'),
('Ama Boateng', '0201234567', 'ama boateng@gmail.com', 32, 'Kumasi', 3100.50, 1, 'Active', '45 Adum Street', 2, '2021-07-01'),
('Yaw Darko', '233244000111', 'yaw@@darko.com', 45, 'Takoradi', NULL, 1, 'ACTIVE', '7 Harbor Rd', 3, '2020-01-10'),
('Abena Asante', NULL, 'abena.asante.gmail.com', 29, 'Accra', 2800.00, 1, 'active', NULL, 1, '2023-06-01'),
('Kwame Osei', '024-411-2233', 'kwame@osei@company.gh', 38, 'Tema', 5000.00, 1, 'inactive', '3 Industrial Ave', 2, NULL),

-- BLOC 2 : Status invalides
('Fatima Diallo', '00221771234567', 'fatima.diallo@senegal.sn', 27, 'Dakar', 3200.00, 4, 'Actif', '88 Medina', 4, '2022-11-20'),
('Moussa Sow', '771234567', 'moussa.sow@mail.sn', 41, 'Saint-Louis', 2900.00, 4, 'FIRED', '12 Rue Blanchot', 1, '2019-05-15'),
('Aminata Ndiaye', NULL, 'aminata@ndiaye', 33, 'Dakar', 3800.00, 4, 'suspend', '5 Avenue Bourguiba', 3, '2020-08-30'),
('Ibrahima Ba', '77-000-1111', 'ibrahima.ba@gmail.com', 52, 'Ziguinchor', 4100.00, 4, 'employe', '2 Rue du Port', 2, '2018-03-01'),
('Rokhaya Fall', '0012217751234', 'rokhayafall@', 24, 'Dakar', NULL, 4, NULL, NULL, NULL, '2024-01-15'),

-- BLOC 3 : Ages impossibles
('Chidi Okafor', '08012345678', 'chidi.okafor@ng.com', 0, 'Lagos', 6000.00, 2, 'active', '14 Victoria Island', 1, '2021-02-28'),
('Ngozi Eze', '07098765432', 'ngozi.eze@yahoo.com', 999, 'Abuja', 5500.00, 2, 'active', '3 Maitama Drive', 2, '2020-09-10'),
('Emeka Nwosu', '080-1234-5678', 'emeka@nwosu@ng.co', -5, 'Port Harcourt', 4800.00, 2, 'Active', '7 GRA Phase 2', 3, '2019-12-01'),
('Bola Adeyemi', '08155550000', 'bola.adeyemi@company', 17, 'Ibadan', 1500.00, 2, 'INACTIVE', '22 Ring Road Ibadan', 4, NULL),
('Tunde Fashola', NULL, 'tunde@fashola.com', 150, 'Lagos', 7200.00, 2, 'active', '1 Broad Street', 5, '2022-07-07'),

-- BLOC 4 : Salaires invalides
('Wanjiku Mwangi', '+254712345678', 'wanjiku@mwangi.co.ke', 30, 'Nairobi', -1500.00, 3, 'active', 'Westlands, Nairobi', 1, '2021-05-20'),
('Otieno Odhiambo', '0722000111', 'otieno.odhiambo@gmail', 36, 'Kisumu', 0.00, 3, 'active', 'Milimani Estate', 2, '2020-03-15'),
('Aisha Kamau', '254733444555', 'aisha.kamau@mail.ke', 44, 'Mombasa', 99999999.99, 3, 'Active', 'Old Town, Mombasa', 3, '2018-11-11'),
('Njeri Kariuki', '+254-700-111222', NULL, 28, 'Nakuru', 3400.00, 3, 'inactive', NULL, 1, '2023-02-14'),
('Kipchoge Rotich', '0700222333', 'kipchoge.rotich@ke', 39, NULL, 4600.00, 3, NULL, 'Eldoret Town', 2, '2022-08-08'),

-- BLOC 5 : Noms en MAJUSCULES / minuscules / NULL
('ZANELE DLAMINI', '0821234567', 'zanele.dlamini@za.com', 31, 'Johannesburg', 5200.00, 5, 'active', '10 Sandton Drive', 4, '2021-01-10'),
('thabo nkosi', '0831111222', 'thabo.nkosi@gmail.com', 27, 'Cape Town', 4100.00, 5, 'Active', '3 Long Street', 1, '2022-04-01'),
(NULL, '0844567890', 'noname@company.co.za', 35, 'Durban', 3600.00, 5, 'active', '7 Marine Parade', 2, '2020-10-10'),
('  Lindiwe Zulu  ', '0855001122', 'lindiwe.zulu@', 42, 'Pretoria', 5800.00, 5, 'ACTIVE', '15 Church Street', 3, NULL),
('Sipho   Mthembu', NULL, NULL, 55, 'Bloemfontein', NULL, 5, 'inactive', NULL, NULL, '2017-06-15'),

-- BLOC 6 : Telephones mal formates / invalides
('Kofi Mensah', '0244123456', 'kofi.mensah@gmail.com', 28, 'Accra', 2500.00, 1, 'active', '12 Ring Road, Accra', 1, '2022-03-15'),
('Akosua Frimpong', 'N/A', 'akosua.frimpong@ghana.com', 34, 'Accra', 3000.00, 1, 'active', '20 Cantonments', 2, '2021-09-09'),
('Kwabena Asare', '000000000', 'kwabena.asare@mail.gh', 40, 'Tamale', 3700.00, 1, 'Active', 'Northern Region', 3, '2019-07-22'),
('Efua Mensah', '024412345678901234', 'efua.mensah@company.gh', 26, 'Cape Coast', 2600.00, 1, NULL, '5 University Rd', 4, '2023-03-30'),
('Nana Yaw Boadu', '(024) 411-2233', 'nanayaw@boadu@gh.com', 37, 'Kumasi', 4500.00, 1, 'active', 'Nhyiaeso', 5, '2020-05-05'),

-- BLOC 7 : hire_date dans le futur ou invalide
('Amara Diallo', '0033612345678', 'amara.diallo@france.fr', 29, 'Paris', 6500.00, 4, 'active', '12 Rue de la Paix', 1, '2099-12-31'),
('Oumar Coulibaly', '0022371234567', 'oumar@coulibaly', 33, 'Bamako', 2200.00, 4, 'Active', 'Badalabougou', 2, '0001-01-01'),
('Mariam Traore', NULL, 'mariam.traore@mail.ml', 48, 'Segou', 1800.00, 4, 'ACTIVE', NULL, 3, '1900-01-01'),
('Seydou Keita', '00223-60-111222', 'seydou.keita@sn.mail', 22, 'Dakar', NULL, 4, 'inactive', 'Plateau District', NULL, NULL),
('Kadiatou Bah', '224621000111', 'kadiatou.bah@', 19, 'Conakry', 1600.00, 4, 'stagiaire', '7 Kaloum', 4, '2024-06-15'),

-- BLOC 8 : Donnees mixtes absurdes
('Kofi Mensah', '0244123456', 'kofi.mensah@gmail.com', 28, 'Accra', 2500.00, 1, 'active', '12 Ring Road, Accra', 1, '2022-03-15'),
('123456', '0123456789', '123@456.789', 0, '???', -999.00, NULL, 'yes', 'no address', NULL, NULL),
('Test Employee', 'test', 'test@test', -1, 'TestCity', 0.00, NULL, 'TEST', 'Test Address 123', NULL, '2000-01-01'),
('John Doe', '555-1234', 'john.doe@example.com', 30, 'Accra', 3000.00, 1, 'active', '1 Main Street', 1, '2020-01-01'),
('Jane Doe', '555-1234', 'john.doe@example.com', 30, 'Accra', 3000.00, 1, 'active', '1 Main Street', 1, '2020-01-01'),

-- BLOC 9 : Emails sans domaine / sans TLD / espaces
('Precious Obi', '08033334444', 'precious obi@gmail.com', 26, 'Lagos', 3800.00, 2, 'active', '5 Lekki Phase 1', 1, '2022-10-10'),
('Emeka Eze', '07011112222', 'emeka.eze@.com', 44, 'Abuja', 5100.00, 2, 'Active', 'Garki District', 2, '2019-04-20'),
('Funke Adebayo', '09012223333', '@funke.adebayo.com', 31, 'Kano', 4300.00, 2, 'inactive', 'Sabon Gari', 3, NULL),
('Dele Olanrewaju', '08099998888', 'dele.olanrewaju', 39, 'Ibadan', 4700.00, 2, 'ACTIVE', 'Bodija Estate', 4, '2021-08-08'),
('Kemi Okonkwo', NULL, 'kemi@okonkwo@mail.com', 22, 'Enugu', 2900.00, 2, NULL, '3 GRA Enugu', 5, '2023-01-20'),

-- BLOC 10 : Villes NULL ou absurdes
('Abebe Girma', '+251911234567', 'abebe.girma@et.com', 34, NULL, 2700.00, 3, 'active', 'Bole Sub-city', 1, '2020-06-10'),
('Tigist Haile', '0911000111', 'tigist@haile', 29, 'ADDIS ABABA', 3100.00, 3, 'Active', '7 Churchill Ave', 2, '2021-03-25'),
('Dawit Bekele', NULL, 'dawit.bekele@gmail.com', 51, 'addis ababa', 4900.00, 3, 'ACTIVE', NULL, 3, '2018-09-15'),
('Hana Tesfaye', '+251-900-111222', 'hana.tesfaye@company', 23, '   ', 2400.00, 3, 'inactive', 'Kirkos District', 4, '2024-04-01'),
('Bereket Alemu', '0900222333', NULL, 37, 'Dire Dawa', NULL, 3, 'active', 'Industrial Zone', 5, '2019-11-30'),

-- BLOC 11 : department_id NULL
('Mariama Barry', '224622111000', 'mariama.barry@gn.com', 28, 'Conakry', 2100.00, 4, 'active', 'Ratoma', NULL, '2022-07-15'),
('Ibrahima Camara', '224628000111', 'ibrahima.camara@mail', 45, 'Kankan', 3400.00, 4, NULL, 'Centre Ville', NULL, '2020-02-20'),
('Fatoumata Sylla', NULL, 'fatoumata@sylla.gn', 33, 'Kindia', 2800.00, NULL, 'Active', '10 Rue Principale', 3, NULL),
('Mamadou Diallo', '00224-60-000111', 'mamadou.diallo@', 19, 'Labe', 1900.00, NULL, 'INACTIVE', NULL, NULL, '2024-09-01'),
('Aissatou Balde', '224621222333', 'aissatou.balde@company.gn', 60, 'Ziguinchor', 5500.00, NULL, 'active', 'Plateau', 2, '2016-01-10'),

-- BLOC 12 : Presque doublons (variations legeres)
('Ama Boateng', '0201234567', 'ama.boateng@gmail.com', 32, 'Kumasi', 3100.50, 1, 'Active', '45 Adum Street', 2, '2021-07-01'),
('AMA BOATENG', '020 123 4567', 'ama boateng@gmail.com', 32, 'kumasi', 3100.50, 1, 'active', '45 adum street', 2, '2021-07-01'),
('Zanele Dlamini', '082 123 4567', 'zanele.dlamini@za.com', 31, 'Johannesburg', 5200.00, 5, 'active', '10 Sandton Drive', 4, '2021-01-10'),
('zanele dlamini', '0821234567', 'ZANELE.DLAMINI@ZA.COM', 31, 'johannesburg', 5200.00, 5, 'Active', '10 sandton drive', 4, '2021-01-10'),

-- BLOC 13 : Salaire NULL + status bizarre + tout vide
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('N/A', 'N/A', 'N/A', NULL, 'N/A', NULL, NULL, 'N/A', 'N/A', NULL, NULL),
('UNKNOWN', '00000', 'unknown@unknown', 0, 'UNKNOWN', 0.00, NULL, 'unknown', 'UNKNOWN', NULL, NULL),
('Employee TBD', NULL, NULL, NULL, 'Accra', 3000.00, 1, 'pending', 'TBD', 1, NULL),
('Placeholder', '111', 'placeholder@mail', 25, 'Lagos', 100.00, 2, 'draft', 'No address', NULL, '2024-12-12'),

-- BLOC 14 : Pays NULL avec donnees valides
('Kwesi Annan', '0244567890', 'kwesi.annan@accra.gh', 36, 'Accra', 4200.00, NULL, 'active', 'East Legon', 1, '2021-06-20'),
('Esi Turkson', '0277654321', 'esi.turkson@mail.com', 29, 'Accra', 3700.00, NULL, 'Active', 'Osu Oxford Street', 2, '2022-09-15'),
('Nana Ama Poku', '0209876543', 'nanaama.poku@gh.net', 43, 'Kumasi', 5100.00, NULL, 'inactive', 'Adum Centre', 3, '2018-04-10'),

-- BLOC 15 : Telephones = texte libre
('Seun Adesanya', 'not provided', 'seun.adesanya@ng.com', 31, 'Lagos', 4400.00, 2, 'active', 'Yaba', 1, '2020-11-11'),
('Temi Ogundimu', 'see HR file', 'temi.ogundimu@company.ng', 26, 'Abuja', 3900.00, 2, 'Active', 'Wuse Zone 5', 2, '2021-05-05'),
('Dapo Balogun', 'confidential', 'dapo.balogun@ng.mail', 50, 'Kano', 6200.00, 2, 'inactive', 'Nasarawa GRA', 3, NULL),

-- BLOC 16 : Emails en double cross-personne
('Kofi Acheampong', '0244999888', 'kofi.mensah@gmail.com', 34, 'Accra', 3300.00, 1, 'active', NULL, 1, '2022-01-01'),
('Adjoa Boateng', '0201111222', 'ama boateng@gmail.com', 28, 'Kumasi', 2800.00, 1, 'active', NULL, 2, '2022-02-02'),

-- BLOC 17 : Ages absurdes
('Prosper Agbeko', '0303334455', 'prosper.agbeko@mail.gh', -99, 'Ho', 2300.00, 1, 'active', 'Volta Region', 4, '2021-03-03'),
('Sandra Opoku', '0302223344', 'sandra.opoku@gh.net', 200, 'Sunyani', 2700.00, 1, 'Active', 'Bono Region', 5, '2020-07-07'),
('Michael Baah', '0311112222', 'michael.baah@company.gh', NULL, 'Bolgatanga', 3200.00, 1, 'active', 'Upper East', 1, NULL),

-- BLOC 18 : Salaires avec trop de decimales
('Abigail Owusu', '0244100200', 'abigail.owusu@gh.com', 27, 'Accra', 3333.333333, 1, 'active', '8 Liberation Road', 2, '2023-05-01'),
('Emmanuel Quaye', '0241002003', 'emmanuel.quaye@mail', 45, 'Tema', 4444.444444, 1, NULL, 'Community 4', 3, '2019-10-10'),

-- BLOC 19 : Statuts en francais / langues melangees
('Diallo Amadou', '0022377889900', 'diallo.amadou@sn.com', 38, 'Dakar', 3600.00, 4, 'actif', 'Medina', 1, '2020-06-06'),
('Seydina Limamou', '0022378990011', 'seydina@limamou.sn', 44, 'Thies', 4100.00, 4, 'inactif', 'Randoulene', 2, '2018-08-08'),
('Rokhaya Diop', '0022379001122', 'rokhaya.diop@dakar.sn', 29, 'Dakar', 3200.00, 4, 'en_attente', '3 VDN', 3, '2021-11-11'),

-- BLOC 20 : Donnees completement fantaisistes
('!@#$%', '!@#$%^&*()', 'notanemail', -100, '!@#', -5000.00, NULL, '!@#$', '!@# Street', NULL, NULL),
('Dr. Smith-Williams Jr. III Esq.', '+1 (800) 555-HELP ext.123', 'dr.smith@williams@company.co.uk.ng.gh', 35, 'Lagos / Accra / Dakar', 99000.00, 2, 'Active Employee', '123 Fake Street, Apt 4B, Floor 7, Building C, Lagos Island, Nigeria, West Africa', 1, '2022-06-15'),
('Kofi Mensah', '0244123456', 'kofi.mensah@gmail.com', 28, 'Accra', 2500.00, 1, 'active', '12 Ring Road, Accra', 1, '2022-03-15');