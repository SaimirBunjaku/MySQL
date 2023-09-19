-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: programmingworld
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignments` (
  `AssignmentID` int NOT NULL AUTO_INCREMENT,
  `CourseID` int DEFAULT NULL,
  `AssignmentName` varchar(100) DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`AssignmentID`),
  KEY `CourseID` (`CourseID`),
  CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
INSERT INTO `assignments` VALUES (1,1,'Python Assignment 1','2023-09-20','Write a Python program to calculate Fibonacci numbers.'),(2,1,'Python Assignment 2','2023-09-27','Implement a Python application for data analysis.'),(3,2,'Java Programming Project','2023-09-25','Develop a Java application using object-oriented principles.'),(4,3,'Web Development Project 1','2023-09-30','Create a static website using HTML and CSS.'),(5,3,'Web Development Project 2','2023-10-07','Build a dynamic web application with JavaScript.'),(6,4,'Data Analysis Assignment','2023-10-02','Analyze a dataset using Python libraries.'),(7,5,'React Native App Project','2023-10-10','Develop a mobile app using React Native.'),(8,6,'Cybersecurity Project','2023-10-15','Analyze and secure a network against cyber threats.'),(9,6,'Cybersecurity Report','2023-10-20','Write a report on a cybersecurity case study.'),(10,7,'Software Engineering Project','2023-10-18','Design and implement a software application.'),(11,7,'Software Testing Assignment','2023-10-22','Create test cases and perform software testing.'),(12,8,'Front-End Development Project','2023-10-25','Develop a responsive web application.'),(13,8,'JavaScript Coding Challenge','2023-10-30','Solve JavaScript coding problems.'),(14,9,'Big Data Analytics Project','2023-11-02','Analyze large datasets and extract insights.'),(15,9,'Data Visualization Assignment','2023-11-05','Create data visualizations using appropriate tools.'),(16,10,'NLP Research Project','2023-11-08','Conduct research in natural language processing.'),(17,10,'NLP Text Classification Assignment','2023-11-12','Build a text classification model using NLP techniques.');
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coursematerials`
--

DROP TABLE IF EXISTS `coursematerials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coursematerials` (
  `CourseMaterialID` int NOT NULL AUTO_INCREMENT,
  `CourseID` int DEFAULT NULL,
  `MaterialName` varchar(100) DEFAULT NULL,
  `MaterialLink` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CourseMaterialID`),
  KEY `CourseID` (`CourseID`),
  CONSTRAINT `coursematerials_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursematerials`
--

LOCK TABLES `coursematerials` WRITE;
/*!40000 ALTER TABLE `coursematerials` DISABLE KEYS */;
INSERT INTO `coursematerials` VALUES (1,1,'Python Introduction Slides','https://example.com/python-intro-slides'),(2,1,'Python Tutorial PDF','https://example.com/python-tutorial-pdf'),(3,2,'Java Programming Lecture Notes','https://example.com/java-lecture-notes'),(4,2,'Java Code Examples','https://example.com/java-code-examples'),(5,3,'Web Development Fundamentals Videos','https://example.com/web-dev-fundamentals-videos'),(6,3,'HTML and CSS Resources','https://example.com/html-css-resources'),(7,4,'Data Analysis with Python Textbook','https://example.com/data-analysis-textbook'),(8,4,'Data Analysis Practice Datasets','https://example.com/data-analysis-datasets'),(9,5,'React Native App Development Guide','https://example.com/react-native-guide'),(10,5,'React Native Code Samples','https://example.com/react-native-code-samples'),(11,6,'Cybersecurity Fundamentals Slides','https://example.com/cybersecurity-fundamentals-slides'),(12,6,'Cybersecurity Case Studies','https://example.com/cybersecurity-case-studies'),(13,7,'Software Engineering Lecture Videos','https://example.com/software-engineering-lecture-videos'),(14,7,'Software Design Patterns Book','https://example.com/software-design-patterns-book'),(15,8,'Front-End Development Course Materials','https://example.com/frontend-development-course-materials'),(16,8,'JavaScript Frameworks Guide','https://example.com/javascript-frameworks-guide'),(17,9,'Big Data Analytics Tools and Resources','https://example.com/big-data-analytics-tools-resources'),(18,9,'Data Mining Techniques Handbook','https://example.com/data-mining-techniques-handbook'),(19,10,'Natural Language Processing Slides','https://example.com/nlp-slides'),(20,10,'NLP Research Papers Collection','https://example.com/nlp-research-papers');
/*!40000 ALTER TABLE `coursematerials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `CourseID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `DepartmentID` int DEFAULT NULL,
  `ProfessorID` int DEFAULT NULL,
  PRIMARY KEY (`CourseID`),
  KEY `DepartmentID` (`DepartmentID`),
  KEY `ProfessorID` (`ProfessorID`),
  CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`),
  CONSTRAINT `courses_ibfk_2` FOREIGN KEY (`ProfessorID`) REFERENCES `professors` (`ProfessorID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Introduction to Python',1,1),(2,'Java Programming',1,2),(3,'Web Development Fundamentals',2,3),(4,'Data Analysis with Python',3,4),(5,'Mobile App Development with React Native',4,5),(6,'Advanced Python Programming',1,6),(7,'Database Management with SQL',2,7),(8,'JavaScript Fundamentals',3,8),(9,'Machine Learning Foundations',5,9),(10,'Full-Stack Web Development with Node.js',3,10);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `DepartmentID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DepartmentID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (5,'AI and Machine Learning'),(9,'Big Data Analytics'),(1,'Computer Science'),(6,'Cybersecurity'),(3,'Data Science'),(8,'Front-End Development'),(4,'Mobile App Development'),(10,'Natural Language Processing'),(7,'Software Engineering'),(2,'Web Development');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departmentshead`
--

DROP TABLE IF EXISTS `departmentshead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departmentshead` (
  `DepartmentHeadID` int NOT NULL AUTO_INCREMENT,
  `DepartmentID` int DEFAULT NULL,
  `ProfessorID` int DEFAULT NULL,
  `ProfessorFirstName` varchar(50) DEFAULT NULL,
  `ProfessorLastName` varchar(50) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DepartmentHeadID`),
  KEY `DepartmentID` (`DepartmentID`),
  KEY `ProfessorID` (`ProfessorID`),
  CONSTRAINT `departmentshead_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`),
  CONSTRAINT `departmentshead_ibfk_2` FOREIGN KEY (`ProfessorID`) REFERENCES `professors` (`ProfessorID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departmentshead`
--

LOCK TABLES `departmentshead` WRITE;
/*!40000 ALTER TABLE `departmentshead` DISABLE KEYS */;
INSERT INTO `departmentshead` VALUES (1,1,1,'Mark','Johnson','Computer Science'),(2,2,2,'Emma','Wilson','Web Development'),(3,3,3,'Ivan','Ivanov','Data Science'),(4,4,4,'Mert','Kaya','Mobile App Development'),(5,5,5,'Anna','Kovalenko','AI and Machine Learning'),(6,6,6,'Sarah','Anderson','Cybersecurity'),(7,7,7,'Luigi','Ricci','Software Engineering'),(8,8,8,'Marina','Kuznetsova','Front-End Development'),(9,9,9,'Raul','Gonzalez','Big Data Analytics'),(10,10,10,'Hiroshi','Tanaka','Natural Language Processing');
/*!40000 ALTER TABLE `departmentshead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollments`
--

DROP TABLE IF EXISTS `enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollments` (
  `EnrollmentID` int NOT NULL AUTO_INCREMENT,
  `StudentID` int DEFAULT NULL,
  `CourseID` int DEFAULT NULL,
  `EnrollmentDate` date DEFAULT NULL,
  PRIMARY KEY (`EnrollmentID`),
  KEY `StudentID` (`StudentID`),
  KEY `CourseID` (`CourseID`),
  CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments`
--

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;
INSERT INTO `enrollments` VALUES (1,1,1,'2023-09-10'),(2,1,2,'2023-09-10'),(3,2,3,'2023-09-11'),(4,3,4,'2023-09-11'),(5,4,5,'2023-09-12'),(6,6,6,'2023-09-13'),(7,6,7,'2023-09-13'),(8,7,8,'2023-09-14'),(9,8,9,'2023-09-14'),(10,9,10,'2023-09-15'),(11,10,1,'2023-09-15'),(12,10,3,'2023-09-15'),(13,11,2,'2023-09-16'),(14,11,4,'2023-09-16'),(15,12,5,'2023-09-17'),(16,12,1,'2023-09-17'),(17,13,3,'2023-09-18'),(18,13,5,'2023-09-18'),(19,14,2,'2023-09-19'),(20,14,4,'2023-09-19');
/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exams` (
  `ExamID` int NOT NULL AUTO_INCREMENT,
  `CourseID` int DEFAULT NULL,
  `ExamName` varchar(100) DEFAULT NULL,
  `ExamDate` date DEFAULT NULL,
  `MaxScore` int DEFAULT NULL,
  PRIMARY KEY (`ExamID`),
  KEY `CourseID` (`CourseID`),
  CONSTRAINT `exams_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
INSERT INTO `exams` VALUES (1,1,'Python Midterm Exam','2023-10-10',100),(2,1,'Python Final Exam','2023-11-15',150),(3,2,'Java Programming Midterm Exam','2023-10-12',120),(4,2,'Java Programming Final Exam','2023-11-20',180),(5,3,'Web Development Midterm Exam','2023-10-18',100),(6,3,'Web Development Final Exam','2023-11-25',150),(7,4,'Data Analysis Midterm Exam','2023-10-20',100),(8,4,'Data Analysis Final Exam','2023-11-28',150),(9,5,'React Native Midterm Exam','2023-10-22',100),(10,5,'React Native Final Exam','2023-12-01',150),(11,6,'Cybersecurity Midterm Exam','2023-10-25',100),(12,6,'Cybersecurity Final Exam','2023-12-05',150),(13,7,'Software Engineering Midterm Exam','2023-10-28',120),(14,7,'Software Engineering Final Exam','2023-12-10',180),(15,8,'Front-End Development Midterm Exam','2023-11-01',100),(16,8,'Front-End Development Final Exam','2023-12-15',150),(17,9,'Big Data Analytics Midterm Exam','2023-11-05',100),(18,9,'Big Data Analytics Final Exam','2023-12-20',150),(19,10,'NLP Midterm Exam','2023-11-10',100),(20,10,'NLP Final Exam','2023-12-25',150);
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gradecomponents`
--

DROP TABLE IF EXISTS `gradecomponents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gradecomponents` (
  `ComponentID` int NOT NULL AUTO_INCREMENT,
  `CourseID` int DEFAULT NULL,
  `CourseName` varchar(100) DEFAULT NULL,
  `ComponentName` varchar(100) DEFAULT NULL,
  `Percentage` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`ComponentID`),
  KEY `CourseID` (`CourseID`),
  CONSTRAINT `gradecomponents_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradecomponents`
--

LOCK TABLES `gradecomponents` WRITE;
/*!40000 ALTER TABLE `gradecomponents` DISABLE KEYS */;
INSERT INTO `gradecomponents` VALUES (1,1,'Introduction to Python','Project',20.00),(2,1,'Introduction to Python','Presence',10.00),(3,1,'Introduction to Python','Midterm Exam',30.00),(4,1,'Introduction to Python','Final Exam',40.00),(5,2,'Java Programming','Project',25.00),(6,2,'Java Programming','Midterm Exam',35.00),(7,2,'Java Programming','Final Exam',40.00),(8,3,'Web Development Fundamentals','Project',20.00),(9,3,'Web Development Fundamentals','Presence',15.00),(10,3,'Web Development Fundamentals','Midterm Exam',30.00),(11,3,'Web Development Fundamentals','Final Exam',35.00),(12,4,'Data Analysis with Python','Project',20.00),(13,4,'Data Analysis with Python','Presence',5.00),(14,4,'Data Analysis with Python','Midterm Exam',35.00),(15,4,'Data Analysis with Python','Final Exam',40.00),(16,5,'Mobile App Development with React Native','Project',30.00),(17,5,'Mobile App Development with React Native','Midterm Exam',30.00),(18,5,'Mobile App Development with React Native','Final Exam',40.00),(19,6,'Cybersecurity','Project',25.00),(20,6,'Cybersecurity','Presence',10.00),(21,6,'Cybersecurity','Midterm Exam',30.00),(22,6,'Cybersecurity','Final Exam',35.00),(23,7,'Software Engineering','Project',20.00),(24,7,'Software Engineering','Midterm Exam',30.00),(25,7,'Software Engineering','Final Exam',50.00),(26,8,'Front-End Development','Project',30.00),(27,8,'Front-End Development','Presence',10.00),(28,8,'Front-End Development','Midterm Exam',30.00),(29,8,'Front-End Development','Final Exam',30.00),(30,9,'Big Data Analytics','Project',25.00),(31,9,'Big Data Analytics','Midterm Exam',35.00),(32,9,'Big Data Analytics','Final Exam',40.00),(33,10,'NLP','Project',20.00),(34,10,'NLP','Presence',10.00),(35,10,'NLP','Midterm Exam',35.00),(36,10,'NLP','Final Exam',35.00);
/*!40000 ALTER TABLE `gradecomponents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professors`
--

DROP TABLE IF EXISTS `professors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professors` (
  `ProfessorID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Nationality` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ProfessorID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professors`
--

LOCK TABLES `professors` WRITE;
/*!40000 ALTER TABLE `professors` DISABLE KEYS */;
INSERT INTO `professors` VALUES (1,'Mark','Johnson','mark.johnson@email.com','1980-09-05','American'),(2,'Emma','Wilson','emma.wilson@email.com','1975-04-12','English'),(3,'Ivan','Ivanov','ivan.ivanov@email.com','1982-07-20','Bulgarian'),(4,'Mert','Kaya','mert.kaya@email.com','1978-11-30','Turkish'),(5,'Anna','Kovalenko','anna.kovalenko@email.com','1985-03-15','Ukrainian'),(6,'Sarah','Anderson','sarah.anderson@email.com','1979-12-15','Canadian'),(7,'Luigi','Ricci','luigi.ricci@email.com','1983-03-25','Italian'),(8,'Marina','Kuznetsova','marina.kuznetsova@email.com','1981-06-10','Russian'),(9,'Raul','Gonzalez','raul.gonzalez@email.com','1980-02-18','Spanish'),(10,'Hiroshi','Tanaka','hiroshi.tanaka@email.com','1982-09-22','Japanese');
/*!40000 ALTER TABLE `professors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `StudentID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Nationality` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`StudentID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'John','Doe','john.doe@email.com','1995-03-15','American'),(2,'Alice','Smith','alice.smith@email.com','1998-08-21','English'),(3,'Elena','Petrova','elena.petrova@email.com','1997-05-10','Russian'),(4,'Mehmet','Yılmaz','mehmet.yilmaz@email.com','1996-12-03','Turkish'),(5,'Sophia','Papadopoulos','sophia.papadopoulos@email.com','1999-04-25','Greek'),(6,'Liridon','Krasniqi','liridon.krasniqi@email.com','1998-11-17','Albanian'),(7,'David','Jones','david.jones@email.com','1997-07-02','English'),(8,'Anna','Novak','anna.novak@email.com','1996-09-14','Hungarian'),(9,'Jasmine','Choi','jasmine.choi@email.com','1999-01-09','Korean'),(10,'Nikos','Pappas','nikos.pappas@email.com','1997-03-12','Greek'),(11,'Elira','Hoxha','elira.hoxha@email.com','1998-10-23','Albanian'),(12,'George','Smith','george.smith@email.com','1996-02-18','English'),(13,'Ahmed','Khalil','ahmed.khalil@email.com','1999-06-30','Egyptian'),(14,'Luisa','Silva','luisa.silva@email.com','1997-04-04','Portuguese'),(15,'Marius','Ionescu','marius.ionescu@email.com','1998-01-07','Romanian'),(16,'Artan','Hasani','artan.hasani@email.com','1995-08-12','Albanian'),(17,'Sophie','Brown','sophie.brown@email.com','1999-11-28','English'),(18,'Yusuf','Çelik','yusuf.celik@email.com','1997-10-05','Turkish'),(19,'Olga','Kuznetsova','olga.kuznetsova@email.com','1996-03-22','Russian'),(20,'Kostas','Papadakis','kostas.papadakis@email.com','1998-07-14','Greek'),(21,'Mariana','Silva','mariana.silva@email.com','1997-08-07','Brazilian'),(22,'Andrei','Popescu','andrei.popescu@email.com','1998-04-02','Romanian'),(23,'Hana','Kim','hana.kim@email.com','1996-11-29','Korean'),(24,'Fatima','Ahmed','fatima.ahmed@email.com','1999-05-18','Egyptian'),(25,'Dmitri','Ivanov','dmitri.ivanov@email.com','1997-07-14','Russian');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-19 16:34:43
