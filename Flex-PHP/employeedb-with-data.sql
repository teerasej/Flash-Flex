-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 17, 2011 at 02:52 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `employeedb`
--
CREATE DATABASE `employeedb` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `employeedb`;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `idDepartment` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idDepartment`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`idDepartment`, `Name`) VALUES
(1, 'Registration'),
(2, 'Financial'),
(3, 'Human Resource');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `idEmployee` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Surname` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Score` int(11) DEFAULT NULL,
  `Department_idDepartment` int(11) NOT NULL,
  PRIMARY KEY (`idEmployee`),
  KEY `fk_Employee_Department` (`Department_idDepartment`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`idEmployee`, `Name`, `Surname`, `Score`, `Department_idDepartment`) VALUES
(1, 'Ken', 'Teeradej', 2300, 2),
(2, 'Jeeja', 'Yanin', 1500, 1),
(3, 'Aum', 'Pacharapa', 1600, 1),
(4, 'Leonado', 'Decaprio', 3100, 1),
(5, 'James', 'Cameron', 1800, 2),
(6, 'Peter', 'Drucker', 2600, 2),
(7, 'Oprah', 'Winfrie', 3000, 2),
(8, 'Johny', 'Depp', 2900, 3);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `fk_Employee_Department` FOREIGN KEY (`Department_idDepartment`) REFERENCES `department` (`idDepartment`) ON DELETE NO ACTION ON UPDATE NO ACTION;
SET FOREIGN_KEY_CHECKS=1;
