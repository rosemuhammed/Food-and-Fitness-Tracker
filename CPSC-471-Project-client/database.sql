-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 08, 2022 at 02:14 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `Professional_Username` varchar(15) NOT NULL,
  `Time` decimal(10,0) NOT NULL,
  `Date` date NOT NULL,
  `Client_Username` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `body_measurement`
--

CREATE TABLE `body_measurement` (
  `Username` varchar(15) NOT NULL,
  `Date` date NOT NULL,
  `Weight` decimal(4,1) DEFAULT NULL,
  `Waist` decimal(4,1) DEFAULT NULL,
  `Chest` decimal(4,1) DEFAULT NULL,
  `Hips` decimal(4,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cardio`
--

CREATE TABLE `cardio` (
  `Exercise_Name` varchar(15) NOT NULL,
  `Intensity` varchar(15) DEFAULT NULL,
  `TimePerformedInMins` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `Username` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`Username`) VALUES
('JennySmith123'),
('Jennys_Friend'),
('OneMoreFriend'),
('Test'),
('yujeong');

-- --------------------------------------------------------

--
-- Table structure for table `consists_of`
--

CREATE TABLE `consists_of` (
  `FoodID` varchar(32) NOT NULL,
  `Client_Username` varchar(15) NOT NULL,
  `Nutritionists_Username` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eats`
--

CREATE TABLE `eats` (
  `FoodID` varchar(32) NOT NULL,
  `Client_Username` varchar(15) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eats`
--

INSERT INTO `eats` (`FoodID`, `Client_Username`, `Date`) VALUES
('2%milk', 'JennySmith123', '2022-12-07'),
('Banana', 'yujeong', '2022-12-06');

-- --------------------------------------------------------

--
-- Table structure for table `exercise`
--

CREATE TABLE `exercise` (
  `Exercise_Name` varchar(15) NOT NULL,
  `Type` varchar(15) DEFAULT NULL,
  `Calories_Burned` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exercise`
--

INSERT INTO `exercise` (`Exercise_Name`, `Type`, `Calories_Burned`) VALUES
('ChestPress', 'Weight_Training', 67),
('Deadlift', 'Weight_Training', 84),
('LegPress', 'Weight_Training', 44),
('Martial Arts', 'Other', 79),
('Planks', 'Weight_Training', 39),
('Pushups', 'Weight_Training', 70),
('Running', 'Cardio', 114),
('SkippingRope', 'Cardio', 100),
('Squat', 'Weight_Training', 80),
('Stretching', 'Other', 27);

-- --------------------------------------------------------

--
-- Table structure for table `food_item`
--

CREATE TABLE `food_item` (
  `FoodID` varchar(32) NOT NULL,
  `Calories` int(11) DEFAULT NULL,
  `Carbs` decimal(10,0) DEFAULT NULL,
  `Protein` decimal(10,0) DEFAULT NULL,
  `Fat` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_item`
--

INSERT INTO `food_item` (`FoodID`, `Calories`, `Carbs`, `Protein`, `Fat`) VALUES
('2%Milk', 50, '5', '4', '2'),
('Banana', 85, '20', '1', '0'),
('BreakfastSausage', 341, '3', '13', '29'),
('Chicken', 149, '0', '24', '6'),
('FujiAppleRaw', 65, '16', '0', '0'),
('Green grapes', 80, '19', '1', '0'),
('Ketchup', 117, '27', '1', '1'),
('RomaineLettuceRaw', 21, '4', '1', '0'),
('White rice', 359, '80', '3', '1'),
('WhiteBread', 267, '49', '9', '4');

-- --------------------------------------------------------

--
-- Table structure for table `friends_with`
--

CREATE TABLE `friends_with` (
  `Friends_Username` varchar(15) NOT NULL,
  `Client_Username` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `friends_with`
--

INSERT INTO `friends_with` (`Friends_Username`, `Client_Username`) VALUES
('Jennys_Friend', 'JennySmith123'),
('yujeong', 'JennySmith123'),
('JennySmith123', 'Jennys_Friend'),
('Jennys_Friend', 'yujeong');

-- --------------------------------------------------------

--
-- Table structure for table `hires`
--

CREATE TABLE `hires` (
  `Client_Username` varchar(15) NOT NULL,
  `Feedback` varchar(256) DEFAULT NULL,
  `Professional_Username` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hires`
--

INSERT INTO `hires` (`Client_Username`, `Feedback`, `Professional_Username`) VALUES
('JennySmith123', 'Good work, I have sent a new meal plan', 'NancyNutritioni'),
('jennysmith123', 'Good', 'testing'),
('JennySmith123', 'Good Work!', 'TomTrainer2022'),
('Jennys_Friend', NULL, 'NancyNutritioni'),
('Jennys_Friend', NULL, 'testing'),
('Jennys_Friend', NULL, 'TomTrainer2022'),
('yujeong', 'hello', 'TomTrainer2022');

-- --------------------------------------------------------

--
-- Table structure for table `includes`
--

CREATE TABLE `includes` (
  `Exercise_Name` varchar(15) NOT NULL,
  `Client_Username` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `monitor`
--

CREATE TABLE `monitor` (
  `Username` varchar(15) NOT NULL,
  `Professional_Username` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nutritionist`
--

CREATE TABLE `nutritionist` (
  `Username` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nutritionist`
--

INSERT INTO `nutritionist` (`Username`) VALUES
('NancyNutritioni');

-- --------------------------------------------------------

--
-- Table structure for table `other_exercise`
--

CREATE TABLE `other_exercise` (
  `Exercise_Name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `other_exercise`
--

INSERT INTO `other_exercise` (`Exercise_Name`) VALUES
('Martial Arts'),
('Stretching');

-- --------------------------------------------------------

--
-- Table structure for table `other_professional`
--

CREATE TABLE `other_professional` (
  `Username` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `other_professional`
--

INSERT INTO `other_professional` (`Username`) VALUES
('OllyOther');

-- --------------------------------------------------------

--
-- Table structure for table `performs`
--

CREATE TABLE `performs` (
  `Exercise_Name` varchar(15) NOT NULL,
  `Client_Username` varchar(15) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `performs`
--

INSERT INTO `performs` (`Exercise_Name`, `Client_Username`, `Date`) VALUES
('skippingrope', 'JennySmith123', '2022-12-07'),
('SkippingRope', 'yujeong', '2022-12-06');

-- --------------------------------------------------------

--
-- Table structure for table `personal_trainer`
--

CREATE TABLE `personal_trainer` (
  `Username` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `personal_trainer`
--

INSERT INTO `personal_trainer` (`Username`) VALUES
('testing'),
('TomTrainer2022');

-- --------------------------------------------------------

--
-- Table structure for table `professional`
--

CREATE TABLE `professional` (
  `Username` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `professional`
--

INSERT INTO `professional` (`Username`) VALUES
('NancyNutritioni'),
('OllyOther'),
('testing'),
('TomTrainer2022');

-- --------------------------------------------------------

--
-- Table structure for table `professional’s_times_available`
--

CREATE TABLE `professional’s_times_available` (
  `Username` varchar(15) NOT NULL,
  `Date` date NOT NULL,
  `Time` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `professional’s_times_available`
--

INSERT INTO `professional’s_times_available` (`Username`, `Date`, `Time`) VALUES
('NancyNutritioni', '2022-12-09', '12'),
('testing', '2022-12-10', '12'),
('TomTrainer2022', '2022-11-07', '7'),
('TomTrainer2022', '2022-12-08', '10'),
('TomTrainer2022', '2022-12-08', '11'),
('TomTrainer2022', '2022-12-09', '20'),
('TomTrainer2022', '2022-12-22', '16'),
('TomTrainer2022', '2022-12-23', '12'),
('TomTrainer2022', '2022-12-25', '22');

-- --------------------------------------------------------

--
-- Table structure for table `recommended_meal_plan`
--

CREATE TABLE `recommended_meal_plan` (
  `FoodID` varchar(32) NOT NULL,
  `Client_Username` varchar(15) NOT NULL,
  `Nutritionists_Username` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recommended_meal_plan`
--

INSERT INTO `recommended_meal_plan` (`FoodID`, `Client_Username`, `Nutritionists_Username`) VALUES
('chicken', 'JennySmith123', 'NancyNutritioni');

-- --------------------------------------------------------

--
-- Table structure for table `recommends`
--

CREATE TABLE `recommends` (
  `Client_Username` varchar(15) NOT NULL,
  `Nutritionists_Username` varchar(15) NOT NULL,
  `FoodID` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recommends`
--

INSERT INTO `recommends` (`Client_Username`, `Nutritionists_Username`, `FoodID`) VALUES
('JennySmith123', 'NancyNutritioni', '2%Milk'),
('JennySmith123', 'NancyNutritioni', 'Chicken'),
('JennySmith123', 'NancyNutritioni', 'Green grapes');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Username` varchar(15) NOT NULL,
  `Password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Username`, `Password`) VALUES
('JennySmith123', 'Password321'),
('Jennys_Friend', 'Hello12'),
('NancyNutritioni', 'Nancy’sBirthday'),
('OllyOther', 'PW321'),
('OneMoreFriend', 'pasword*'),
('Test', 'Test'),
('testing', 'testing'),
('TomTrainer2022', 'Tom’sPW'),
('yujeong', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `weight_training`
--

CREATE TABLE `weight_training` (
  `Exercise_Name` varchar(15) NOT NULL,
  `Reps` int(11) DEFAULT NULL,
  `Weight_in_Pounds` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weight_training`
--

INSERT INTO `weight_training` (`Exercise_Name`, `Reps`, `Weight_in_Pounds`) VALUES
('ChestPress', 3, 130),
('Deadlift', 3, 125),
('LegPress', 3, 130),
('Squat', 3, 135);

-- --------------------------------------------------------

--
-- Table structure for table `will_do`
--

CREATE TABLE `will_do` (
  `Client_Username` varchar(15) NOT NULL,
  `Exercise_Name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `workout_routine`
--

CREATE TABLE `workout_routine` (
  `Client_Username` varchar(15) NOT NULL,
  `Exercise_Name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`Professional_Username`,`Time`,`Date`),
  ADD KEY `Client_Username` (`Client_Username`);

--
-- Indexes for table `body_measurement`
--
ALTER TABLE `body_measurement`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `cardio`
--
ALTER TABLE `cardio`
  ADD PRIMARY KEY (`Exercise_Name`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `consists_of`
--
ALTER TABLE `consists_of`
  ADD PRIMARY KEY (`FoodID`,`Client_Username`,`Nutritionists_Username`),
  ADD KEY `Client_Username` (`Client_Username`),
  ADD KEY `Nutritionists_Username` (`Nutritionists_Username`);

--
-- Indexes for table `eats`
--
ALTER TABLE `eats`
  ADD PRIMARY KEY (`FoodID`,`Client_Username`,`Date`),
  ADD KEY `Client_Username` (`Client_Username`);

--
-- Indexes for table `exercise`
--
ALTER TABLE `exercise`
  ADD PRIMARY KEY (`Exercise_Name`);

--
-- Indexes for table `food_item`
--
ALTER TABLE `food_item`
  ADD PRIMARY KEY (`FoodID`);

--
-- Indexes for table `friends_with`
--
ALTER TABLE `friends_with`
  ADD PRIMARY KEY (`Friends_Username`,`Client_Username`),
  ADD KEY `Client_Username` (`Client_Username`);

--
-- Indexes for table `hires`
--
ALTER TABLE `hires`
  ADD PRIMARY KEY (`Client_Username`,`Professional_Username`),
  ADD KEY `Professional_Username` (`Professional_Username`);

--
-- Indexes for table `includes`
--
ALTER TABLE `includes`
  ADD PRIMARY KEY (`Exercise_Name`,`Client_Username`),
  ADD KEY `Client_Username` (`Client_Username`);

--
-- Indexes for table `monitor`
--
ALTER TABLE `monitor`
  ADD PRIMARY KEY (`Username`,`Professional_Username`),
  ADD KEY `Professional_Username` (`Professional_Username`);

--
-- Indexes for table `nutritionist`
--
ALTER TABLE `nutritionist`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `other_exercise`
--
ALTER TABLE `other_exercise`
  ADD PRIMARY KEY (`Exercise_Name`);

--
-- Indexes for table `other_professional`
--
ALTER TABLE `other_professional`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `performs`
--
ALTER TABLE `performs`
  ADD PRIMARY KEY (`Exercise_Name`,`Client_Username`,`Date`),
  ADD KEY `Client_Username` (`Client_Username`);

--
-- Indexes for table `personal_trainer`
--
ALTER TABLE `personal_trainer`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `professional`
--
ALTER TABLE `professional`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `professional’s_times_available`
--
ALTER TABLE `professional’s_times_available`
  ADD PRIMARY KEY (`Username`,`Date`,`Time`);

--
-- Indexes for table `recommended_meal_plan`
--
ALTER TABLE `recommended_meal_plan`
  ADD PRIMARY KEY (`FoodID`,`Client_Username`,`Nutritionists_Username`),
  ADD KEY `Client_Username` (`Client_Username`),
  ADD KEY `Nutritionists_Username` (`Nutritionists_Username`);

--
-- Indexes for table `recommends`
--
ALTER TABLE `recommends`
  ADD PRIMARY KEY (`Client_Username`,`Nutritionists_Username`,`FoodID`),
  ADD KEY `Nutritionists_Username` (`Nutritionists_Username`),
  ADD KEY `FoodID` (`FoodID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Username`,`Password`);

--
-- Indexes for table `weight_training`
--
ALTER TABLE `weight_training`
  ADD PRIMARY KEY (`Exercise_Name`);

--
-- Indexes for table `will_do`
--
ALTER TABLE `will_do`
  ADD PRIMARY KEY (`Client_Username`,`Exercise_Name`),
  ADD KEY `Exercise_Name` (`Exercise_Name`);

--
-- Indexes for table `workout_routine`
--
ALTER TABLE `workout_routine`
  ADD PRIMARY KEY (`Client_Username`,`Exercise_Name`),
  ADD KEY `Exercise_Name` (`Exercise_Name`) USING BTREE;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`Client_Username`) REFERENCES `client` (`Username`),
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`Professional_Username`) REFERENCES `professional` (`Username`);

--
-- Constraints for table `body_measurement`
--
ALTER TABLE `body_measurement`
  ADD CONSTRAINT `body_measurement_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `user` (`Username`);

--
-- Constraints for table `cardio`
--
ALTER TABLE `cardio`
  ADD CONSTRAINT `cardio_ibfk_1` FOREIGN KEY (`Exercise_Name`) REFERENCES `exercise` (`Exercise_Name`);

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `user` (`Username`);

--
-- Constraints for table `consists_of`
--
ALTER TABLE `consists_of`
  ADD CONSTRAINT `consists_of_ibfk_1` FOREIGN KEY (`Client_Username`) REFERENCES `user` (`Username`),
  ADD CONSTRAINT `consists_of_ibfk_2` FOREIGN KEY (`Nutritionists_Username`) REFERENCES `nutritionist` (`Username`);

--
-- Constraints for table `eats`
--
ALTER TABLE `eats`
  ADD CONSTRAINT `eats_ibfk_1` FOREIGN KEY (`FoodID`) REFERENCES `food_item` (`FoodID`),
  ADD CONSTRAINT `eats_ibfk_2` FOREIGN KEY (`Client_Username`) REFERENCES `client` (`Username`);

--
-- Constraints for table `friends_with`
--
ALTER TABLE `friends_with`
  ADD CONSTRAINT `friends_with_ibfk_1` FOREIGN KEY (`Friends_Username`) REFERENCES `client` (`Username`),
  ADD CONSTRAINT `friends_with_ibfk_2` FOREIGN KEY (`Client_Username`) REFERENCES `client` (`Username`);

--
-- Constraints for table `hires`
--
ALTER TABLE `hires`
  ADD CONSTRAINT `hires_ibfk_1` FOREIGN KEY (`Client_Username`) REFERENCES `client` (`Username`),
  ADD CONSTRAINT `hires_ibfk_2` FOREIGN KEY (`Professional_Username`) REFERENCES `professional` (`Username`);

--
-- Constraints for table `includes`
--
ALTER TABLE `includes`
  ADD CONSTRAINT `includes_ibfk_1` FOREIGN KEY (`Exercise_Name`) REFERENCES `workout_routine` (`Exercise_Name`),
  ADD CONSTRAINT `includes_ibfk_2` FOREIGN KEY (`Client_Username`) REFERENCES `workout_routine` (`Client_Username`);

--
-- Constraints for table `monitor`
--
ALTER TABLE `monitor`
  ADD CONSTRAINT `monitor_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `body_measurement` (`Username`) ON DELETE CASCADE,
  ADD CONSTRAINT `monitor_ibfk_2` FOREIGN KEY (`Professional_Username`) REFERENCES `professional` (`Username`) ON DELETE CASCADE;

--
-- Constraints for table `nutritionist`
--
ALTER TABLE `nutritionist`
  ADD CONSTRAINT `nutritionist_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `professional` (`Username`);

--
-- Constraints for table `other_exercise`
--
ALTER TABLE `other_exercise`
  ADD CONSTRAINT `other_exercise_ibfk_1` FOREIGN KEY (`Exercise_Name`) REFERENCES `exercise` (`Exercise_Name`);

--
-- Constraints for table `other_professional`
--
ALTER TABLE `other_professional`
  ADD CONSTRAINT `other_professional_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `professional` (`Username`);

--
-- Constraints for table `performs`
--
ALTER TABLE `performs`
  ADD CONSTRAINT `performs_ibfk_1` FOREIGN KEY (`Exercise_Name`) REFERENCES `exercise` (`Exercise_Name`),
  ADD CONSTRAINT `performs_ibfk_2` FOREIGN KEY (`Client_Username`) REFERENCES `client` (`Username`);

--
-- Constraints for table `professional`
--
ALTER TABLE `professional`
  ADD CONSTRAINT `professional_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `user` (`Username`);

--
-- Constraints for table `professional’s_times_available`
--
ALTER TABLE `professional’s_times_available`
  ADD CONSTRAINT `professional’s_times_available_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `professional` (`Username`);

--
-- Constraints for table `recommended_meal_plan`
--
ALTER TABLE `recommended_meal_plan`
  ADD CONSTRAINT `recommended_meal_plan_ibfk_1` FOREIGN KEY (`FoodID`) REFERENCES `food_item` (`FoodID`),
  ADD CONSTRAINT `recommended_meal_plan_ibfk_2` FOREIGN KEY (`Client_Username`) REFERENCES `user` (`Username`),
  ADD CONSTRAINT `recommended_meal_plan_ibfk_3` FOREIGN KEY (`Nutritionists_Username`) REFERENCES `nutritionist` (`Username`);

--
-- Constraints for table `recommends`
--
ALTER TABLE `recommends`
  ADD CONSTRAINT `recommends_ibfk_1` FOREIGN KEY (`Client_Username`) REFERENCES `client` (`Username`),
  ADD CONSTRAINT `recommends_ibfk_2` FOREIGN KEY (`Nutritionists_Username`) REFERENCES `nutritionist` (`Username`),
  ADD CONSTRAINT `recommends_ibfk_3` FOREIGN KEY (`FoodID`) REFERENCES `food_item` (`FoodID`);

--
-- Constraints for table `weight_training`
--
ALTER TABLE `weight_training`
  ADD CONSTRAINT `weight_training_ibfk_1` FOREIGN KEY (`Exercise_Name`) REFERENCES `exercise` (`Exercise_Name`);

--
-- Constraints for table `will_do`
--
ALTER TABLE `will_do`
  ADD CONSTRAINT `will_do_ibfk_1` FOREIGN KEY (`Client_Username`) REFERENCES `client` (`Username`),
  ADD CONSTRAINT `will_do_ibfk_2` FOREIGN KEY (`Exercise_Name`) REFERENCES `workout_routine` (`Exercise_Name`);

--
-- Constraints for table `workout_routine`
--
ALTER TABLE `workout_routine`
  ADD CONSTRAINT `workout_routine_ibfk_1` FOREIGN KEY (`Client_Username`) REFERENCES `user` (`Username`),
  ADD CONSTRAINT `workout_routine_ibfk_2` FOREIGN KEY (`Exercise_Name`) REFERENCES `exercise` (`Exercise_Name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
