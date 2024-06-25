-- CREATE DATABASE payroll;

-- CREATE TABLE IF NOT EXISTS `deductions` (
--   `deduction_id` int(5) NOT NULL AUTO_INCREMENT,
--   `philhealth` int(20) NOT NULL,
--   `bir` int(20) NOT NULL,
--   `gsis` int(20) NOT NULL,
--   `pag_ibig` int(20) NOT NULL,
--   `loans` int(20) NOT NULL,
--   PRIMARY KEY (`deduction_id`)
-- ) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --
-- Dumping data for table `deductions`
-- --

-- INSERT INTO `deductions` (`deduction_id`, `philhealth`, `bir`, `gsis`, `pag_ibig`, `loans`) VALUES
-- (1, 1, 5, 9, 2, 3);

-- --------------------------------------------------------

-- --
-- Table structure for table `employee`
-- --

-- CREATE TABLE IF NOT EXISTS `employee` (
--   `emp_id` int(10) NOT NULL AUTO_INCREMENT,
--   `lname` varchar(20) NOT NULL,
--   `fname` varchar(20) NOT NULL,
--   `gender` varchar(6) NOT NULL,
--   `emp_type` varchar(20) NOT NULL,
--   `division` varchar(30) NOT NULL,
--   `deduction` int(10) NOT NULL,
--   `overtime` int(10) NOT NULL,
--   `bonus` int(10) NOT NULL,
--   PRIMARY KEY (`emp_id`)
-- ) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --
-- Dumping data for table `employee`
-- --

-- INSERT INTO `employee` (`emp_id`, `lname`, `fname`, `gender`, `emp_type`, `division`, `deduction`, `overtime`, `bonus`) VALUES
-- (1, 'Conde', 'Lalaine', 'Female', 'Casual', 'Admin', 2, 8, 8000),
-- (2, 'Fremista', 'Lara', 'Female', 'Job Order', 'Human Resource', 1, 7, 7000),
-- (3, 'Garcia', 'Russell', 'Male', 'Regular', 'MIS', 3, 6, 6000),
-- (4, 'Flores', 'Andrea', 'Female', 'Regular', 'Accounting', 5, 5, 5000),

-- --------------------------------------------------------

-- --
-- Table structure for table `overtime`
-- --

-- CREATE TABLE IF NOT EXISTS `overtime` (
--   `ot_id` int(10) NOT NULL AUTO_INCREMENT,
--   `rate` int(10) NOT NULL,
--   `none` int(2) NOT NULL,
--   PRIMARY KEY (`ot_id`)
-- ) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --
-- Dumping data for table `overtime`
-- --

-- INSERT INTO `overtime` (`ot_id`, `rate`, `none`) VALUES
-- (1, 25, 0);

-- --------------------------------------------------------

-- --
-- Table structure for table `salary`
-- --

-- CREATE TABLE IF NOT EXISTS `salary` (
--   `salary_id` int(10) NOT NULL AUTO_INCREMENT,
--   `salary_rate` int(10) NOT NULL,
--   `none` int(10) NOT NULL,
--   PRIMARY KEY (`salary_id`)
-- ) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --
-- Dumping data for table `salary`
-- --

-- INSERT INTO `salary` (`salary_id`, `salary_rate`, `none`) VALUES
-- (1, 20000, 0);

-- --------------------------------------------------------

-- --
-- Table structure for table `user`
-- --

-- CREATE TABLE IF NOT EXISTS `user` (
--   `id` int(5) NOT NULL AUTO_INCREMENT,
--   `username` varchar(20) NOT NULL,
--   `password` varchar(20) NOT NULL,
--   PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --
-- Dumping data for table `user`
-- --

-- INSERT INTO `user` (`id`, `username`, `password`) VALUES
-- (1, 'Conde', 'Lalaine'),
-- (2, 'Fremista', 'Lara');
-- (3, 'admin', 'admin');
