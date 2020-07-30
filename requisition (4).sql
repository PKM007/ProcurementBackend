-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2020 at 09:34 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `requisition`
--

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE `budget` (
  `id` int(40) NOT NULL,
  `dept` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `budget` int(40) NOT NULL,
  `current_balance` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `budget`
--

INSERT INTO `budget` (`id`, `dept`, `location`, `budget`, `current_balance`) VALUES
(1, 'Technical', 'Mumbai', 140000, 140000),
(2, 'HR', 'Mumbai', 150000, 150000),
(3, 'Testing', 'Mumbai', 120000, 120000),
(4, 'Management', 'Mumbai', 130000, 130000),
(5, 'IT', 'Mumbai', 100000, 100000),
(6, 'Electrical', 'Mumbai', 90000, 90000),
(7, 'Technical', 'Chennai', 140000, 140000),
(8, 'HR', 'Chennai', 150000, 150000),
(9, 'Electrical', 'Chennai', 90000, 90000),
(10, 'Testing', 'Chennai', 120000, 120000),
(11, 'Management', 'Chennai', 130000, 130000),
(12, 'IT', 'Chennai', 100000, 100000),
(13, 'Technical', 'Delhi', 140000, 140000),
(14, 'HR', 'Delhi', 150000, 150000),
(15, 'Management', 'Delhi', 130000, 130000),
(16, 'Testing', 'Delhi', 120000, 120000),
(17, 'IT', 'Delhi', 100000, 100000),
(18, 'Electrical', 'Delhi', 90000, 90000),
(19, 'Technical', 'Hyderabad', 140000, 140000),
(20, 'HR', 'Hyderabad', 150000, 150000),
(21, 'Testing', 'Hyderabad', 120000, 120000),
(22, 'Management', 'Hyderabad', 130000, 130000),
(23, 'IT', 'Hyderabad', 100000, 100000),
(24, 'Electrical', 'Hyderabad', 90000, 90000),
(25, 'Technical', 'Bangalore', 140000, 140000),
(26, 'HR', 'Bangalore', 150000, 150000),
(27, 'Testing', 'Bangalore', 120000, 120000),
(28, 'Management', 'Bangalore', 130000, 130000),
(29, 'IT', 'Bangalore', 100000, 100000),
(30, 'Electrical', 'Bangalore', 90000, 90000),
(31, 'Technical', 'Pune', 140000, 140000),
(32, 'HR', 'Pune', 150000, 150000),
(33, 'Testing', 'Pune', 120000, 120000),
(34, 'Management', 'Pune', 130000, 130000),
(35, 'IT', 'Pune', 100000, 100000),
(36, 'Electrical', 'Pune', 90000, 90000);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_no` int(40) NOT NULL,
  `billNo` int(40) NOT NULL,
  `item_id` int(40) NOT NULL,
  `invoice_date` varchar(200) NOT NULL,
  `invoice_due_date` varchar(200) NOT NULL,
  `credit_days` int(40) NOT NULL,
  `invoice_address` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `item_name` varchar(200) NOT NULL,
  `market_price` int(40) NOT NULL,
  `unit_price` int(40) NOT NULL,
  `ordered_quantity` int(40) NOT NULL,
  `invoiced_quantity` int(40) NOT NULL,
  `tax` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_no`, `billNo`, `item_id`, `invoice_date`, `invoice_due_date`, `credit_days`, `invoice_address`, `description`, `item_name`, `market_price`, `unit_price`, `ordered_quantity`, `invoiced_quantity`, `tax`) VALUES
(6, 1, 364, '2020-07-29', '2020-08-29', 30, 'Safaa Apartments, Guduvanchery, Chennai', 'Sample1', 'Desktop', 1500, 1500, 3, 3, 150),
(7, 4, 370, '2020-07-29', '2020-08-29', 30, 'Safaa Apartments', 'Sample 4', 'Desktop', 23000, 23000, 2, 2, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(40) NOT NULL,
  `name` varchar(200) NOT NULL,
  `sku` varchar(200) NOT NULL,
  `brand` varchar(200) NOT NULL,
  `price` int(40) NOT NULL,
  `currency` varchar(200) NOT NULL,
  `features` varchar(200) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `discount` double NOT NULL,
  `quantity` int(40) NOT NULL,
  `threshold` int(40) NOT NULL,
  `warranty` varchar(200) NOT NULL,
  `policy` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `name`, `sku`, `brand`, `price`, `currency`, `features`, `desc`, `discount`, `quantity`, `threshold`, `warranty`, `policy`, `location`) VALUES
(384, 'Hard Disk', 'TB12112121', 'Toshiba', 4500, 'INR', 'USB -3.0', '1 TB', 2.3, 8, 4, '1 year', '1 month', 'Delhi'),
(499, 'Laptop', 'SK2133232', 'HP', 30000, 'INR', 'Touch', 'Sample Item 2', 8.2, 6, 8, '1 year', 'None', 'Mumbai'),
(631, 'Laptop', 'PK21323212', 'HP', 45653, 'INR', 'Touch', 'Sample Item', 8.2, 6, 5, '1 year', '1 month', 'Chennai'),
(1507, 'Laptop', 'DL21212129', 'Dell', 50000, 'INR', '1 TB HDD | Intel i5', 'Windows 10 | 15 inch', 3.2, 5, 4, '1 year', '1 month', 'Mumbai'),
(1774, 'Laptop', 'SK2133232', 'HP', 30000, 'INR', 'Touch', 'Sample Item 2', 8.2, 6, 8, '1 year', 'None', 'Mumbai'),
(3738, 'Desktop', 'SK21323212', 'Asus', 35000, 'INR', 'TouchPad', 'Sample Item 2', 8.2, 6, 4, '1 year', '1 month', 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `item_images`
--

CREATE TABLE `item_images` (
  `id` int(40) NOT NULL,
  `item_id` int(40) NOT NULL,
  `imageName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_images`
--

INSERT INTO `item_images` (`id`, `item_id`, `imageName`) VALUES
(213, 1774, 'Graduation Photo.jpg'),
(214, 1774, 'my-passport-photo (2).jpg'),
(215, 1774, 'my-passport-photo (1).jpg'),
(216, 1774, 'IMG_20200212_114733.jpg'),
(225, 631, 'Graduation Photo.jpg'),
(226, 631, 'my-passport-photo (2).jpg'),
(227, 631, 'my-passport-photo (1).jpg'),
(228, 631, 'IMG_20200212_114733.jpg'),
(229, 499, 'Graduation Photo.jpg'),
(230, 499, 'my-passport-photo (2).jpg'),
(231, 499, 'my-passport-photo (1).jpg'),
(232, 499, 'IMG_20200212_114733.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `order_id`, `location`, `department`) VALUES
(241, 955, 'Chennai', 'Electrical'),
(252, 3099, 'Hyderabad', 'Management'),
(253, 3099, 'Delhi', 'IT'),
(290, 584, 'Mumbai', 'Electrical'),
(291, 584, 'Chennai', 'Electrical'),
(292, 584, 'Bengalore', 'HR'),
(309, 855, 'Chennai', 'Electrical'),
(310, 855, 'Hyderabad', 'Management'),
(315, 3755, 'Chennai', 'Electrical'),
(316, 3755, 'Hyderabad', 'Management'),
(321, 120, 'Hyderabad', 'Management'),
(322, 120, 'Delhi', 'IT'),
(336, 2354, 'Chennai', 'Electrical'),
(337, 2354, 'Pune', 'Management'),
(346, 3824, 'Hyderabad', 'Management'),
(347, 3824, 'Delhi', 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `type`) VALUES
(1, 'test1@test.com', '12345678', 'Requestor'),
(2, 'test2@test.com', '12345678', 'Supplier'),
(3, 'test3@test.com', '12345678', 'Approver');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `created_by` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `order_desc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `created_by`, `date`, `order_desc`) VALUES
(120, 'Alec', '0000-00-00', 'Sample Order 5'),
(584, 'Sam', '2020-05-02', 'Sample Order 5'),
(855, 'Harshit', '2020-05-11', 'Sample Order 2'),
(955, 'Jhonson ', '2020-02-11', 'Sample Order 4'),
(2354, 'Hritik', '2020-07-29', 'Sample Order 6'),
(3099, 'Alec', '0000-00-00', 'Sample Order 5'),
(3755, 'Harshit', '2020-05-11', 'Sample Order 2'),
(3824, 'Alec', '0000-00-00', 'Sample Order 5');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `specification` varchar(200) NOT NULL,
  `prefered_vendor` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_type` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `currency` varchar(200) NOT NULL,
  `custom` varchar(200) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `estimated_arrival` varchar(200) NOT NULL,
  `tracking_link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `name`, `specification`, `prefered_vendor`, `quantity`, `unit_type`, `price`, `currency`, `custom`, `comment`, `status`, `estimated_arrival`, `tracking_link`) VALUES
(306, 955, 'Desktop', '15 inch', 'Dell', 2, 'DX-2323', 23000, 'INR', 'Windows', 'Full Setup', '', '0000-00-00', ''),
(307, 3099, 'Desktop', '15 inch', 'Dell', 2, 'DX-2323', 23000, 'INR', 'Windows', 'Full Setup', '', '0000-00-00', ''),
(308, 3099, 'Hard Drive', '1 TB', 'Segate', 3, 'S-323', 3000, 'INR', 'USB-3.0', '', '', '0000-00-00', ''),
(344, 584, 'Desktop', '15 inch', 'Dell', 4, 'DX-2323', 23000, 'INR', '', '', 'Approved', '0000-00-00', ''),
(345, 584, 'Desktop', '15 inch', 'Dell', 2, 'DX-2323', 23000, 'INR', 'Windows', 'Full Setup', 'Confirmed', '0000-00-00', ''),
(346, 584, 'Wireless Router', 'Mid Range', 'Asus', 4, 'A-4324', 1300, 'INR', 'None', 'Reliable', 'Approved', '0000-00-00', ''),
(360, 855, 'Desktop', '15 inch', 'Dell', 2, 'DX-2323', 23000, 'INR', 'Windows', 'Full Setup', 'Pending', '', ''),
(361, 855, 'Wireless Router', 'Mid Range', 'Cisco', 3, 'C-4324', 1200, 'INR', 'None', 'Reliable', 'Pending', '', ''),
(364, 3755, 'Desktop', '15 inch', 'Dell', 2, 'DX-2323', 23000, 'INR', 'Windows', 'Full Setup', 'Item Delivered', '2020-07-30', 'https://sample.com'),
(365, 3755, 'Wireless Router', 'Mid Range', 'Cisco', 3, 'C-4324', 1200, 'INR', 'None', 'Reliable', 'Item Delivered', '2020-07-31', 'https://sample.com'),
(370, 120, 'Desktop', '15 inch', 'Dell', 2, 'DX-2323', 23000, 'INR', 'Windows', 'Full Setup', 'Item Delivered', '2020-08-12', 'https://sample.com'),
(385, 3824, 'Desktop', '15 inch', 'Dell', 2, 'DX-2323', 23000, 'INR', 'Windows', 'Full Setup', 'Approved', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `order_id`, `status`, `message`) VALUES
(85, 955, 'Pending', 'Pending waiting for approval'),
(91, 3099, 'Pending', 'Pending waiting for approval'),
(129, 855, 'Pending', 'Pending waiting for approval'),
(137, 3755, 'Item Delivered', 'Item Delivered-vendor'),
(138, 584, 'Confirmed', 'PO Accepted to Supplier'),
(145, 2354, 'Cancelled', 'Cancelled vendor not available'),
(146, 120, 'Item Delivered', 'Item Delivered-vendor'),
(151, 3824, 'Approved', 'Approved Request');

-- --------------------------------------------------------

--
-- Table structure for table `po`
--

CREATE TABLE `po` (
  `billNo` int(40) NOT NULL,
  `order_id` int(40) NOT NULL,
  `item_id` int(40) NOT NULL,
  `reqName` varchar(200) NOT NULL,
  `urg_msg` varchar(200) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `behalf` varchar(200) NOT NULL,
  `purchase_type` varchar(200) NOT NULL,
  `message` varchar(200) NOT NULL,
  `currency` varchar(200) NOT NULL,
  `org_billed` varchar(200) NOT NULL,
  `cmp_name` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `bill_to_address` varchar(200) NOT NULL,
  `delivery_to` varchar(200) NOT NULL,
  `required_by` varchar(200) NOT NULL,
  `delivery_address` varchar(200) NOT NULL,
  `cost_center` varchar(200) NOT NULL,
  `project_code` varchar(200) NOT NULL,
  `budget_code` varchar(200) NOT NULL,
  `item_name` varchar(200) NOT NULL,
  `quantity` int(40) NOT NULL,
  `price` int(40) NOT NULL,
  `total` int(40) NOT NULL,
  `tracking_link` varchar(200) NOT NULL,
  `estimated_arrival` varchar(200) NOT NULL,
  `po_status` varchar(200) NOT NULL,
  `message_client` varchar(200) NOT NULL,
  `invoice_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `po`
--

INSERT INTO `po` (`billNo`, `order_id`, `item_id`, `reqName`, `urg_msg`, `reason`, `comment`, `behalf`, `purchase_type`, `message`, `currency`, `org_billed`, `cmp_name`, `location`, `bill_to_address`, `delivery_to`, `required_by`, `delivery_address`, `cost_center`, `project_code`, `budget_code`, `item_name`, `quantity`, `price`, `total`, `tracking_link`, `estimated_arrival`, `po_status`, `message_client`, `invoice_status`) VALUES
(1, 3755, 364, 'Sample1', 'yes', 'Low supplies', 'Deliver fast', 'Prakhar', 'project', 'Check before delivering', 'INR', 'TCS', 'TCS', 'Chennai', '212 Safaa Apartments,Urappakkam\nChennai(603202)', 'Prakhar', '2020-05-21', ' Safaa Apartments,Urappakkam\nChennai(603202)', 'Technical', 'PR-3434', 'Bk-32332', 'Desktop', 2, 23000, 46000, 'https://sample.com', '2020-07-30', 'Item Delivered', 'Order Delivered by vendor', 'created'),
(2, 3755, 365, 'Sample2', 'yes', 'Low supplies', 'Fast delivery', 'John', 'project', 'Check before delivering', 'INR', 'TCS', 'TCS', 'Bengalore', 'Whitefield, Bengalore', 'John', '2020-05-22', 'Whitefield, Bengalore', 'Technical', 'PR-6454', 'KD-3233', 'Wireless Router', 3, 1200, 3600, 'https://sample.com', '2020-07-31', 'Item Delivered', 'Item Delivered-vendor', ''),
(3, 584, 345, 'Sample 3', 'yes', 'For new event', 'Deliver fast', 'Jhonson', 'project', 'Check before delivering', 'INR', 'TCS', 'TCS', 'Mumbai', 'Somewhere,Mumbai', 'Jhonson', '2020-05-27', 'Somewhere, Mumbai', 'Technical', 'PR-4343', 'NH-3443', 'Desktop', 2, 23000, 46000, '', '', '', '', ''),
(4, 120, 370, 'Alec', 'yes', 'Low supplies', 'Deliver fast', 'Prakhar', 'project', 'Deliver fast', 'INR', 'TCS', 'Tata Consulting Services', 'Chennai', 'House No.-212 Safaa Apartments,Urappakkam\nChennai(603202)', 'Prakhar', '2020-08-19', 'House No.-212 Safaa Apartments,Urappakkam\nChennai(603202)', 'HT-223', 'PJ-3434', 'BJ-232', 'Desktop', 2, 23000, 46000, 'https://sample.com', '2020-08-12', 'Item Delivered', 'Item Delivered-vendor', 'created');

-- --------------------------------------------------------

--
-- Table structure for table `po_attachments`
--

CREATE TABLE `po_attachments` (
  `id` int(40) NOT NULL,
  `billNo` int(40) NOT NULL,
  `attachments` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `po_attachments`
--

INSERT INTO `po_attachments` (`id`, `billNo`, `attachments`) VALUES
(9, 1, 'Prakhar Mishra report  (4).pdf'),
(10, 2, 'Prakhar Mishra report  (4).pdf'),
(11, 3, 'linked in.jpeg'),
(12, 4, 'sample - Sheet1 (4).csv');

-- --------------------------------------------------------

--
-- Table structure for table `po_status`
--

CREATE TABLE `po_status` (
  `id` int(40) NOT NULL,
  `billNo` int(40) NOT NULL,
  `order_id` int(40) NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `po_status`
--

INSERT INTO `po_status` (`id`, `billNo`, `order_id`, `status`) VALUES
(8, 1, 3755, 'Approved'),
(9, 2, 3755, 'Approved'),
(10, 3, 584, 'Approved'),
(11, 4, 120, 'Approved');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_no`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `item_images`
--
ALTER TABLE `item_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `po`
--
ALTER TABLE `po`
  ADD PRIMARY KEY (`billNo`);

--
-- Indexes for table `po_attachments`
--
ALTER TABLE `po_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billNo` (`billNo`);

--
-- Indexes for table `po_status`
--
ALTER TABLE `po_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billNo` (`billNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `budget`
--
ALTER TABLE `budget`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_no` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4941;

--
-- AUTO_INCREMENT for table `item_images`
--
ALTER TABLE `item_images`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4977;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `po`
--
ALTER TABLE `po`
  MODIFY `billNo` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `po_attachments`
--
ALTER TABLE `po_attachments`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `po_status`
--
ALTER TABLE `po_status`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `item_images`
--
ALTER TABLE `item_images`
  ADD CONSTRAINT `item_images_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`);

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`);

--
-- Constraints for table `order_status`
--
ALTER TABLE `order_status`
  ADD CONSTRAINT `order_status_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`);

--
-- Constraints for table `po_attachments`
--
ALTER TABLE `po_attachments`
  ADD CONSTRAINT `po_attachments_ibfk_1` FOREIGN KEY (`billNo`) REFERENCES `po` (`billNo`);

--
-- Constraints for table `po_status`
--
ALTER TABLE `po_status`
  ADD CONSTRAINT `po_status_ibfk_2` FOREIGN KEY (`billNo`) REFERENCES `po` (`billNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
