--
--
--first create a database name project or execute this on phpmyadmin sql option--
--  CREATE DATABASE project;

--then execute all table command down bellow--

CREATE TABLE `logins` (
  `SL` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Time` datetime NOT NULL DEFAULT current_timestamp()
) 


CREATE TABLE `ce` (
  `SL` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `mname` varchar(25) NOT NULL,
  `regn` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `session` int(11) NOT NULL,
  `addate` date NOT NULL
)


CREATE TABLE `course` (
  `roll` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` varchar(10) NOT NULL,
  `department` varchar(10) NOT NULL
)
INSERT INTO `course` (`roll`, `course_id`, `course_name`, `department`) VALUES
(101, 1101, 'CSE-101', 'CSE'),
(101, 1102, 'CSE-102', 'CSE'),
(101, 1103, 'CSE-103', 'CSE'),
(101, 1104, 'CSE-104', 'CSE');



CREATE TABLE `cse` (
  `SL` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `mname` varchar(25) NOT NULL,
  `regn` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `session` int(11) NOT NULL,
  `addate` date NOT NULL
) 


CREATE TABLE `eee` (
  `SL` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `mname` varchar(25) NOT NULL,
  `regn` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `session` int(11) NOT NULL,
  `addate` date NOT NULL
) 


CREATE TABLE `result` (
  `c_id` int(11) NOT NULL,
  `semester` varchar(3) NOT NULL,
  `points` float NOT NULL,
  `grade` varchar(2) NOT NULL
)
INSERT INTO `result` (`c_id`, `semester`, `points`, `grade`) VALUES
(1101, '3rd', 3.55, 'A-'),
(1102, '3rd', 3.79, 'A'),
(101, '3rd', 3.55, 'A-'),
(102, '3rd', 3.79, 'A');


ALTER TABLE `ce`
  ADD PRIMARY KEY (`SL`);


ALTER TABLE `cse`
  ADD PRIMARY KEY (`SL`);


ALTER TABLE `eee`
  ADD PRIMARY KEY (`SL`);


ALTER TABLE `logins`
  ADD PRIMARY KEY (`SL`);




ALTER TABLE `ce`
  MODIFY `SL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `cse`
  MODIFY `SL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;


ALTER TABLE `eee`
  MODIFY `SL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `logins`
  MODIFY `SL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;
