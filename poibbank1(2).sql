-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2015 at 01:14 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poibbank1`
--

-- --------------------------------------------------------

--
-- Table structure for table `currentacc`
--

CREATE TABLE IF NOT EXISTS `currentacc` (
  `currAcc_id` varchar(15) NOT NULL DEFAULT '',
  `lname` varchar(20) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `cust_id` int(15) DEFAULT NULL,
  `dateOpened` varchar(10) DEFAULT NULL,
  `AccUpdated` varchar(10) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currentacc`
--

INSERT INTO `currentacc` (`currAcc_id`, `lname`, `fname`, `cust_id`, `dateOpened`, `AccUpdated`, `balance`) VALUES
('51221', 'Armitage', 'John', 3, '13-May-04', '28-Nov-15', '3125.95'),
('51222', 'Blake', 'Mary', 302, '17-Jul-13', '27-Nov-15', '500.12'),
('51223', 'Creedon', 'Michael', 303, '19-Mar-15', '29_Nov-15', '-300.24'),
('51224', 'Brown', 'Peter', 16, '18-Jan-01', '30-Nov-15', '-2045.00'),
('51225', 'Doyle', 'Danny', 305, '24_Aug-01', '16-Nov-15', '25654.24'),
('51226', 'OHara', 'Jim', 306, '30-Sept-87', '30-Nov-15', '15217.00'),
('51227', 'Sharkey', 'William', 10, '1999-04-17', '2015-12-08', '3458.45');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `cust_id` int(15) NOT NULL,
  `lName` varchar(25) DEFAULT NULL,
  `fname` varchar(10) NOT NULL,
  `addressL1` varchar(30) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `town` varchar(20) DEFAULT NULL,
  `county` varchar(10) DEFAULT NULL,
  `branch_id` varchar(10) DEFAULT NULL,
  `phone` varchar(17) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `custStatus` varchar(8) DEFAULT NULL,
  `sdate` varchar(15) DEFAULT NULL,
  `job` varchar(25) DEFAULT NULL,
  `companyName` varchar(20) DEFAULT NULL,
  `maritalStatus` varchar(9) DEFAULT NULL,
  `loanAccType` varchar(15) DEFAULT NULL,
  `currAccType` varchar(15) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cust_id`, `lName`, `fname`, `addressL1`, `area`, `town`, `county`, `branch_id`, `phone`, `email`, `custStatus`, `sdate`, `job`, `companyName`, `maritalStatus`, `loanAccType`, `currAccType`) VALUES
(1, 'Buckley', 'Sheila', '56 Cloch Ard', 'Balnamore', 'Cavan', 'Cavan', '902238', '049-883727', 'sbuckley@yahoo.com', 'approved', '1997-01-15', 'Bookmaker', 'Bets are On', 'married', 'business', 'personal'),
(2, 'Allen', 'David', '23 Seamount Ave', 'Kerring', 'Carlow', 'Carlow', '901234', '051-123456', 'pallen@yahoo.com', 'approved', '2013-11-16', 'Engineer', 'Kenny Construction', 'married', 'mortgage', 'personal'),
(3, 'Armitage', 'John', '25 Millbank Drive', 'Eastside', 'Headford', 'Donegal', '908298', ' 097-339826', 'jarmitage@gmail.com', 'approved', '2001-01-29', 'Bank Employee', 'POIB', 'married', 'car loan', 'personal'),
(4, 'O Hara', 'Brendan', '36 Knocnaree Park', 'Dalfree', 'Armagh', 'Armagh', '807331', '0278-61284', 'bohara@gmail.com', 'approved', '1998-03-17', 'weaver', 'Home Crafts', 'married', 'business', 'personal'),
(5, 'Delaney', 'Paddy', '34 Rosewood', 'Ballindereen', 'Kinvara', 'Galway', '906655', '091-784926', 'pdelaney@eircom.net', 'approved', '2006-11-05', 'Garda', 'Kinvara Barracks', 'divorced', 'mortgage', 'personal'),
(6, 'Keenan', 'Dorothy', '37 Elm Grove', 'Armsley', 'Cork', 'Cork', '903045', '021-5573982', 'dkeenan@eircom.net', 'approved', '1999-05-16', 'Hairdresser', 'Hairstyles Supreme', 'married', 'car', 'personal'),
(7, 'Murphy', 'Donald', '16 Cloncille Park', 'Westside', 'Dingle', 'Kerry', '903308', '041-338672', 'dmurphy@eircom.net', 'approved', '2014-05-30', 'Carpenter', 'Dingle Woodwork', 'married', 'mortgage', 'personal'),
(8, 'Armstrong', 'Pat', '75 Daffodil Close', 'Blackwater', 'Tralee', 'Kerry', '902847', '061-449623', 'parmstrong@eircom.net', 'approved', '1998-17-03', 'Banker', 'POIB', 'married', 'mortgage', 'personal'),
(9, 'McDermott', 'Roger', '69 Ashford Walk', 'Lemley', 'Donegal', 'Donegal', '938572', '073-183726', 'rmcdermott@eircom.net', 'approved', '2000-11-18', 'Busdriver', 'Hartley Transport', 'single', 'car', 'personal'),
(10, 'Sharkey', 'William', '3 The Loft', 'Bankside', 'Castlerea', 'Roscommon', '902583', '098-338652', 'wsharkey@yahoo.net', 'approved', '1999-04-15', 'Bank Employee', 'POIB', 'single', 'car', 'personal'),
(11, 'Dalton', 'Clare', '84 Turnpike Rd', 'Livermead', 'Darlingford', 'Antrim', '909665', '0244-12345', 'cdalton@yahoo.com', 'approved', '2008-09-24', 'accountant', 'May Bros', 'divorced', 'mortgage', 'personal'),
(12, 'Langtree', 'Lily', '45 Edward St', 'The Strand', 'Sligo', 'Sligo', '928375', ' 071-883408', 'lilylang@gmail.com', 'approved', '2007-08-16', 'self employed', 'Lily''s Cafe', 'married', 'businesss', 'personal'),
(13, 'Goran', 'Mike', '25 Millbank Drive', 'Castletroy', 'Limerick', 'Limerick', '907754', '', 'howard@eircom.net', 'approved', '2014-05-30', 'solicitor', 'Crory Sols.', 'single', 'car', 'personal'),
(14, 'Lennon', 'Rory', '37 The Mews', 'Riverside', 'Ballina', 'Mayo', '9047335', '094-783112', 'rlennon@eircom.net', 'rejected', '2015-09-24', 'unemployed', 'none', 'single', 'none', 'none'),
(15, 'Kevin', 'Harmon', '51 Lismore Park', 'Salthill', 'Galway', 'Galway', '907364', '091-7786935', 'kharmon@gmail.com', 'approved', '2002-03-19', 'Dentist', 'Harmon Teeth', 'married', 'personal', 'personal'),
(16, 'Brown', 'Peter', '11 Fonsdale Rd', 'Bogside', 'Derry', 'Derry', '903318', '0266-426385', 'pbrown@yahoo.com', 'approved', '1992-12-16', 'Customer Service', 'POIB', 'married', 'mortgage', 'personal'),
(17, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22, '', 'mike', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, '', 'mike', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE IF NOT EXISTS `loans` (
  `loanAccType` varchar(15) NOT NULL DEFAULT '',
  `lName` varchar(25) DEFAULT NULL,
  `fname` varchar(20) NOT NULL,
  `cust_id` int(15) DEFAULT NULL,
  `numOfLoans` smallint(3) DEFAULT NULL,
  `loanAcc_id` int(15) DEFAULT NULL,
  `dopened` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `loanAcc2_id` int(15) DEFAULT NULL,
  `loan2Opened` date DEFAULT NULL,
  `loan2Update` varchar(12) DEFAULT NULL,
  `loan2balance` decimal(10,2) DEFAULT NULL,
  `sumLoansBal` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`loanAccType`, `lName`, `fname`, `cust_id`, `numOfLoans`, `loanAcc_id`, `dopened`, `updated`, `balance`, `loanAcc2_id`, `loan2Opened`, `loan2Update`, `loan2balance`, `sumLoansBal`) VALUES
('car loan', 'Armitage', 'John', 3, 1, 101, '2013-04-13', '2015-12-03', '14385.25', 0, NULL, NULL, NULL, '14385.23'),
('mortgage', 'Brown', 'Peter', 16, 2, 100, '2013-09-10', '2015-12-01', '21345.45', 200, '2014-02-12', '3-Dec-2015', '15000.00', '36345.45');

-- --------------------------------------------------------

--
-- Table structure for table `personnel`
--

CREATE TABLE IF NOT EXISTS `personnel` (
  `staff_id` int(6) NOT NULL,
  `lname` char(12) DEFAULT NULL,
  `fname` char(12) DEFAULT NULL,
  `address` varchar(35) DEFAULT NULL,
  `town` varchar(10) DEFAULT NULL,
  `county` varchar(12) DEFAULT NULL,
  `area` varchar(10) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `dateHired` varchar(10) DEFAULT NULL,
  `job` char(20) DEFAULT NULL,
  `branch_id` int(8) NOT NULL,
  `sal` decimal(7,2) DEFAULT NULL,
  `cust_id` int(12) DEFAULT NULL,
  `training` varchar(15) DEFAULT NULL,
  `comments` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personnel`
--

INSERT INTO `personnel` (`staff_id`, `lname`, `fname`, `address`, `town`, `county`, `area`, `phone`, `dateHired`, `job`, `branch_id`, `sal`, `cust_id`, `training`, `comments`) VALUES
(56000, 'Brown', 'Peter', '11 Fonsdale Road', 'Derry', 'Derry', '0266', 426385, '14-08-2000', 'Customer Service', 903318, '28000.00', 0, 'People Skills', 'Also trained as financial adviser'),
(56001, 'Arnold', 'Brian', '45 Palmyra St', 'Spiddal', 'Galway', '(091)', 278339, '21-Jun-92', 'Deskstaff', 903271, '30000.00', NULL, 'Customer Care', 'Has a very good rapport with customers'),
(56002, 'Armitage', 'John', '25 Millbank Drive', 'Headford', 'Donegal', '097', 339826, '30-01-2001', 'Accounts', 908298, '29000.00', 3, 'Financial IT ', 'Has expressed interest in Online Banking developments'),
(56003, 'Armstrong', 'Pat', '75 Daffodil Close', 'Tralee', 'Kerry', '061', 449623, '19-03-1998', 'branch manager', 902847, '40000.00', 8, 'Mgt Skills', 'Well like by staff. Very organised. Dealt well with inherited PR problems in the branch'),
(56004, 'Sharkey', 'William', '3 The Loft Bankside', 'Castlerea', 'Roscommon', '(098)', 338652, '23-07-2003', 'HR Trainer', 902583, '35000.00', 10, 'MBA', 'Runs courses nationwide');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currentacc`
--
ALTER TABLE `currentacc`
  ADD PRIMARY KEY (`currAcc_id`),
  ADD KEY `custID` (`cust_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`loanAccType`),
  ADD KEY `custID` (`cust_id`);

--
-- Indexes for table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cust_id` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
