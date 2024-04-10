-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2024 at 04:59 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java_lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Role` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_ID`, `User_ID`, `Role`) VALUES
(5, 21, 'Database Administrator'),
(6, 22, 'System Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `Attendance_ID` int(11) NOT NULL,
  `Student_ID` int(11) NOT NULL,
  `Course_ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`Attendance_ID`, `Student_ID`, `Course_ID`, `Date`, `Status`) VALUES
(11, 11006, 1, '2024-04-01', 'present'),
(12, 11007, 1, '2024-04-01', 'present'),
(13, 11008, 1, '2024-04-01', 'absent'),
(14, 11009, 1, '2024-04-01', 'present'),
(15, 11010, 1, '2024-04-01', 'absent');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Course_ID` int(11) NOT NULL,
  `Lecturer_ID` int(11) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Hours` int(11) NOT NULL,
  `Level` int(11) NOT NULL,
  `Credit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Course_ID`, `Lecturer_ID`, `Name`, `Hours`, `Level`, `Credit`) VALUES
(1, 11, 'Introduction to Programming', 60, 1, 3),
(2, 12, 'Web Development Fundamentals', 50, 2, 4),
(3, 13, 'Database Management Essentials', 70, 3, 5),
(4, 14, 'Software Engineering Principles', 60, 2, 3),
(5, 15, 'Machine Learning Basics', 50, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `Lecturer_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Position` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`Lecturer_ID`, `User_ID`, `Position`) VALUES
(11, 111, 'Senior Lecturer'),
(12, 112, 'Assistant Professor'),
(13, 113, 'Associate Professor'),
(14, 114, 'Professor'),
(15, 115, 'Adjunct Lecturer');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `Marks_ID` int(11) NOT NULL,
  `Quiz_1` int(11) NOT NULL,
  `Quiz_2` int(11) NOT NULL,
  `Quiz_3` int(11) NOT NULL,
  `Assignment_1` int(11) NOT NULL,
  `Assignment_2` int(11) NOT NULL,
  `Mid_Practical` int(11) DEFAULT NULL,
  `Mid_Theory` int(11) NOT NULL,
  `Final_Theory` int(11) NOT NULL,
  `Final_practical` int(11) DEFAULT NULL,
  `Course_ID` int(11) NOT NULL,
  `Student_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`Marks_ID`, `Quiz_1`, `Quiz_2`, `Quiz_3`, `Assignment_1`, `Assignment_2`, `Mid_Practical`, `Mid_Theory`, `Final_Theory`, `Final_practical`, `Course_ID`, `Student_ID`) VALUES
(1, 85, 90, 88, 95, 92, NULL, 85, 88, NULL, 1, 11006),
(2, 88, 92, 90, 94, 87, NULL, 82, 90, NULL, 1, 11007),
(3, 90, 91, 87, 93, 88, NULL, 88, 85, NULL, 1, 11008),
(4, 92, 93, 89, 95, 90, NULL, 90, 88, NULL, 1, 11009),
(5, 89, 90, 91, 92, 85, NULL, 86, 89, NULL, 1, 11010),
(6, 85, 90, 88, 95, 92, 90, 85, 88, 90, 2, 11006),
(7, 88, 92, 90, 94, 87, 87, 82, 90, 88, 2, 11007),
(8, 90, 91, 87, 93, 88, 89, 88, 85, 87, 2, 11008),
(9, 92, 93, 89, 95, 90, 88, 90, 88, 85, 2, 11009),
(10, 89, 90, 91, 92, 85, 85, 86, 89, 82, 2, 11010);

-- --------------------------------------------------------

--
-- Table structure for table `medical`
--

CREATE TABLE `medical` (
  `Medical_ID` int(11) NOT NULL,
  `Student_ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical`
--

INSERT INTO `medical` (`Medical_ID`, `Student_ID`, `Date`, `Status`) VALUES
(1, 11006, '2024-04-01', 'accepted'),
(2, 11007, '2024-04-01', 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `metireal`
--

CREATE TABLE `metireal` (
  `Metireal_ID` int(11) NOT NULL,
  `Course_ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Path` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `metireal`
--

INSERT INTO `metireal` (`Metireal_ID`, `Course_ID`, `Name`, `Path`) VALUES
(1, 1, 'Lecture Slides 1', '/path/to/lecture1.pdf'),
(2, 1, 'Lecture Slides 2', '/path/to/lecture2.pdf'),
(3, 2, 'Web Development Basics PDF', '/path/to/webdev.pdf'),
(4, 2, 'Web Development Fundamentals Presentation', '/path/to/webdev.pptx'),
(5, 3, 'Database Management Essentials', '/path/to/db_mgmt.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `Notice_ID` int(11) NOT NULL,
  `Discription` varchar(1000) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `Data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`Notice_ID`, `Discription`, `Title`, `Data`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et metus nec libero vestibulum tempor.', 'Important Notice', '2024-04-08'),
(2, 'Suspendisse potenti. Fusce sodales nibh eu erat varius, non vehicula justo ultrices.', 'Attention Required', '2024-04-09'),
(3, 'Quisque euismod venenatis magna, eget tempus turpis tempor nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 'Urgent Announcement', '2024-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_ID`, `User_ID`, `Level`) VALUES
(11006, 116, 2),
(11007, 117, 3),
(11008, 118, 4),
(11009, 119, 1),
(11010, 120, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tech_officer`
--

CREATE TABLE `tech_officer` (
  `Tech_officer_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tech_officer`
--

INSERT INTO `tech_officer` (`Tech_officer_ID`, `User_ID`) VALUES
(1, 23),
(2, 24),
(3, 25);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int(11) NOT NULL,
  `First_name` varchar(50) NOT NULL,
  `Mid_name` varchar(50) NOT NULL,
  `Last_name` varchar(50) NOT NULL,
  `NIC` char(20) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Gender` char(10) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `First_name`, `Mid_name`, `Last_name`, `NIC`, `Address`, `Email`, `Gender`, `Password`,`status`) VALUES
(21, 'Emma', '', 'Taylor', '123456789011V', '123 Main St', 'emma@example.com', 'female', 'password123','student'),
(22, 'William', '', 'Brown', '234567890122V', '456 Elm St', 'william@example.com', 'male', 'password456','student'),
(23, 'Sophia', '', 'Johnson', '345678901234V', '789 Oak St', 'sophia@example.com', 'female', 'password789','student'),
(24, 'Daniel', '', 'Anderson', '456789012345V', '321 Maple St', 'daniel@example.com', 'male', 'password101','student'),
(25, 'Olivia', '', 'Martinez', '567890123456V', '654 Pine St', 'olivia@example.com', 'female', 'password202','student'),
(26, 'Noah', '', 'Hernandez', '678901234567V', '987 Cedar St', 'noah@example.com', 'male', 'password303','lecturer'),
(27, 'Ava', '', 'Garcia', '789012345678V', '111 Walnut St', 'ava@example.com', 'female', 'password404','lecturer'),
(28, 'Ethan', '', 'Wilson', '890123456789V', '222 Elm St', 'ethan@example.com', 'male', 'password505','lecturer'),
(29, 'Mia', '', 'Thomas', '901234567890V', '333 Oak St', 'mia@example.com', 'female', 'password606','lecturer'),
(30, 'James', '', 'Rodriguez', '012345678901V', '444 Maple St', 'james@example.com', 'male', 'password707','lecturer'),
(111, 'John', '', 'Doe', '123456789012V', '123 Main St', 'john@example.com', 'male', 'password123','lecturer'),
(112, 'Alice', '', 'Smith', '2345678901234', '456 Elm St', 'alice@example.com', 'female', 'password456','lecturer'),
(113, 'Bob', '', 'Johnson', '3456789012345', '789 Oak St', 'bob@example.com', 'male', 'password789','lecturer'),
(114, 'Emily', '', 'Brown', '4567890123456', '321 Maple St', 'emily@example.com', 'female', 'password101','lecturer'),
(115, 'Michael', '', 'Davis', '5678901234567', '654 Pine St', 'michael@example.com', 'male', 'password202','TO'),
(116, 'Emma', '', 'Wilson', '6789012345678', '987 Cedar St', 'emma@example.com', 'female', 'password303','TO'),
(117, 'David', '', 'Martinez', '7890123456789', '111 Walnut St', 'david@example.com', 'male', 'password404','TO'),
(118, 'Olivia', '', 'Anderson', '8901234567890', '222 Elm St', 'olivia@example.com', 'female', 'password505','admin'),
(119, 'James', '', 'Garcia', '9012345678901', '333 Oak St', 'james@example.com', 'male', 'password606','admin'),
(120, 'Sophia', '', 'Hernandez', '0123456789012', '444 Maple St', 'sophia@example.com', 'female', 'password707','admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_phone`
--

CREATE TABLE `user_phone` (
  `User_ID` int(11) NOT NULL,
  `Number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_phone`
--

INSERT INTO `user_phone` (`User_ID`, `Number`) VALUES
(111, 1234567890),
(111, 2147483647),
(112, 2147483647),
(112, 2147483647),
(113, 2147483647),
(113, 2147483647),
(114, 2147483647),
(114, 123456789),
(115, 2147483647),
(115, 1234567890),
(116, 2147483647),
(116, 2147483647),
(117, 2147483647),
(117, 2147483647),
(118, 2147483647),
(118, 2147483647),
(119, 2147483647),
(119, 2147483647),
(120, 123456789);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`Attendance_ID`),
  ADD KEY `Course_ID` (`Course_ID`),
  ADD KEY `Student_ID` (`Student_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Course_ID`),
  ADD KEY `Lecturer_ID` (`Lecturer_ID`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`Lecturer_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`Marks_ID`),
  ADD KEY `Course_ID` (`Course_ID`),
  ADD KEY `Student_ID` (`Student_ID`);

--
-- Indexes for table `medical`
--
ALTER TABLE `medical`
  ADD PRIMARY KEY (`Medical_ID`),
  ADD KEY `Student_ID` (`Student_ID`);

--
-- Indexes for table `metireal`
--
ALTER TABLE `metireal`
  ADD PRIMARY KEY (`Metireal_ID`),
  ADD KEY `Course_ID` (`Course_ID`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`Notice_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `tech_officer`
--
ALTER TABLE `tech_officer`
  ADD PRIMARY KEY (`Tech_officer_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `NIC` (`NIC`);

--
-- Indexes for table `user_phone`
--
ALTER TABLE `user_phone`
  ADD KEY `User_ID` (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `Attendance_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `Course_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lecturer`
--
ALTER TABLE `lecturer`
  MODIFY `Lecturer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `Marks_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `medical`
--
ALTER TABLE `medical`
  MODIFY `Medical_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `metireal`
--
ALTER TABLE `metireal`
  MODIFY `Metireal_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `Notice_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11011;

--
-- AUTO_INCREMENT for table `tech_officer`
--
ALTER TABLE `tech_officer`
  MODIFY `Tech_officer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11031;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`student_ID`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`Lecturer_ID`) REFERENCES `lecturer` (`Lecturer_ID`);

--
-- Constraints for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD CONSTRAINT `lecturer_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`),
  ADD CONSTRAINT `marks_ibfk_2` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`student_ID`);

--
-- Constraints for table `medical`
--
ALTER TABLE `medical`
  ADD CONSTRAINT `medical_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`student_ID`);

--
-- Constraints for table `metireal`
--
ALTER TABLE `metireal`
  ADD CONSTRAINT `metireal_ibfk_1` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `tech_officer`
--
ALTER TABLE `tech_officer`
  ADD CONSTRAINT `tech_officer_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `user_phone`
--
ALTER TABLE `user_phone`
  ADD CONSTRAINT `user_phone_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
