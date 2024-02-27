-- Structure de la table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `Bill_no` char(50) DEFAULT NULL,
  `Bill_patient_num` char(100) DEFAULT NULL,
  `Bill_patient_type` char(100) DEFAULT NULL,
  `Bill_doctor_charge` char(100) DEFAULT NULL,
  `Bill_f_charge` char(100) DEFAULT NULL,
  `Bill_amount` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `bill`
--

INSERT INTO `bill` (`Bill_no`, `Bill_patient_num`, `Bill_patient_type`, `Bill_doctor_charge`, `Bill_f_charge`, `Bill_amount`) VALUES
('1101', '0001', 'OutPatient', '2000', '250', '2250'),
('1102', '0002', 'OutPatient', '4000', '200', '4200'),
('1103', '0003', 'OutPatient', '1200', '200', '1400'),
('1104', '0004', 'OutPatient', '3000', '200', '3200'),
('1105', '0005', 'OutPatient', '2600', '200', '2800'),
('1106', '0006', 'OutPatient', '2000', '200', '2200'),
('1107', '9001', 'Patient', '300', '0', '300'),
('1108', '9002', 'Patient', '225', '0', '225'),
('1109', '9003', 'Patient', '125', '0', '125'),
('1110', '9004', 'Patient', '520', '0', '520'),
('1111', '9005', 'Patient', '190', '0', '190');

-- --------------------------------------------------------

--
-- Structure de la table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `dept_no` int DEFAULT NULL,
  `dept_name` char(100) DEFAULT NULL,
  `dept_director` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `department`
--

INSERT INTO `department` (`dept_no`, `dept_name`, `dept_director`) VALUES
(3013, 'Haematology', 'Max'),
(3014, 'Anaesthetics', 'Masse'),
(3015, 'Nephrology', 'Ferreira'),
(3016, 'Cardiology', 'Lenfant'),
(3017, 'Denta', 'Carlos'),
(3018, 'Gastroenterology', 'Porto'),
(3019, 'Pathology', 'Solinas');

-- --------------------------------------------------------

--
-- Structure de la table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `doc_no` char(50) DEFAULT NULL,
  `doc_lname` char(100) DEFAULT NULL,
  `doc_fname` char(100) DEFAULT NULL,
  `doc_address` char(100) DEFAULT NULL,
  `doc_telephone` char(100) DEFAULT NULL,
  `doc_salary_month` int DEFAULT NULL,
  `doc_dept` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `doctor`
--

INSERT INTO `doctor` (`doc_no`, `doc_lname`, `doc_fname`, `doc_address`, `doc_telephone`, `doc_salary_month`, `doc_dept`) VALUES
('5', 'David', 'José', '18 rue decmul', '0688665544', 2500, 'Anaesthetics'),
('6', 'Esteban', 'Miguel', '56 rue jean josé', '0795624835', 4200, 'Haematology'),
('7', 'Marie', 'Amélie', '06 rue jakba', '0634265895', 3400, 'Nephrology'),
('8', 'Antoine', 'Griezman', '52 avenue des champ élisé', '0695456235', 2005, 'Cardiology'),
('9', 'Chou', 'Fleur', '08 rue du potagé', '0715325685', 3150, 'Denta'),
('10', 'Carla', 'Malfois', '16 rue du parlement', '0672335544', 3900, 'Gastroenterology'),
('11', 'Nicolas', 'Hollande', '18 rue des lila', '0662348956', 5600, 'Pathology'),
('12', 'Sami', 'Bouchaib', '09 avenue du maréchal', '0645219575', 2500, 'Anaesthetics'),
('13', 'Pierre', 'Hyve', '47 rue du moignon', '0936554895', 4200, 'Haematology'),
('14', 'Joseline', 'Prevert', '46 rue des plantes', '0765953695', 3400, 'Nephrology'),
('15', 'Pied', 'Thon', '26 rue du trotoir', '0651324784', 2005, 'Cardiology'),
('16', 'Bras', 'Depitt', '92 rue des lettres', '0615325953', 3150, 'Denta'),
('17', 'Coude', 'Pouce', '78 rue de laide', '0795326594', 3900, 'Gastroenterology'),
('18', 'luc', 'Jean', '68 rue de la paix', '0669486525', 5600, 'Pathology'),
('19', 'Antoine', 'Danielle', '86 rue de la blague', '0645953256', 2200, 'Cardiology'),
('20', 'Jean', 'Patrice', '15 rue richard', '0765325985', 3600, 'Denta'),
('21', 'Car', 'Glass', '06 avenue de la révolution', '0795653525', 3000, 'Gastroenterology');

-- --------------------------------------------------------

--
-- Structure de la table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
CREATE TABLE IF NOT EXISTS `hospital` (
  `hsp_code` int DEFAULT NULL,
  `name` char(100) DEFAULT NULL,
  `location` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `hospital`
--

INSERT INTO `hospital` (`hsp_code`, `name`, `location`) VALUES
(1011, 'Hospital Tatooine', '40 Avenue Serge Dassault'),
(1012, 'Hospital Andor', '09 Rue Camille Flammarion'),
(1013, 'Hospital Naboo', '06 Avenue de Général de Gaulle'),
(1014, 'Hospital Coruscant', '09 Rue Camille Flammarion'),
(1015, 'Hospital Hoth', '18 Avenue de Verdun');

-- --------------------------------------------------------

--
-- Structure de la table `lab`
--

DROP TABLE IF EXISTS `lab`;
CREATE TABLE IF NOT EXISTS `lab` (
  `lab_no` int DEFAULT NULL,
  `lab_name` char(100) DEFAULT NULL,
  `lab_director` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `lab`
--

INSERT INTO `lab` (`lab_no`, `lab_name`, `lab_director`) VALUES
(1, 'Sidius', 'Palpatine'),
(2, 'R2D2', 'C3PO'),
(3, 'Dooku', 'Tiranus'),
(4, 'Vador', 'Dark'),
(5, 'Solo', 'Han');

-- --------------------------------------------------------

--
-- Structure de la table `nurse`
--

DROP TABLE IF EXISTS `nurse`;
CREATE TABLE IF NOT EXISTS `nurse` (
  `Nur_no` char(50) DEFAULT NULL,
  `Nur_lname` char(100) DEFAULT NULL,
  `Nur_fname` char(100) DEFAULT NULL,
  `Nur_address` char(100) DEFAULT NULL,
  `Nur_telephone` char(100) DEFAULT NULL,
  `Nur_salary` int DEFAULT NULL,
  `Nur_room` int DEFAULT NULL,
  `Nur_dept` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `nurse`
--

INSERT INTO `nurse` (`Nur_no`, `Nur_lname`, `Nur_fname`, `Nur_address`, `Nur_telephone`, `Nur_salary`, `Nur_room`, `Nur_dept`) VALUES
('8000', 'Organa', 'Leia', '16 avenue de langoulaire', '0915326545', 2100, 50, 'Cardiology'),
('8001', 'Fett', 'Boba', '16 rue de la vie', '0384659566', 2500, 51, 'Cardiology'),
('8002', 'Fett', 'Jango', '05 rue de général', '0765956532', 2100, 52, 'Cardiology'),
('8003', 'Skywalker', 'Luc', '58 avenue de la mouette', '0666959177', 2500, 53, 'Denta'),
('8004', 'Amidala', 'Padmé', '17 rue de la pop', '0645953595', 2220, 54, 'Denta'),
('8005', 'Kenobi', 'Obi-wan', '95 rue de Paris', '0795653525', 2600, 55, 'Pathology'),
('8006', 'Binks', 'Jarjar', '16 rue des coteaux', '0695658532', 3250, 56, 'Nephrology'),
('8007', 'Windu', 'Mace', '16 rue de la mer', '0795653214', 2500, 57, 'Nephrology'),
('8008', 'Jinn', 'Kui-gon', '35 rue de la faritas', '0695321574', 4200, 58, 'Denta'),
('8009', 'Kalarissian', 'Lando', '23 allée de la planète bleue', '0677585479', 5600, 59, 'Denta'),
('8010', 'Le wooki', 'Chewbacca', '20 rue de la tortue', '0645985625', 4200, 60, 'Nephrology'),
('8011', 'Tano', 'Ahsoka', '02 rue des rails', '0726957431', 2600, 55, 'Nephrology');

-- --------------------------------------------------------

--
-- Structure de la table `outpatient`
--

DROP TABLE IF EXISTS `outpatient`;
CREATE TABLE IF NOT EXISTS `outpatient` (
  `OPat_no` char(50) DEFAULT NULL,
  `OPat_lname` char(100) DEFAULT NULL,
  `OPat_fname` char(100) DEFAULT NULL,
  `OPat_address` char(100) DEFAULT NULL,
  `OPat_telephone` char(100) DEFAULT NULL,
  `oPat_room_num` char(100) DEFAULT NULL,
  `Opat_admission_date` char(100) DEFAULT NULL,
  `OPat_end_date` char(100) DEFAULT NULL,
  `OPat_Doctor_name` char(100) DEFAULT NULL,
  KEY `outpatient_index` (`OPat_lname`,`OPat_fname`,`OPat_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `outpatient`
--

INSERT INTO `outpatient` (`OPat_no`, `OPat_lname`, `OPat_fname`, `OPat_address`, `OPat_telephone`, `oPat_room_num`, `Opat_admission_date`, `OPat_end_date`, `OPat_Doctor_name`) VALUES
('0001', 'Yoda', 'Maitre', '180 rue dauxonne', '0678589635', '50', '09.09.2019', '11.09.2019', 'David José'),
('0002', 'BB', 'BB8', '26 rue de de Nervers', '0649655245', '51', '12.09.2019', '13.09.2019', 'Esteban Miguel'),
('0003', 'Ola', 'Vache', '19 rue du pré', '0744153259', '52', '14.09.2019', '16.09.2019', 'Marie Amélie'),
('0004', 'Solo', 'Ben', '84 rue de la forêt', '0648953521', '53', '14.09.2019', '15.09.2019', 'Antoine Griezman'),
('0005', 'Dameron', 'Poe', '34 rue du cinéma', '0755953254', '54', '16.09.2019', '17.09.2019', 'Chou Fleur'),
('0006', 'Erso', 'Jyn', '74 rue du sprint', '0695324595', '55', '18.09.2019', '19.09.2019', 'Carla Malfois'),
('0007', 'Maul', 'Dark', '58 route de la montagne', '0645328545', '55', '19.09.2019', '21.09.2019', 'Carla Malfois'),
('0008', 'Le-hutt', 'Jabba', '01 rue de la méfiance', '0725654785', '55', '21.09.2019', '25.09.2019', 'David José'),
('0009', 'Phasma', 'Captain', '74 rue du hokage', '0765321495', '53', '23.09.2019', '24.09.2019', 'David José');

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `Pat_no` char(50) DEFAULT NULL,
  `Pat_lname` char(100) DEFAULT NULL,
  `Pat_fname` char(100) DEFAULT NULL,
  `Pat_address` char(100) DEFAULT NULL,
  `Pat_telephone` char(100) DEFAULT NULL,
  `Pat_doctor` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `patient`
--

INSERT INTO `patient` (`Pat_no`, `Pat_lname`, `Pat_fname`, `Pat_address`, `Pat_telephone`, `Pat_doctor`) VALUES
('9001', 'Bane', 'Dark', '17 avenue du manoir', '0614856574', 'Marie Amélie'),
('9002', 'Djarin', 'Din', '17 avenue de la tête', '0795653515', 'Jean Patrice'),
('9003', 'Grievous', 'Général', '75 avenue du mouchoir', '0795321465', 'Car Glass'),
('9004', 'Hux', 'Armitaje', '65 avenue du transfert', '0795753265', 'Marina Pisa'),
('9005', 'Jarrus', 'Kanan', '94 rue insh', '0619853698', 'Mathilde Peyres'),
('9006', 'Bridger', 'Ezra', '45 rue la lampe', '0619664856', 'Colline Lemant'),
('9007', 'Koon', 'Plo', '61 rue alouette', '0619528285', 'Luc Jean'),
('9008', 'Kryze', 'Bo-katan', '09 rue de la course', '0695650215', 'Antoine Danielle'),
('9009', 'Lars', 'Own', '78 rue de la tasse', '0645020695', 'Coude Pouce'),
('9010', 'Potter', 'Harry', '96 avenue vauban', '0695850201', 'Bras Depitt'),
('9011', 'Fékir', 'Nabil', '16 rue de la tombe', '0703059532', 'Pied Thon');

-- --------------------------------------------------------

--
-- Structure de la table `researcher`
--

DROP TABLE IF EXISTS `researcher`;
CREATE TABLE IF NOT EXISTS `researcher` (
  `Res_no` char(50) DEFAULT NULL,
  `Res_lname` char(100) DEFAULT NULL,
  `Res_fname` char(100) DEFAULT NULL,
  `Res_address` char(100) DEFAULT NULL,
  `Res_telephone` char(100) DEFAULT NULL,
  `Res_salary` int DEFAULT NULL,
  `Res_status` char(100) DEFAULT NULL,
  `Res_specialty` char(100) DEFAULT NULL,
  `lab_name` char(100) DEFAULT NULL,
  KEY `Researcher_salary` (`Res_no`,`Res_lname`,`Res_fname`,`Res_salary`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `researcher`
--

INSERT INTO `researcher` (`Res_no`, `Res_lname`, `Res_fname`, `Res_address`, `Res_telephone`, `Res_salary`, `Res_status`, `Res_specialty`, `lab_name`) VALUES
('1011', 'Organa', 'Bail', '35 rue de la bouteille', '0755485965', 4600, 'full-timer', 'Anaesthetics', 'République'),
('1012', 'Skywalker', 'Rey', '48 rue de leau', '0654956585', 6500, 'Part-timer', 'Cardiology', 'unilab'),
('1013', 'Ren', 'Kylo', '16 rue du panier', '0605027565', 7000, 'full-timer', 'Pathology', 'Healthy'),
('1014', 'Hakuna', 'Matata', '75 rue du lyon', '0606060606', 6800, 'Part-timer', 'Denta', 'Carieland'),
('1015', 'Chand', 'Fennec', '13 rue de Marseille', '0613626598', 6200, 'full-timer', 'Haematology', 'République'),
('1016', 'Parker', 'Petter', '75 rue de la baguette', '0785020145', 6500, 'full-timer', 'Gastroenterology', 'Saint-Lazare'),
('1017', 'Leader', 'Suprême', '03 rue du feu', '0685956574', 3000, 'part-timer', 'Anaesthetics', 'république'),
('1018', 'Syndulla', 'Hera', '15 rue de la chine', '0785026595', 2300, 'full-timer', 'Anaesthetics', 'saint-lazare'),
('1019', 'Ti', 'Shaak', '14 rue de la ville', '0652956585', 3600, 'part-timer', 'Pathology', 'Carieland'),
('1020', 'Amiral', 'Grand', '24 rue de la picure', '0611223311', 5000, 'full-timer', 'Denta', 'Healthy'),
('1021', 'Tico', 'Rose', '45 rue savane', '0745026595', 4500, 'Part-timer', 'Haematology', 'République'),
('1022', 'Yaddle', 'Maitre', '14 rue du stream', '0645953202', 4900, 'full-timer', 'Gastroenterology', 'saint-lazare');

-- --------------------------------------------------------

--
-- Structure de la table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `Room_no` char(50) DEFAULT NULL,
  `Room_category` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `room`
--

INSERT INTO `room` (`Room_no`, `Room_category`) VALUES
('50', 'simple_room'),
('51', 'double_room'),
('52', 'simple_room'),
('53', 'double_room'),
('54', 'simple_room'),
('55', 'double_room'),
('56', 'double_room'),
('57', 'simple_room'),
('58', 'simple_room'),
('59', 'simple_room'),
('60', 'double_room');

-- --------------------------------------------------------

--
-- Structure de la table `technician`
--

DROP TABLE IF EXISTS `technician`;
CREATE TABLE IF NOT EXISTS `technician` (
  `Technician_no` char(50) DEFAULT NULL,
  `Technician_lname` char(100) DEFAULT NULL,
  `Technician_fname` char(100) DEFAULT NULL,
  `Technician_address` char(100) DEFAULT NULL,
  `Technician_telephone` char(100) DEFAULT NULL,
  `Technician_salary` int DEFAULT NULL,
  `Technician_specialty` char(100) DEFAULT NULL,
  `Technician_Lab_name` char(100) DEFAULT NULL,
  KEY `Technician_speciality` (`Technician_lname`,`Technician_fname`,`Technician_specialty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `technician`
--

INSERT INTO `technician` (`Technician_no`, `Technician_lname`, `Technician_fname`, `Technician_address`, `Technician_telephone`, `Technician_salary`, `Technician_specialty`, `Technician_Lab_name`) VALUES
('1', 'Wren', 'Sabine', '36 rue du market', '0603256595', 1385, 'Pipes', 'Saint-Lazare'),
('2', 'Lucas', 'Georges', '74 rue mermoze', '0603548595', 1385, 'Electric', 'Unilab'),
('3', 'Fisher', 'Carrie', '95 rue Belgique', '0685953295', 1385, 'Pipes', 'République'),
('4', 'Ford', 'Harrison', '36 rue du gaz', '0765958532', 1385, 'Electric', 'Carieland'),
('5', 'Hamill', 'Mark', '14 avenue georges', '0765953265', 1385, 'Pipes', 'Carieland'),
('6', 'LPPDGH', 'SamSam', '99 rue du luxe', '0795032569', 1385, 'Pipes', 'Unilab'),
('7', 'Le pompier', 'Sam', '66 rue du lac', '0695327515', 1385, 'Electric', 'Healthy'),
('8', 'Mon précieux', 'Golum', '18 rue de la vitesse', '0632651502', 1385, 'Pipes', 'République'),
('9', 'Sans nez', 'Voldemort', '16 rue manou', '0615325987', 1385, 'Electric', 'République');
COMMIT;

/*Sécruité de la base de donné*/

CREATE USER 'secure_user'@'localhost' IDENTIFIED BY 'secure_password';
GRANT SELECT, UPDATE ON MyDatabase.Employee TO 'secure_user'@'localhost';

-- Création de procédures stockées
DELIMITER //
CREATE PROCEDURE UpdateEmployeeSalary(IN empID INT, IN newSalary INT)
BEGIN
    UPDATE Employee SET Salary = newSalary WHERE EmployeeID = empID;
END;
//
DELIMITER ;

-- Création d'un index
CREATE INDEX idx_EmployeeLastName ON Employee(LastName);

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary INT
);

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);
