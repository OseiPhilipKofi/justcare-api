
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `JUSTCARE`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--
CREATE DATABASE IF NOT EXISTS `JUSTCARE`;GRANT ALL PRIVILEGES ON `JUSTCARE`.* TO 'osei'@'localhost';GRANT ALL PRIVILEGES ON `JUSTCARE\_%`.* TO 'osei'@'localhost';
USE JUSTCARE;

CREATE TABLE IF NOT EXISTS `achievements` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `img` varchar(255) DEFAULT NULL,
  `header` varchar(255) DEFAULT NULL,
  `notes` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`img`, `header`, `notes`) VALUES
('award1.jpg', 'Academic Excellence', 'Our students consistently achieve top grades and awards.'),
('sports_trophy.jpg', 'Sports Achievements', 'Our teams have won numerous regional championships.'),
('ArtAward.jpg', 'Artistic Achievements', 'Recognition in arts and music competitions.'),
('ScienceFair.jpg', 'Science Fair', 'Awards from regional and national science fairs.'),
('CommunityService.jpg', 'Community Service', 'Acknowledgment for community service projects.'),
('Innovation.jpg', 'Innovation Awards', 'Awards for innovative projects and ideas.'),
('Leadership.jpg', 'Leadership Awards', 'Recognition for student leadership roles.'),
('Debate.jpg', 'Debate Competitions', 'Success in debate and public speaking events.'),
('Technology.jpg', 'Technology Awards', 'Awards for achievements in technology and coding.'),
('Sportsmanship.jpg', 'Sportsmanship', 'Recognition for fair play and sportsmanship.');

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

CREATE TABLE IF NOT EXISTS `administrators` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Fname` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `certificate` varchar(255) DEFAULT NULL,
  `office` varchar(255) DEFAULT NULL,
  `yearOfEmp` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `registerDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `userid` int(11) NOT NULL,
  `blogTitle` varchar(255) DEFAULT NULL,
  `blogDescription` varchar(255) DEFAULT NULL,
  `blogProfile` varchar(255) DEFAULT NULL,
  `blogType` varchar(255) DEFAULT NULL,
  `dateUploaded` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classschedules`
--

CREATE TABLE IF NOT EXISTS `classschedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `userid` int(11) NOT NULL,
  `classDate` varchar(255) DEFAULT NULL,
  `classTime` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `adminResponse` varchar(255) DEFAULT 'pending',
  `proposedDate` varchar(255) DEFAULT NULL,
  `dayOfBooking` varchar(255) DEFAULT NULL,
  FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE IF NOT EXISTS `clubs` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `clubName` varchar(255) DEFAULT NULL,
  `faculty` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`clubName`, `faculty`, `position`) VALUES
('Science Club', 'Science', 'President'),
('Drama Club', 'Arts', 'Vice President'),
('Chess Club', 'General', 'Member'),
('Math Club', 'Mathematics', 'Treasurer'),
('Debate Club', 'Language Arts', 'Secretary'),
('Robotics Club', 'Technology', 'Member'),
('Music Club', 'Arts', 'President'),
('Environmental Club', 'Science', 'Member'),
('Photography Club', 'Arts', 'Member'),
( 'Literature Club', 'Language Arts', 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `codeofconduct`
--

CREATE TABLE IF NOT EXISTS `codeofconduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `header` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `codeofconduct`
--

INSERT INTO `codeofconduct` (`header`, `content`) VALUES
('Respect', 'All students and staff must treat each other with respect and dignity.'),
('Integrity', 'Academic honesty and integrity are expected at all times.'),
('Safety', 'Maintain a safe and secure environment for everyone.'),
('Punctuality', 'Be on time for classes and school activities.'),
('Dress Code', 'Follow the school dress code at all times.'),
('Use of Technology', 'Use school technology responsibly and ethically.'),
('Bullying', 'Bullying of any kind is strictly prohibited.'),
('Attendance', 'Regular attendance is mandatory for all students.'),
('Property', 'Respect school property and the property of others.'),
('Environment', 'Keep the school environment clean and safe.');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE IF NOT EXISTS `contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `userid` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `emailMessageBody` varchar(255) DEFAULT NULL,
  `textMessageBody` varchar(255) DEFAULT NULL,
  `sentDay` varchar(255) DEFAULT NULL,
  `sentTime` varchar(255) NOT NULL,
  `emailRespond` varchar(255) DEFAULT NULL,
  `textRespond` varchar(255) DEFAULT NULL,
  `responseTime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `founders`
--

CREATE TABLE IF NOT EXISTS `founders` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `img` varchar(255) DEFAULT NULL,
  `header` varchar(255) DEFAULT NULL,
  `notes` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `img` varchar(255) DEFAULT NULL,
  `header` varchar(255) DEFAULT NULL,
  `notes` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`img`, `header`, `notes`) VALUES
('1.jpg', 'Establishment', 'Our school was founded in 1980 with a mission to provide quality education.'),
('2.jpg', 'Growth', 'Over the years, the school has expanded its facilities and programs.'),
('3.jpg', 'Community', 'We are proud of our strong community involvement and support.'),
('4.jpg', 'Milestones', 'Key milestones in the school’s development and achievements.'),
('5.jpg', 'Alumni', 'Notable alumni who have contributed to society.'),
('Facilities.jpg', 'Facilities', 'Overview of school facilities and infrastructure.'),
('6.jpg', 'Awards', 'Recognition and awards received by the school.'),
('Programs.jpg', 'Programs', 'Educational programs and extracurricular activities offered.'),
('7.jpg', 'Partnerships', 'Collaborations with other institutions and organizations.'),
('8.jpg', 'Future Plans', 'Vision for the school’s future growth and development.');

-- --------------------------------------------------------

--
-- Table structure for table `kitchenstaff`
--

CREATE TABLE IF NOT EXISTS `kitchenstaff` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Fname` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `certificate` varchar(255) DEFAULT NULL,
  `yearOfEmp` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `registerDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mission`
--

CREATE TABLE IF NOT EXISTS `mission` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `img` varchar(255) DEFAULT NULL,
  `header` varchar(255) DEFAULT NULL,
  `notes` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mission`
--

INSERT INTO `mission` (`img`, `header`, `notes`) VALUES
('1.png', 'Mission Statement', 'To provide a nurturing environment that fosters academic excellence and personal growth.'),
('2.png', 'Commitment', 'We are committed to developing responsible and knowledgeable citizens.'),
('3.png', 'Education', 'Deliver high-quality education to all students.'),
('4.png', 'Community', 'Engage with the community to support student success.'),
('5.png', 'Innovation', 'Incorporate innovative teaching methods and technology.'),
('6.png', 'Support', 'Provide support services for students and staff.'),
('7.png', 'Diversity', 'Promote diversity and inclusion within the school.'),
('8.png', 'Sustainability', 'Encourage sustainable practices and environmental awareness.'),
('9.png', 'Excellence', 'Strive for excellence in all aspects of school life.'),
('10.png', 'Collaboration', 'Foster collaboration among students, staff, and parents.');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE IF NOT EXISTS `newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `userid` int(11) NOT NULL,
  `accountHolder` varchar(255) DEFAULT NULL,
  `subscribedEmail` varchar(255) DEFAULT NULL,
  `subscribedTime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otherstaff`
--

CREATE TABLE IF NOT EXISTS `otherstaff` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Fname` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `certificate` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `yearOfEmp` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `registerDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ourvalues`
--

CREATE TABLE IF NOT EXISTS `ourvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `img` varchar(255) DEFAULT NULL,
  `header` varchar(255) DEFAULT NULL,
  `notes` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ourvalues`
--

INSERT INTO `ourvalues` ( `img`, `header`, `notes`) VALUES
('values_icon.png', 'Core Values', 'Integrity, Respect, Excellence, Collaboration, and Innovation.'),
('Respect.png', 'Respect', 'Treat everyone with respect and kindness.'),
('Honesty.png', 'Honesty', 'Be honest in all actions and communications.'),
('Responsibility.png', 'Responsibility', 'Take responsibility for your actions.'),
('Empathy.png', 'Empathy', 'Show empathy towards others.'),
('Perseverance.png', 'Perseverance', 'Demonstrate perseverance in challenges.'),
('Teamwork.png', 'Teamwork', 'Work collaboratively with others.'),
('Leadership.png', 'Leadership', 'Exhibit leadership qualities.'),
('Creativity.png', 'Creativity', 'Encourage creative problem-solving.'),
('Excellence.png', 'Excellence', 'Strive for excellence in all endeavors.');

-- --------------------------------------------------------

--
-- Table structure for table `outreach`
--

CREATE TABLE IF NOT EXISTS `outreach` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `img` varchar(255) DEFAULT NULL,
  `header` varchar(255) DEFAULT NULL,
  `notes` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `outreach`
--

INSERT INTO `outreach` (`img`, `header`, `notes`) VALUES
('outreach_event.jpg', 'Community Outreach', 'Engaging with the local community through various programs and events.'),
('volunteering.jpg', 'Volunteering', 'Encouraging students and staff to participate in volunteer activities.'),
('Fundraising.jpg', 'Fundraising', 'Organizing fundraising events to support school programs.'),
('Partnerships.jpg', 'Partnerships', 'Building partnerships with local businesses and organizations.'),
('Workshops.jpg', 'Workshops', 'Hosting educational workshops and seminars.'),
('Mentorship.jpg', 'Mentorship', 'Providing mentorship opportunities for students.'),
('Scholarships.jpg', 'Scholarships', 'Offering scholarships to deserving students.'),
('Environmental.jpg', 'Environmental Initiatives', 'Promoting environmental awareness and sustainability.'),
('Health.jpg', 'Health Programs', 'Implementing health and wellness programs.'),
('Cultural.jpg', 'Cultural Events', 'Celebrating cultural diversity through events.');

-- --------------------------------------------------------

--
-- Table structure for table `pagefunctionalities`
--

CREATE TABLE IF NOT EXISTS `pagefunctionalities` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `header` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pagefunctionalities`
--

INSERT INTO `pagefunctionalities` (`header`, `content`, `icon`) VALUES
('Attendance', 'Manage student attendance records', 'attendance_icon.png'),
('Grades', 'View and manage student grades', 'grades_icon.png'),
('Library', 'Access library resources and catalog', 'library_icon.png'),
('Exams', 'Schedule and manage exams', 'exams_icon.png'),
('Timetable', 'View and edit class timetables', 'timetable_icon.png'),
('Events', 'School events and calendar', 'events_icon.png'),
('Notifications', 'Send notifications to students and staff', 'notifications_icon.png'),
('Reports', 'Generate academic and attendance reports', 'reports_icon.png'),
('Resources', 'Access educational resources', 'resources_icon.png'),
('Support', 'Help and support center', 'support_icon.png');

-- --------------------------------------------------------

--
-- Table structure for table `securitystaff`
--

CREATE TABLE IF NOT EXISTS `securitystaff` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Fname` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `certificate` varchar(255) DEFAULT NULL,
  `yearOfEmp` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `registerDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `fullName` varchar(255) NOT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `enrollmentDate` date DEFAULT NULL,
  `gradeLevel` varchar(50) DEFAULT NULL,
  `guardianName` varchar(255) DEFAULT NULL,
  `guardianContact` varchar(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `registerTime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`fullName`, `gender`, `dateOfBirth`, `email`, `contact`, `address`, `city`, `country`, `enrollmentDate`, `gradeLevel`, `guardianName`, `guardianContact`, `status`, `profile`, `registerTime`) VALUES
('John Doe', 'Male', '2005-04-15', 'johndoe@example.com', '1234567890', '123 Main St', 'Anytown', 'Country', '2020-09-01', '10th Grade', 'Jane Doe', '0987654321', 'Active', 'profile1.jpg', '2025-07-11 08:49:08'),
('Jane Smith', 'Female', '2006-07-22', 'janesmith@example.com', '2345678901', '456 Elm St', 'Othertown', 'Country', '2021-09-01', '9th Grade', 'John Smith', '1234567890', 'Active', 'profile2.jpg', '2025-07-11 08:49:08'),
('Michael Johnson', 'Male', '2004-11-30', 'michaelj@example.com', '3456789012', '789 Oak St', 'Sometown', 'Country', '2019-09-01', '11th Grade', 'Mary Johnson', '2345678901', 'Active', 'profile3.jpg', '2025-07-11 08:49:08'),
('Emily Davis', 'Female', '2005-02-10', 'emilyd@example.com', '4567890123', '321 Pine St', 'Anytown', 'Country', '2020-09-01', '10th Grade', 'James Davis', '3456789012', 'Active', 'profile4.jpg', '2025-07-11 08:49:08'),
('William Brown', 'Male', '2006-05-18', 'williamb@example.com', '5678901234', '654 Maple St', 'Othertown', 'Country', '2021-09-01', '9th Grade', 'Patricia Brown', '4567890123', 'Active', 'profile5.jpg', '2025-07-11 08:49:08'),
('Olivia Wilson', 'Female', '2004-08-25', 'oliviaw@example.com', '6789012345', '987 Cedar St', 'Sometown', 'Country', '2019-09-01', '11th Grade', 'Robert Wilson', '5678901234', 'Active', 'profile6.jpg', '2025-07-11 08:49:08'),
('James Taylor', 'Male', '2005-12-05', 'jamest@example.com', '7890123456', '159 Spruce St', 'Anytown', 'Country', '2020-09-01', '10th Grade', 'Linda Taylor', '6789012345', 'Active', 'profile7.jpg', '2025-07-11 08:49:08'),
('Sophia Anderson', 'Female', '2006-03-15', 'sophiaa@example.com', '8901234567', '753 Birch St', 'Othertown', 'Country', '2021-09-01', '9th Grade', 'Barbara Anderson', '7890123456', 'Active', 'profile8.jpg', '2025-07-11 08:49:08'),
('Benjamin Thomas', 'Male', '2004-06-20', 'benjamint@example.com', '9012345678', '852 Walnut St', 'Sometown', 'Country', '2019-09-01', '11th Grade', 'Elizabeth Thomas', '8901234567', 'Active', 'profile9.jpg', '2025-07-11 08:49:08'),
('Isabella Martinez', 'Female', '2005-09-10', 'isabellam@example.com', '0123456789', '951 Chestnut St', 'Anytown', 'Country', '2020-09-01', '10th Grade', 'Christopher Martinez', '9012345678', 'Active', 'profile10.jpg', '2025-07-11 08:49:08');

-- --------------------------------------------------------

--
-- Table structure for table `supportstaff`
--

CREATE TABLE IF NOT EXISTS `supportstaff` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Fname` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `certificate` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `yearOfEmp` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `registerDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Fname` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `certificate` varchar(255) DEFAULT NULL,
  `classroom` varchar(255) DEFAULT NULL,
  `yearOfEmp` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `registerDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `img` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `faculty` varchar(255) DEFAULT NULL,
  `position` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`img`, `username`, `faculty`, `position`) VALUES
('principal.jpg', 'jdoe', 'Administration', 'Principal'),
('teacher1.jpg', 'asmith', 'Science', 'Science Teacher'),
('coach.jpg', 'bwilson', 'Physical Education', 'Coach'),
('counselor.jpg', 'mjohnson', 'Student Services', 'Counselor'),
('librarian.jpg', 'rlee', 'Library', 'Librarian'),
('admin_assistant.jpg', 'kwhite', 'Administration', 'Administrative Assistant'),
('it_specialist.jpg', 'dgreen', 'IT', 'IT Specialist'),
('nurse.jpg', 'bmartin', 'Health Services', 'School Nurse'),
('cafeteria_manager.jpg', 'swilson', 'Food Services', 'Cafeteria Manager'),
('security_chief.jpg', 'tclark', 'Security', 'Security Chief');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `fullName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` varchar(20) NOT NULL,
  `userPassword` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `registerTime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vision`
--

CREATE TABLE IF NOT EXISTS `vision` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `img` varchar(255) DEFAULT NULL,
  `header` varchar(255) DEFAULT NULL,
  `notes` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vision`
--

INSERT INTO `vision` ( `img`, `header`, `notes`) VALUES
('vision_icon.png', 'Vision Statement', 'To be a leading educational institution recognized for excellence and innovation.'),
('future_icon.png', 'Future als', 'Continuously improve and adapt to meet the needs of our students and community.'),
('Leadership.png', 'Leadership', 'Develop leadership skills in students and staff.'),
('Technology.png', 'Technology', 'Integrate technology to enhance learning experiences.'),
('Global.png', 'Global Perspective', 'Prepare students for a globalized world.'),
('Wellness.png', 'Wellness', 'Promote physical and mental wellness.'),
('Community.png', 'Community Engagement', 'Strengthen community ties and partnerships.'),
('Creativity.png', 'Creativity', 'Encourage creativity and critical thinking.'),
('Achievement.png', 'Achievement', 'Celebrate student and staff achievements.'),
('Growth.png', 'Growth', 'Support continuous personal and academic growth.');
