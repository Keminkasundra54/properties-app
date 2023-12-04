/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: holidays
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `holidays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loggedBy` varchar(255) DEFAULT NULL,
  `labeltype` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: timeentries
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `timeentries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `loggedBy` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `timestamp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3011 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: users
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `lastName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `profilePic` varchar(255) DEFAULT NULL,
  `tempToken` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE = InnoDB AUTO_INCREMENT = 13 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: holidays
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: timeentries
# ------------------------------------------------------------

INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1,
    'CHECKIN',
    '1',
    '2022-10-04 04:51:14',
    '2022-10-07 23:31:36',
    '2022-10-03 16:21:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2,
    'BREAKIN',
    '1',
    '2022-10-04 04:51:16',
    '2022-10-07 23:31:36',
    '2022-10-03 16:21:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    3,
    'BREAKOUT',
    '1',
    '2022-10-04 04:51:17',
    '2022-10-07 23:31:36',
    '2022-10-03 16:21:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    4,
    'CHECKIN',
    '2',
    '2022-10-04 05:18:19',
    '2022-10-07 23:31:36',
    '2022-10-03 16:48:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    5,
    'BREAKIN',
    '2',
    '2022-10-04 05:18:21',
    '2022-10-07 23:31:36',
    '2022-10-03 16:48:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    6,
    'BREAKOUT',
    '2',
    '2022-10-04 05:18:24',
    '2022-10-07 23:31:36',
    '2022-10-03 16:48:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    7,
    'BREAKIN',
    '1',
    '2022-10-04 06:39:09',
    '2022-10-07 23:31:36',
    '2022-10-03 18:09:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    8,
    'BREAKOUT',
    '1',
    '2022-10-04 06:39:11',
    '2022-10-07 23:31:36',
    '2022-10-03 18:09:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    9,
    'CHECKOUT',
    '1',
    '2022-10-04 06:39:12',
    '2022-10-07 23:31:36',
    '2022-10-03 18:09:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    10,
    'CHECKIN',
    '2',
    '2022-10-06 06:42:12',
    '2022-10-07 23:31:36',
    '2022-10-05 18:12:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    11,
    'CHECKOUT',
    '2',
    '2022-10-06 06:42:13',
    '2022-10-07 23:31:36',
    '2022-10-05 18:12:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    12,
    'CHECKIN',
    '5',
    '2022-10-06 23:13:41',
    '2022-10-07 23:31:36',
    '2022-10-06 10:43:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    13,
    'CHECKIN',
    '4',
    '2022-10-06 23:13:42',
    '2022-10-07 23:31:36',
    '2022-10-06 10:43:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    14,
    'CHECKIN',
    '3',
    '2022-10-06 23:13:43',
    '2022-10-07 23:31:36',
    '2022-10-06 10:43:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    15,
    'CHECKIN',
    '7',
    '2022-10-06 23:14:07',
    '2022-10-07 23:31:36',
    '2022-10-06 10:44:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    16,
    'BREAKIN',
    '4',
    '2022-10-07 00:48:59',
    '2022-10-07 23:31:36',
    '2022-10-06 12:18:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    17,
    'BREAKIN',
    '5',
    '2022-10-07 00:50:13',
    '2022-10-07 23:31:36',
    '2022-10-06 12:20:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    18,
    'BREAKIN',
    '7',
    '2022-10-07 00:50:15',
    '2022-10-07 23:31:36',
    '2022-10-06 12:20:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    19,
    'CHECKIN',
    '3',
    '2022-10-07 01:06:16',
    '2022-10-07 23:31:36',
    '2022-10-06 12:36:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    20,
    'BREAKIN',
    '3',
    '2022-10-07 01:06:18',
    '2022-10-07 23:31:36',
    '2022-10-06 12:36:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    21,
    'BREAKOUT',
    '7',
    '2022-10-07 01:06:58',
    '2022-10-07 23:31:36',
    '2022-10-06 12:36:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    22,
    'BREAKOUT',
    '3',
    '2022-10-07 01:38:02',
    '2022-10-07 23:31:36',
    '2022-10-06 13:08:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    23,
    'BREAKOUT',
    '4',
    '2022-10-07 01:48:33',
    '2022-10-07 23:31:36',
    '2022-10-06 13:18:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    24,
    'CHECKIN',
    '1',
    '2022-10-08 12:05:44',
    '2022-10-07 23:35:44',
    'Sat Oct 08 2022 12:05:44 GMT+0530 (India Standard Time)'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    25,
    'BREAKIN',
    '1',
    '2022-10-08 12:05:53',
    '2022-10-07 23:35:53',
    'Sat Oct 08 2022 12:05:52 GMT+0530 (India Standard Time)'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    26,
    'BREAKOUT',
    '1',
    '2022-10-08 12:05:54',
    '2022-10-07 23:35:54',
    'Sat Oct 08 2022 12:05:54 GMT+0530 (India Standard Time)'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    27,
    'CHECKIN',
    '1',
    '2022-10-08 12:39:33',
    '2022-10-08 00:09:33',
    'Sat Oct 08 2022 12:39:31 GMT+0530 (India Standard Time)'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    28,
    'BREAKIN',
    '1',
    '2022-10-08 12:39:36',
    '2022-10-08 00:09:36',
    'Sat Oct 08 2022 12:39:36 GMT+0530 (India Standard Time)'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    29,
    'BREAKOUT',
    '1',
    '2022-10-08 12:39:38',
    '2022-10-08 00:09:38',
    'Sat Oct 08 2022 12:39:38 GMT+0530 (India Standard Time)'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    30,
    'BREAKIN',
    '1',
    '2022-10-08 12:39:43',
    '2022-10-08 00:09:43',
    'Sat Oct 08 2022 12:39:43 GMT+0530 (India Standard Time)'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    31,
    'BREAKOUT',
    '1',
    '2022-10-08 12:39:45',
    '2022-10-08 00:09:45',
    'Sat Oct 08 2022 12:39:45 GMT+0530 (India Standard Time)'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    32,
    'CHECKIN',
    '3',
    '2022-10-08 12:41:28',
    '2022-10-08 01:07:04',
    '2022-10-08 09:10:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    33,
    'CHECKIN',
    '4',
    '2022-10-08 12:41:54',
    '2022-10-08 01:02:17',
    '2022-10-08 09:10:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    34,
    'CHECKIN',
    '5',
    '2022-10-08 12:42:14',
    '2022-10-08 01:07:13',
    '2022-10-08 09:10:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    35,
    'CHECKIN',
    '7',
    '2022-10-08 12:42:35',
    '2022-10-08 00:12:35',
    'Sat Oct 08 2022 09:15:42 GMT+0530 (India Standard Time)'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    36,
    'CHECKIN',
    '1',
    '2022-10-08 13:25:11',
    '2022-10-08 00:55:11',
    'Sat Oct 08 2022 13:25:10 GMT+0530 (India Standard Time)'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    37,
    'CHECKIN',
    '1',
    '2022-10-08 13:25:22',
    '2022-10-08 00:55:22',
    'Sat Oct 08 2022 13:25:22 GMT+0530 (India Standard Time)'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    38,
    'BREAKIN',
    '3',
    '2022-10-08 13:38:52',
    '2022-10-08 01:08:52',
    '2022-10-08 13:00:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    39,
    'BREAKIN',
    '4',
    '2022-10-08 13:39:26',
    '2022-10-08 01:09:26',
    '2022-10-08 13:00:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    40,
    'BREAKIN',
    '5',
    '2022-10-08 13:39:36',
    '2022-10-08 01:09:36',
    '2022-10-08 13:00:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    41,
    'BREAKIN',
    '7',
    '2022-10-08 13:39:43',
    '2022-10-08 01:09:43',
    '2022-10-08 13:00:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    42,
    'BREAKOUT',
    '3',
    '2022-10-08 13:59:44',
    '2022-10-08 01:29:44',
    '2022-10-08 13:59:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    43,
    'BREAKOUT',
    '5',
    '2022-10-08 14:02:50',
    '2022-10-08 01:32:50',
    '2022-10-08 14:02:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    44,
    'CHECKIN',
    '4',
    '2022-10-08 14:02:51',
    '2022-10-08 01:32:51',
    'undefined'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    45,
    'BREAKOUT',
    '4',
    '2022-10-08 14:03:00',
    '2022-10-08 01:33:00',
    '2022-10-08 14:03:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    46,
    'BREAKOUT',
    '7',
    '2022-10-08 14:03:10',
    '2022-10-08 01:33:10',
    '2022-10-08 14:03:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    47,
    'BREAKIN',
    '4',
    '2022-10-08 16:44:59',
    '2022-10-08 04:14:59',
    '2022-10-08 16:45:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    48,
    'BREAKOUT',
    '4',
    '2022-10-08 17:02:07',
    '2022-10-08 04:32:07',
    '2022-10-08 17:02:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    49,
    'CHECKOUT',
    '3',
    '2022-10-08 19:01:03',
    '2022-10-08 06:31:03',
    '2022-10-08 19:01:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    50,
    'CHECKOUT',
    '4',
    '2022-10-08 19:03:09',
    '2022-10-08 06:33:09',
    '2022-10-08 19:03:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    51,
    'CHECKOUT',
    '7',
    '2022-10-08 19:03:16',
    '2022-10-08 06:33:16',
    '2022-10-08 19:03:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    52,
    'CHECKIN',
    '5',
    '2022-10-10 09:01:52',
    '2022-10-09 20:31:52',
    '2022-10-10 09:01:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    53,
    'CHECKIN',
    '3',
    '2022-10-10 09:05:58',
    '2022-10-09 20:35:58',
    '2022-10-10 09:05:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    54,
    'CHECKIN',
    '4',
    '2022-10-10 09:19:08',
    '2022-10-09 20:49:08',
    '2022-10-10 09:19:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    55,
    'CHECKIN',
    '7',
    '2022-10-10 09:32:46',
    '2022-10-09 21:02:46',
    '2022-10-10 09:32:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    56,
    'CHECKIN',
    '6',
    '2022-10-10 10:09:57',
    '2022-10-09 21:39:57',
    '2022-10-10 10:09:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    57,
    'BREAKIN',
    '4',
    '2022-10-10 13:14:36',
    '2022-10-10 00:44:36',
    '2022-10-10 13:14:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    58,
    'BREAKIN',
    '3',
    '2022-10-10 13:15:26',
    '2022-10-10 00:45:26',
    '2022-10-10 13:15:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    59,
    'BREAKIN',
    '5',
    '2022-10-10 13:15:34',
    '2022-10-10 00:45:34',
    '2022-10-10 13:15:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    60,
    'BREAKIN',
    '6',
    '2022-10-10 13:15:37',
    '2022-10-10 00:45:37',
    '2022-10-10 13:15:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    61,
    'BREAKOUT',
    '6',
    '2022-10-10 13:15:50',
    '2022-10-10 00:45:50',
    '2022-10-10 13:15:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    62,
    'BREAKIN',
    '6',
    '2022-10-10 13:15:53',
    '2022-10-10 00:45:53',
    '2022-10-10 13:15:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    63,
    'BREAKIN',
    '7',
    '2022-10-10 13:15:53',
    '2022-10-10 00:45:53',
    '2022-10-10 13:15:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    64,
    'BREAKOUT',
    '7',
    '2022-10-10 14:06:48',
    '2022-10-10 01:36:48',
    '2022-10-10 14:06:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    65,
    'BREAKIN',
    '7',
    '2022-10-10 14:08:02',
    '2022-10-10 01:38:02',
    '2022-10-10 14:08:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    66,
    'BREAKOUT',
    '7',
    '2022-10-10 14:08:10',
    '2022-10-10 01:38:10',
    '2022-10-10 14:08:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    67,
    'BREAKOUT',
    '3',
    '2022-10-10 14:09:20',
    '2022-10-10 01:39:20',
    '2022-10-10 14:09:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    68,
    'BREAKOUT',
    '5',
    '2022-10-10 14:09:55',
    '2022-10-10 01:39:55',
    '2022-10-10 14:09:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    69,
    'BREAKOUT',
    '4',
    '2022-10-10 14:11:13',
    '2022-10-10 01:41:13',
    '2022-10-10 14:11:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    70,
    'BREAKOUT',
    '6',
    '2022-10-10 14:17:18',
    '2022-10-10 01:47:18',
    '2022-10-10 14:17:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    71,
    'BREAKIN',
    '4',
    '2022-10-10 16:52:55',
    '2022-10-10 04:22:55',
    '2022-10-10 16:52:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    72,
    'BREAKOUT',
    '4',
    '2022-10-10 17:10:09',
    '2022-10-10 04:40:09',
    '2022-10-10 17:10:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    73,
    'CHECKOUT',
    '5',
    '2022-10-10 19:13:17',
    '2022-10-10 06:43:17',
    '2022-10-10 19:13:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    74,
    'CHECKOUT',
    '3',
    '2022-10-10 19:32:17',
    '2022-10-10 07:02:17',
    '2022-10-10 19:32:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    75,
    'BREAKIN',
    '4',
    '2022-10-10 19:33:16',
    '2022-10-10 07:03:16',
    '2022-10-10 19:33:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    76,
    'CHECKOUT',
    '6',
    '2022-10-10 19:35:03',
    '2022-10-10 07:05:03',
    '2022-10-10 19:35:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    77,
    'CHECKIN',
    '4',
    '2022-10-11 14:52:38',
    '2022-10-11 02:22:38',
    '2022-10-11 14:52:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    78,
    'CHECKIN',
    '5',
    '2022-10-11 14:52:44',
    '2022-10-11 02:22:44',
    '2022-10-11 14:52:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    79,
    'CHECKIN',
    '6',
    '2022-10-11 14:52:57',
    '2022-10-11 02:22:57',
    '2022-10-11 14:52:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    80,
    'CHECKIN',
    '3',
    '2022-10-11 14:53:12',
    '2022-10-11 02:23:12',
    '2022-10-11 14:53:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    81,
    'CHECKIN',
    '7',
    '2022-10-11 14:53:13',
    '2022-10-11 02:23:13',
    '2022-10-11 14:53:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    82,
    'CHECKIN',
    '1',
    '2022-10-11 22:11:03',
    '2022-10-11 09:41:03',
    '2022-10-11 22:11:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    83,
    'BREAKIN',
    '1',
    '2022-10-11 22:11:04',
    '2022-10-11 09:41:04',
    '2022-10-11 22:11:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    84,
    'BREAKOUT',
    '1',
    '2022-10-11 22:11:06',
    '2022-10-11 09:41:06',
    '2022-10-11 22:11:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    85,
    'BREAKIN',
    '1',
    '2022-10-11 22:11:06',
    '2022-10-11 09:41:06',
    '2022-10-11 22:11:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    86,
    'BREAKOUT',
    '1',
    '2022-10-11 22:11:07',
    '2022-10-11 09:41:07',
    '2022-10-11 22:11:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    87,
    'BREAKIN',
    '1',
    '2022-10-11 22:11:08',
    '2022-10-11 09:41:08',
    '2022-10-11 22:11:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    88,
    'BREAKOUT',
    '1',
    '2022-10-11 22:11:09',
    '2022-10-11 09:41:09',
    '2022-10-11 22:11:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    89,
    'BREAKIN',
    '1',
    '2022-10-11 22:11:10',
    '2022-10-11 09:41:10',
    '2022-10-11 22:11:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    90,
    'BREAKOUT',
    '1',
    '2022-10-11 22:11:11',
    '2022-10-11 09:41:11',
    '2022-10-11 22:11:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    91,
    'BREAKIN',
    '1',
    '2022-10-11 22:11:13',
    '2022-10-11 09:41:13',
    '2022-10-11 22:11:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    92,
    'BREAKOUT',
    '1',
    '2022-10-11 22:11:15',
    '2022-10-11 09:41:15',
    '2022-10-11 22:11:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    93,
    'BREAKIN',
    '1',
    '2022-10-11 22:11:16',
    '2022-10-11 09:41:16',
    '2022-10-11 22:11:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    94,
    'BREAKOUT',
    '1',
    '2022-10-11 22:12:06',
    '2022-10-11 09:42:06',
    '2022-10-11 22:12:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    95,
    'BREAKIN',
    '1',
    '2022-10-11 22:12:07',
    '2022-10-11 09:42:07',
    '2022-10-11 22:12:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    96,
    'BREAKOUT',
    '1',
    '2022-10-11 22:12:09',
    '2022-10-11 09:42:09',
    '2022-10-11 22:12:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    97,
    'BREAKIN',
    '1',
    '2022-10-11 22:12:12',
    '2022-10-11 09:42:12',
    '2022-10-11 22:12:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    98,
    'BREAKOUT',
    '1',
    '2022-10-11 22:12:13',
    '2022-10-11 09:42:13',
    '2022-10-11 22:12:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    99,
    'BREAKIN',
    '1',
    '2022-10-11 22:14:52',
    '2022-10-11 09:44:52',
    '2022-10-11 22:13:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    100,
    'BREAKOUT',
    '1',
    '2022-10-11 22:18:27',
    '2022-10-11 09:48:27',
    '2022-10-11 22:18:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    101,
    'CHECKOUT',
    '4',
    '2022-10-11 22:18:43',
    '2022-10-11 09:48:43',
    '2022-10-11 22:18:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    102,
    'CHECKIN',
    '3',
    '2022-10-12 09:09:20',
    '2022-10-11 20:39:20',
    '2022-10-12 09:09:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    103,
    'CHECKIN',
    '5',
    '2022-10-12 09:09:50',
    '2022-10-11 20:39:50',
    '2022-10-12 09:09:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    104,
    'CHECKIN',
    '7',
    '2022-10-12 09:30:24',
    '2022-10-11 21:00:24',
    '2022-10-12 09:30:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    105,
    'CHECKIN',
    '4',
    '2022-10-12 09:37:21',
    '2022-10-11 21:07:21',
    '2022-10-12 09:37:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    106,
    'CHECKIN',
    '6',
    '2022-10-12 09:52:53',
    '2022-10-11 21:22:53',
    '2022-10-12 09:52:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    107,
    'BREAKIN',
    '7',
    '2022-10-12 13:13:41',
    '2022-10-12 00:43:41',
    '2022-10-12 13:13:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    108,
    'BREAKIN',
    '6',
    '2022-10-12 13:13:46',
    '2022-10-12 00:43:46',
    '2022-10-12 13:13:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    109,
    'CHECKIN',
    '5',
    '2022-10-12 13:13:57',
    '2022-10-12 00:43:57',
    '2022-10-12 13:13:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    110,
    'BREAKIN',
    '3',
    '2022-10-12 13:14:00',
    '2022-10-12 00:44:00',
    '2022-10-12 13:14:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    111,
    'BREAKIN',
    '5',
    '2022-10-12 13:14:01',
    '2022-10-12 00:44:01',
    '2022-10-12 13:14:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    112,
    'BREAKIN',
    '4',
    '2022-10-12 13:14:06',
    '2022-10-12 00:44:06',
    '2022-10-12 13:14:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    113,
    'BREAKOUT',
    '5',
    '2022-10-12 14:05:51',
    '2022-10-12 01:35:51',
    '2022-10-12 14:05:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    114,
    'BREAKOUT',
    '7',
    '2022-10-12 14:07:06',
    '2022-10-12 01:37:06',
    '2022-10-12 14:07:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    115,
    'BREAKOUT',
    '4',
    '2022-10-12 14:08:00',
    '2022-10-12 01:38:00',
    '2022-10-12 14:08:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    116,
    'BREAKOUT',
    '6',
    '2022-10-12 14:08:02',
    '2022-10-12 01:38:02',
    '2022-10-12 14:08:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    117,
    'BREAKOUT',
    '3',
    '2022-10-12 14:09:01',
    '2022-10-12 01:39:01',
    '2022-10-12 14:08:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    118,
    'CHECKOUT',
    '4',
    '2022-10-12 17:27:42',
    '2022-10-12 04:57:42',
    '2022-10-12 17:27:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    119,
    'CHECKOUT',
    '3',
    '2022-10-12 18:20:04',
    '2022-10-12 05:50:04',
    '2022-10-12 18:20:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    120,
    'CHECKOUT',
    '7',
    '2022-10-12 18:47:42',
    '2022-10-12 06:17:42',
    '2022-10-12 18:47:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    121,
    'CHECKOUT',
    '5',
    '2022-10-12 18:59:40',
    '2022-10-12 06:29:40',
    '2022-10-12 18:59:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    122,
    'CHECKOUT',
    '6',
    '2022-10-12 19:02:50',
    '2022-10-12 06:32:50',
    '2022-10-12 19:02:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    123,
    'CHECKIN',
    '4',
    '2022-10-13 08:45:43',
    '2022-10-12 20:15:43',
    '2022-10-13 08:45:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    124,
    'CHECKIN',
    '5',
    '2022-10-13 09:19:16',
    '2022-10-12 20:49:16',
    '2022-10-13 09:19:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    125,
    'CHECKIN',
    '6',
    '2022-10-13 09:35:20',
    '2022-10-12 21:05:20',
    '2022-10-13 09:35:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    126,
    'CHECKIN',
    '3',
    '2022-10-13 10:31:24',
    '2022-10-12 22:01:24',
    '2022-10-13 10:31:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    127,
    'BREAKIN',
    '5',
    '2022-10-13 13:10:43',
    '2022-10-13 00:40:43',
    '2022-10-13 13:10:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    128,
    'BREAKIN',
    '6',
    '2022-10-13 13:11:52',
    '2022-10-13 00:41:52',
    '2022-10-13 13:11:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    129,
    'BREAKIN',
    '4',
    '2022-10-13 13:12:23',
    '2022-10-13 00:42:23',
    '2022-10-13 13:12:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    130,
    'BREAKIN',
    '3',
    '2022-10-13 13:29:29',
    '2022-10-13 00:59:29',
    '2022-10-13 13:29:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    131,
    'BREAKOUT',
    '5',
    '2022-10-13 13:59:52',
    '2022-10-13 01:29:52',
    '2022-10-13 13:59:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    132,
    'BREAKOUT',
    '6',
    '2022-10-13 14:02:21',
    '2022-10-13 01:32:21',
    '2022-10-13 14:02:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    133,
    'BREAKOUT',
    '3',
    '2022-10-13 14:04:16',
    '2022-10-13 01:34:16',
    '2022-10-13 14:04:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    134,
    'BREAKOUT',
    '4',
    '2022-10-13 14:17:37',
    '2022-10-13 01:47:37',
    '2022-10-13 14:17:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    135,
    'CHECKOUT',
    '4',
    '2022-10-13 18:02:36',
    '2022-10-13 05:32:36',
    '2022-10-13 18:02:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    136,
    'CHECKOUT',
    '5',
    '2022-10-13 18:51:12',
    '2022-10-13 06:21:12',
    '2022-10-13 18:51:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    137,
    'CHECKOUT',
    '3',
    '2022-10-13 19:08:17',
    '2022-10-13 06:38:17',
    '2022-10-13 19:08:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    138,
    'CHECKOUT',
    '6',
    '2022-10-13 19:15:39',
    '2022-10-13 06:45:39',
    '2022-10-13 19:15:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    139,
    'CHECKIN',
    '3',
    '2022-10-14 09:20:58',
    '2022-10-13 20:50:58',
    '2022-10-14 09:20:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    140,
    'CHECKIN',
    '5',
    '2022-10-14 09:22:22',
    '2022-10-13 20:52:22',
    '2022-10-14 09:22:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    141,
    'CHECKIN',
    '4',
    '2022-10-14 09:26:22',
    '2022-10-13 20:56:22',
    '2022-10-14 09:26:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    142,
    'CHECKIN',
    '6',
    '2022-10-14 09:46:54',
    '2022-10-13 21:16:54',
    '2022-10-14 09:46:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    143,
    'CHECKIN',
    '7',
    '2022-10-14 09:53:09',
    '2022-10-13 21:23:09',
    '2022-10-14 09:53:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    144,
    'BREAKIN',
    '7',
    '2022-10-14 12:44:17',
    '2022-10-14 00:14:17',
    '2022-10-14 12:44:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    145,
    'BREAKOUT',
    '7',
    '2022-10-14 12:53:59',
    '2022-10-14 00:23:59',
    '2022-10-14 12:53:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    146,
    'BREAKIN',
    '5',
    '2022-10-14 12:59:35',
    '2022-10-14 00:29:35',
    '2022-10-14 12:59:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    147,
    'BREAKIN',
    '7',
    '2022-10-14 13:00:37',
    '2022-10-14 00:30:37',
    '2022-10-14 13:00:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    148,
    'BREAKIN',
    '6',
    '2022-10-14 13:01:44',
    '2022-10-14 00:31:44',
    '2022-10-14 13:01:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    149,
    'BREAKIN',
    '3',
    '2022-10-14 13:02:00',
    '2022-10-14 00:32:00',
    '2022-10-14 13:02:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    150,
    'BREAKOUT',
    '3',
    '2022-10-14 13:02:08',
    '2022-10-14 00:32:08',
    '2022-10-14 13:02:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    151,
    'CHECKOUT',
    '4',
    '2022-10-14 13:02:20',
    '2022-10-14 00:32:20',
    '2022-10-14 13:02:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    152,
    'BREAKIN',
    '3',
    '2022-10-14 13:20:16',
    '2022-10-14 00:50:16',
    '2022-10-14 13:20:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    153,
    'BREAKOUT',
    '7',
    '2022-10-14 13:58:34',
    '2022-10-14 01:28:34',
    '2022-10-14 13:58:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    154,
    'BREAKOUT',
    '5',
    '2022-10-14 14:00:35',
    '2022-10-14 01:30:35',
    '2022-10-14 14:00:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    155,
    'BREAKOUT',
    '6',
    '2022-10-14 14:02:22',
    '2022-10-14 01:32:22',
    '2022-10-14 14:02:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    156,
    'BREAKOUT',
    '3',
    '2022-10-14 14:03:50',
    '2022-10-14 01:33:50',
    '2022-10-14 14:03:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    157,
    'CHECKOUT',
    '7',
    '2022-10-14 19:23:29',
    '2022-10-14 06:53:29',
    '2022-10-14 19:23:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    158,
    'CHECKOUT',
    '3',
    '2022-10-14 19:24:34',
    '2022-10-14 06:54:34',
    '2022-10-14 19:24:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    159,
    'CHECKOUT',
    '5',
    '2022-10-14 19:27:27',
    '2022-10-14 06:57:27',
    '2022-10-14 19:27:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    160,
    'CHECKOUT',
    '6',
    '2022-10-14 19:28:30',
    '2022-10-14 06:58:30',
    '2022-10-14 19:28:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    161,
    'CHECKIN',
    '5',
    '2022-10-15 09:13:12',
    '2022-10-14 20:43:12',
    '2022-10-15 09:13:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    162,
    'CHECKIN',
    '3',
    '2022-10-15 09:26:15',
    '2022-10-14 20:56:15',
    '2022-10-15 09:26:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    163,
    'CHECKIN',
    '4',
    '2022-10-15 09:28:46',
    '2022-10-14 20:58:46',
    '2022-10-15 09:28:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    164,
    'CHECKIN',
    '7',
    '2022-10-15 09:30:41',
    '2022-10-14 21:00:41',
    '2022-10-15 09:30:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    165,
    'CHECKIN',
    '6',
    '2022-10-15 09:39:55',
    '2022-10-14 21:09:55',
    '2022-10-15 09:39:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    166,
    'BREAKIN',
    '4',
    '2022-10-15 10:53:47',
    '2022-10-14 22:23:47',
    '2022-10-15 10:53:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    167,
    'BREAKOUT',
    '4',
    '2022-10-15 11:05:08',
    '2022-10-14 22:35:08',
    '2022-10-15 11:05:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    168,
    'BREAKIN',
    '5',
    '2022-10-15 13:07:25',
    '2022-10-15 00:37:25',
    '2022-10-15 13:07:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    169,
    'BREAKIN',
    '4',
    '2022-10-15 13:08:03',
    '2022-10-15 00:38:03',
    '2022-10-15 13:08:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    170,
    'CHECKOUT',
    '6',
    '2022-10-15 13:09:09',
    '2022-10-15 00:39:09',
    '2022-10-15 13:09:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    171,
    'BREAKIN',
    '7',
    '2022-10-15 13:14:41',
    '2022-10-15 00:44:41',
    '2022-10-15 13:14:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    172,
    'BREAKIN',
    '3',
    '2022-10-15 13:24:11',
    '2022-10-15 00:54:11',
    '2022-10-15 13:24:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    173,
    'BREAKOUT',
    '4',
    '2022-10-15 14:05:03',
    '2022-10-15 01:35:03',
    '2022-10-15 14:05:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    174,
    'BREAKOUT',
    '5',
    '2022-10-15 14:05:29',
    '2022-10-15 01:35:29',
    '2022-10-15 14:05:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    175,
    'BREAKOUT',
    '3',
    '2022-10-15 14:06:15',
    '2022-10-15 01:36:15',
    '2022-10-15 14:06:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    176,
    'BREAKOUT',
    '7',
    '2022-10-15 14:07:22',
    '2022-10-15 01:37:22',
    '2022-10-15 14:07:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    177,
    'BREAKIN',
    '7',
    '2022-10-15 14:55:51',
    '2022-10-15 02:25:51',
    '2022-10-15 14:55:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    178,
    'BREAKOUT',
    '7',
    '2022-10-15 14:57:44',
    '2022-10-15 02:27:44',
    '2022-10-15 14:57:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    179,
    'BREAKIN',
    '4',
    '2022-10-15 17:11:06',
    '2022-10-15 04:41:06',
    '2022-10-15 17:11:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    180,
    'BREAKOUT',
    '4',
    '2022-10-15 17:24:35',
    '2022-10-15 04:54:35',
    '2022-10-15 17:24:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    181,
    'CHECKOUT',
    '4',
    '2022-10-15 18:30:52',
    '2022-10-15 06:00:52',
    '2022-10-15 18:30:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    182,
    'CHECKOUT',
    '7',
    '2022-10-15 18:47:25',
    '2022-10-15 06:17:25',
    '2022-10-15 18:47:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    183,
    'CHECKOUT',
    '3',
    '2022-10-15 18:47:52',
    '2022-10-15 06:17:52',
    '2022-10-15 18:47:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    184,
    'CHECKOUT',
    '5',
    '2022-10-15 18:47:58',
    '2022-10-15 06:17:58',
    '2022-10-15 18:47:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    185,
    'CHECKIN',
    '3',
    '2022-10-17 08:52:40',
    '2022-10-16 20:22:40',
    '2022-10-17 08:52:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    186,
    'CHECKIN',
    '5',
    '2022-10-17 09:23:35',
    '2022-10-16 20:53:35',
    '2022-10-17 09:23:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    187,
    'CHECKIN',
    '7',
    '2022-10-17 09:43:07',
    '2022-10-16 21:13:07',
    '2022-10-17 09:43:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    188,
    'CHECKIN',
    '6',
    '2022-10-17 09:54:54',
    '2022-10-16 21:24:54',
    '2022-10-17 09:54:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    189,
    'CHECKIN',
    '4',
    '2022-10-17 09:59:54',
    '2022-10-16 21:29:54',
    '2022-10-17 09:59:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    190,
    'BREAKIN',
    '7',
    '2022-10-17 13:18:08',
    '2022-10-17 00:48:08',
    '2022-10-17 13:18:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    191,
    'BREAKIN',
    '5',
    '2022-10-17 13:19:33',
    '2022-10-17 00:49:33',
    '2022-10-17 13:19:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    192,
    'BREAKIN',
    '6',
    '2022-10-17 13:19:36',
    '2022-10-17 00:49:36',
    '2022-10-17 13:19:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    193,
    'BREAKIN',
    '4',
    '2022-10-17 13:19:39',
    '2022-10-17 00:49:39',
    '2022-10-17 13:19:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    194,
    'BREAKIN',
    '3',
    '2022-10-17 13:41:00',
    '2022-10-17 01:11:00',
    '2022-10-17 13:40:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    195,
    'BREAKOUT',
    '6',
    '2022-10-17 14:07:00',
    '2022-10-17 01:37:00',
    '2022-10-17 14:07:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    196,
    'BREAKOUT',
    '5',
    '2022-10-17 14:07:28',
    '2022-10-17 01:37:28',
    '2022-10-17 14:07:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    197,
    'BREAKOUT',
    '7',
    '2022-10-17 14:09:26',
    '2022-10-17 01:39:26',
    '2022-10-17 14:09:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    198,
    'BREAKOUT',
    '4',
    '2022-10-17 14:20:51',
    '2022-10-17 01:50:51',
    '2022-10-17 14:20:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    199,
    'CHECKIN',
    '1',
    '2022-10-17 16:50:39',
    '2022-10-17 04:20:39',
    '2022-10-17 16:50:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    200,
    'BREAKIN',
    '4',
    '2022-10-17 18:07:44',
    '2022-10-17 05:37:44',
    '2022-10-17 18:07:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    201,
    'BREAKOUT',
    '4',
    '2022-10-17 18:20:15',
    '2022-10-17 05:50:15',
    '2022-10-17 18:20:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    202,
    'CHECKOUT',
    '7',
    '2022-10-17 19:39:19',
    '2022-10-17 07:09:19',
    '2022-10-17 19:39:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    203,
    'BREAKOUT',
    '3',
    '2022-10-17 19:52:22',
    '2022-10-17 07:22:22',
    '2022-10-17 19:52:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    204,
    'CHECKOUT',
    '3',
    '2022-10-17 19:52:24',
    '2022-10-17 07:22:24',
    '2022-10-17 19:52:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    205,
    'CHECKOUT',
    '5',
    '2022-10-17 19:55:16',
    '2022-10-17 07:25:16',
    '2022-10-17 19:55:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    206,
    'CHECKOUT',
    '4',
    '2022-10-17 19:55:30',
    '2022-10-17 07:25:30',
    '2022-10-17 19:55:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    207,
    'CHECKOUT',
    '6',
    '2022-10-17 19:58:39',
    '2022-10-17 07:28:39',
    '2022-10-17 19:58:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    208,
    'CHECKIN',
    '3',
    '2022-10-18 08:52:39',
    '2022-10-17 20:22:39',
    '2022-10-18 08:52:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    209,
    'CHECKIN',
    '4',
    '2022-10-18 09:07:34',
    '2022-10-17 20:37:34',
    '2022-10-18 09:07:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    210,
    'CHECKIN',
    '6',
    '2022-10-18 09:49:24',
    '2022-10-17 21:19:24',
    '2022-10-18 09:49:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    211,
    'CHECKIN',
    '7',
    '2022-10-18 10:02:26',
    '2022-10-17 21:32:26',
    '2022-10-18 10:02:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    212,
    'BREAKIN',
    '4',
    '2022-10-18 13:06:47',
    '2022-10-18 00:36:47',
    '2022-10-18 13:06:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    213,
    'BREAKIN',
    '7',
    '2022-10-18 13:07:11',
    '2022-10-18 00:37:11',
    '2022-10-18 13:07:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    214,
    'BREAKIN',
    '6',
    '2022-10-18 13:07:24',
    '2022-10-18 00:37:24',
    '2022-10-18 13:07:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    215,
    'BREAKIN',
    '3',
    '2022-10-18 13:26:26',
    '2022-10-18 00:56:26',
    '2022-10-18 13:26:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    216,
    'BREAKOUT',
    '3',
    '2022-10-18 13:58:01',
    '2022-10-18 01:28:01',
    '2022-10-18 13:57:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    217,
    'BREAKOUT',
    '6',
    '2022-10-18 13:58:35',
    '2022-10-18 01:28:35',
    '2022-10-18 13:58:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    218,
    'BREAKOUT',
    '7',
    '2022-10-18 14:01:36',
    '2022-10-18 01:31:36',
    '2022-10-18 14:01:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    219,
    'BREAKOUT',
    '4',
    '2022-10-18 14:07:05',
    '2022-10-18 01:37:05',
    '2022-10-18 14:07:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    220,
    'CHECKIN',
    '1',
    '2022-10-18 14:23:27',
    '2022-10-18 01:53:27',
    '2022-10-18 14:23:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    221,
    'BREAKIN',
    '1',
    '2022-10-18 14:23:32',
    '2022-10-18 01:53:32',
    '2022-10-18 14:23:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    222,
    'BREAKOUT',
    '1',
    '2022-10-18 14:23:34',
    '2022-10-18 01:53:34',
    '2022-10-18 14:23:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    223,
    'BREAKIN',
    '7',
    '2022-10-18 15:45:57',
    '2022-10-18 03:15:57',
    '2022-10-18 15:45:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    224,
    'BREAKOUT',
    '7',
    '2022-10-18 15:48:09',
    '2022-10-18 03:18:09',
    '2022-10-18 15:48:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    225,
    'BREAKIN',
    '4',
    '2022-10-18 16:37:34',
    '2022-10-18 04:07:34',
    '2022-10-18 16:37:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    226,
    'BREAKOUT',
    '4',
    '2022-10-18 16:52:43',
    '2022-10-18 04:22:43',
    '2022-10-18 16:52:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    227,
    'CHECKOUT',
    '3',
    '2022-10-18 19:11:32',
    '2022-10-18 06:41:32',
    '2022-10-18 19:11:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    228,
    'CHECKOUT',
    '4',
    '2022-10-18 19:19:01',
    '2022-10-18 06:49:01',
    '2022-10-18 19:19:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    229,
    'CHECKOUT',
    '7',
    '2022-10-18 19:19:02',
    '2022-10-18 06:49:02',
    '2022-10-18 19:19:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    230,
    'CHECKOUT',
    '6',
    '2022-10-18 19:32:30',
    '2022-10-18 07:02:30',
    '2022-10-18 19:32:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    231,
    'CHECKIN',
    '3',
    '2022-10-19 09:07:14',
    '2022-10-18 20:37:14',
    '2022-10-19 09:07:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    232,
    'CHECKIN',
    '7',
    '2022-10-19 09:08:44',
    '2022-10-18 20:38:44',
    '2022-10-19 09:08:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    233,
    'CHECKIN',
    '6',
    '2022-10-19 09:14:30',
    '2022-10-18 20:44:30',
    '2022-10-19 09:14:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    234,
    'CHECKIN',
    '5',
    '2022-10-19 09:14:32',
    '2022-10-18 20:44:32',
    '2022-10-19 09:14:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    235,
    'CHECKIN',
    '4',
    '2022-10-19 10:02:25',
    '2022-10-18 21:32:25',
    '2022-10-19 10:02:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    236,
    'BREAKIN',
    '4',
    '2022-10-19 13:11:06',
    '2022-10-19 00:41:06',
    '2022-10-19 13:11:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    237,
    'BREAKIN',
    '3',
    '2022-10-19 13:15:42',
    '2022-10-19 00:45:42',
    '2022-10-19 13:15:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    238,
    'BREAKIN',
    '5',
    '2022-10-19 13:31:33',
    '2022-10-19 01:01:33',
    '2022-10-19 13:31:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    239,
    'BREAKIN',
    '6',
    '2022-10-19 13:31:46',
    '2022-10-19 01:01:46',
    '2022-10-19 13:31:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    240,
    'BREAKIN',
    '7',
    '2022-10-19 13:32:18',
    '2022-10-19 01:02:18',
    '2022-10-19 13:32:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    241,
    'BREAKOUT',
    '3',
    '2022-10-19 14:05:27',
    '2022-10-19 01:35:27',
    '2022-10-19 14:05:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    242,
    'BREAKOUT',
    '4',
    '2022-10-19 14:09:55',
    '2022-10-19 01:39:55',
    '2022-10-19 14:09:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    243,
    'BREAKOUT',
    '6',
    '2022-10-19 14:11:43',
    '2022-10-19 01:41:43',
    '2022-10-19 14:11:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    244,
    'BREAKOUT',
    '5',
    '2022-10-19 14:15:33',
    '2022-10-19 01:45:33',
    '2022-10-19 14:15:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    245,
    'BREAKOUT',
    '7',
    '2022-10-19 14:16:46',
    '2022-10-19 01:46:46',
    '2022-10-19 14:16:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    246,
    'BREAKIN',
    '7',
    '2022-10-19 14:51:38',
    '2022-10-19 02:21:38',
    '2022-10-19 14:51:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    247,
    'BREAKIN',
    '7',
    '2022-10-19 14:51:46',
    '2022-10-19 02:21:46',
    '2022-10-19 14:51:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    248,
    'BREAKOUT',
    '7',
    '2022-10-19 14:54:19',
    '2022-10-19 02:24:19',
    '2022-10-19 14:54:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    249,
    'BREAKIN',
    '4',
    '2022-10-19 16:14:31',
    '2022-10-19 03:44:31',
    '2022-10-19 16:14:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    250,
    'BREAKOUT',
    '4',
    '2022-10-19 16:20:24',
    '2022-10-19 03:50:24',
    '2022-10-19 16:20:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    251,
    'BREAKIN',
    '4',
    '2022-10-19 17:44:44',
    '2022-10-19 05:14:44',
    '2022-10-19 17:44:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    252,
    'BREAKOUT',
    '4',
    '2022-10-19 18:00:42',
    '2022-10-19 05:30:42',
    '2022-10-19 18:00:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    253,
    'CHECKOUT',
    '4',
    '2022-10-19 19:19:58',
    '2022-10-19 06:49:58',
    '2022-10-19 19:19:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    254,
    'CHECKOUT',
    '7',
    '2022-10-19 19:23:36',
    '2022-10-19 06:53:36',
    '2022-10-19 19:23:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    255,
    'CHECKOUT',
    '3',
    '2022-10-19 19:30:32',
    '2022-10-19 07:00:32',
    '2022-10-19 19:30:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    256,
    'CHECKOUT',
    '6',
    '2022-10-19 19:37:11',
    '2022-10-19 07:07:11',
    '2022-10-19 19:37:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    257,
    'CHECKOUT',
    '5',
    '2022-10-19 19:45:54',
    '2022-10-19 07:15:54',
    '2022-10-19 19:45:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    258,
    'CHECKIN',
    '3',
    '2022-10-20 09:17:08',
    '2022-10-19 20:47:08',
    '2022-10-20 09:17:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    259,
    'CHECKIN',
    '4',
    '2022-10-20 09:19:42',
    '2022-10-19 20:49:42',
    '2022-10-20 09:19:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    260,
    'CHECKIN',
    '5',
    '2022-10-20 09:51:00',
    '2022-10-19 21:21:00',
    '2022-10-20 09:51:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    261,
    'CHECKIN',
    '7',
    '2022-10-20 09:52:47',
    '2022-10-19 21:22:47',
    '2022-10-20 09:52:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    262,
    'CHECKIN',
    '6',
    '2022-10-20 10:06:18',
    '2022-10-19 21:36:18',
    '2022-10-20 10:06:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    263,
    'BREAKIN',
    '4',
    '2022-10-20 12:02:49',
    '2022-10-19 23:32:49',
    '2022-10-20 12:02:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    264,
    'BREAKIN',
    '3',
    '2022-10-20 12:44:10',
    '2022-10-20 00:14:10',
    '2022-10-20 12:44:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    265,
    'BREAKIN',
    '5',
    '2022-10-20 13:12:29',
    '2022-10-20 00:42:29',
    '2022-10-20 13:12:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    266,
    'BREAKIN',
    '7',
    '2022-10-20 13:12:30',
    '2022-10-20 00:42:30',
    '2022-10-20 13:12:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    267,
    'BREAKIN',
    '6',
    '2022-10-20 13:12:40',
    '2022-10-20 00:42:40',
    '2022-10-20 13:12:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    268,
    'BREAKOUT',
    '4',
    '2022-10-20 13:35:38',
    '2022-10-20 01:05:38',
    '2022-10-20 13:35:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    269,
    'BREAKOUT',
    '7',
    '2022-10-20 14:01:34',
    '2022-10-20 01:31:34',
    '2022-10-20 14:01:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    270,
    'BREAKOUT',
    '6',
    '2022-10-20 14:01:42',
    '2022-10-20 01:31:42',
    '2022-10-20 14:01:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    271,
    'BREAKOUT',
    '5',
    '2022-10-20 14:02:09',
    '2022-10-20 01:32:09',
    '2022-10-20 14:02:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    272,
    'BREAKOUT',
    '3',
    '2022-10-20 14:03:10',
    '2022-10-20 01:33:10',
    '2022-10-20 14:02:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    273,
    'BREAKIN',
    '4',
    '2022-10-20 17:00:34',
    '2022-10-20 04:30:34',
    '2022-10-20 17:00:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    274,
    'BREAKOUT',
    '4',
    '2022-10-20 17:18:38',
    '2022-10-20 04:48:38',
    '2022-10-20 17:18:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    275,
    'CHECKOUT',
    '4',
    '2022-10-20 19:23:15',
    '2022-10-20 06:53:15',
    '2022-10-20 19:23:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    276,
    'CHECKOUT',
    '6',
    '2022-10-20 19:26:04',
    '2022-10-20 06:56:04',
    '2022-10-20 19:26:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    277,
    'CHECKOUT',
    '5',
    '2022-10-20 19:26:27',
    '2022-10-20 06:56:27',
    '2022-10-20 19:26:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    278,
    'CHECKOUT',
    '3',
    '2022-10-20 19:30:44',
    '2022-10-20 07:00:44',
    '2022-10-20 19:30:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    279,
    'CHECKIN',
    '3',
    '2022-10-21 09:15:36',
    '2022-10-20 20:45:36',
    '2022-10-21 09:15:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    280,
    'CHECKIN',
    '7',
    '2022-10-21 09:16:51',
    '2022-10-20 20:46:51',
    '2022-10-21 09:16:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    281,
    'CHECKIN',
    '6',
    '2022-10-21 09:17:44',
    '2022-10-20 20:47:44',
    '2022-10-21 09:17:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    282,
    'CHECKIN',
    '5',
    '2022-10-21 09:18:28',
    '2022-10-20 20:48:28',
    '2022-10-21 09:18:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    283,
    'CHECKIN',
    '4',
    '2022-10-21 09:35:34',
    '2022-10-20 21:05:34',
    '2022-10-21 09:35:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    284,
    'BREAKIN',
    '4',
    '2022-10-21 13:15:49',
    '2022-10-21 00:45:49',
    '2022-10-21 13:15:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    285,
    'BREAKIN',
    '5',
    '2022-10-21 13:15:50',
    '2022-10-21 00:45:50',
    '2022-10-21 13:15:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    286,
    'BREAKIN',
    '6',
    '2022-10-21 13:16:04',
    '2022-10-21 00:46:04',
    '2022-10-21 13:16:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    287,
    'BREAKIN',
    '3',
    '2022-10-21 13:18:01',
    '2022-10-21 00:48:01',
    '2022-10-21 13:18:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    288,
    'BREAKIN',
    '7',
    '2022-10-21 13:19:38',
    '2022-10-21 00:49:38',
    '2022-10-21 13:19:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    289,
    'BREAKOUT',
    '3',
    '2022-10-21 13:46:09',
    '2022-10-21 01:16:09',
    '2022-10-21 13:46:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    290,
    'BREAKOUT',
    '6',
    '2022-10-21 14:08:32',
    '2022-10-21 01:38:32',
    '2022-10-21 14:08:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    291,
    'BREAKOUT',
    '7',
    '2022-10-21 14:08:51',
    '2022-10-21 01:38:51',
    '2022-10-21 14:08:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    292,
    'BREAKOUT',
    '5',
    '2022-10-21 14:10:33',
    '2022-10-21 01:40:33',
    '2022-10-21 14:10:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    293,
    'BREAKOUT',
    '4',
    '2022-10-21 14:23:11',
    '2022-10-21 01:53:11',
    '2022-10-21 14:23:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    294,
    'BREAKIN',
    '4',
    '2022-10-21 18:33:24',
    '2022-10-21 06:03:24',
    '2022-10-21 18:33:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    295,
    'BREAKOUT',
    '4',
    '2022-10-21 18:45:40',
    '2022-10-21 06:15:40',
    '2022-10-21 18:45:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    296,
    'CHECKOUT',
    '3',
    '2022-10-21 19:02:01',
    '2022-10-21 06:32:01',
    '2022-10-21 19:02:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    297,
    'CHECKOUT',
    '4',
    '2022-10-21 19:04:39',
    '2022-10-21 06:34:39',
    '2022-10-21 19:04:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    298,
    'CHECKOUT',
    '5',
    '2022-10-21 19:29:54',
    '2022-10-21 06:59:54',
    '2022-10-21 19:29:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    299,
    'CHECKOUT',
    '6',
    '2022-10-21 19:30:51',
    '2022-10-21 07:00:51',
    '2022-10-21 19:30:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    300,
    'CHECKOUT',
    '7',
    '2022-10-21 19:30:53',
    '2022-10-21 07:00:53',
    '2022-10-21 19:30:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    301,
    'CHECKIN',
    '3',
    '2022-10-22 09:13:42',
    '2022-10-21 20:43:42',
    '2022-10-22 09:13:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    302,
    'CHECKIN',
    '7',
    '2022-10-22 09:14:30',
    '2022-10-21 20:44:30',
    '2022-10-22 09:14:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    303,
    'CHECKIN',
    '6',
    '2022-10-22 09:15:16',
    '2022-10-21 20:45:16',
    '2022-10-22 09:15:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    304,
    'CHECKIN',
    '4',
    '2022-10-22 09:29:57',
    '2022-10-21 20:59:57',
    '2022-10-22 09:29:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    305,
    'BREAKIN',
    '4',
    '2022-10-22 13:22:36',
    '2022-10-22 00:52:36',
    '2022-10-22 13:22:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    306,
    'BREAKIN',
    '7',
    '2022-10-22 13:22:56',
    '2022-10-22 00:52:56',
    '2022-10-22 13:22:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    307,
    'BREAKIN',
    '6',
    '2022-10-22 13:23:08',
    '2022-10-22 00:53:08',
    '2022-10-22 13:23:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    308,
    'BREAKIN',
    '3',
    '2022-10-22 13:23:08',
    '2022-10-22 00:53:08',
    '2022-10-22 13:23:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    309,
    'BREAKOUT',
    '4',
    '2022-10-22 14:25:02',
    '2022-10-22 01:55:02',
    '2022-10-22 14:25:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    310,
    'BREAKOUT',
    '7',
    '2022-10-22 14:28:11',
    '2022-10-22 01:58:11',
    '2022-10-22 14:28:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    311,
    'BREAKOUT',
    '6',
    '2022-10-22 14:28:14',
    '2022-10-22 01:58:14',
    '2022-10-22 14:28:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    312,
    'CHECKOUT',
    '6',
    '2022-10-22 18:25:29',
    '2022-10-22 05:55:29',
    '2022-10-22 18:25:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    313,
    'CHECKOUT',
    '7',
    '2022-10-22 18:27:38',
    '2022-10-22 05:57:38',
    '2022-10-22 18:27:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    314,
    'CHECKOUT',
    '4',
    '2022-10-22 18:27:44',
    '2022-10-22 05:57:44',
    '2022-10-22 18:27:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    315,
    'CHECKIN',
    '1',
    '2022-10-28 09:03:30',
    '2022-10-27 20:33:30',
    '2022-10-28 09:03:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    316,
    'CHECKIN',
    '5',
    '2022-10-28 09:03:59',
    '2022-10-27 20:33:59',
    '2022-10-28 09:04:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    317,
    'BREAKIN',
    '5',
    '2022-10-28 09:36:40',
    '2022-10-27 21:06:40',
    '2022-10-28 09:36:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    318,
    'BREAKOUT',
    '5',
    '2022-10-28 09:36:41',
    '2022-10-27 21:06:41',
    '2022-10-28 09:36:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    319,
    'CHECKIN',
    '4',
    '2022-10-28 09:37:11',
    '2022-10-27 21:07:11',
    '2022-10-28 09:37:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    320,
    'CHECKIN',
    '7',
    '2022-10-28 09:37:41',
    '2022-10-27 21:07:41',
    '2022-10-28 09:37:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    321,
    'BREAKIN',
    '4',
    '2022-10-28 11:30:23',
    '2022-10-27 23:00:23',
    '2022-10-28 11:30:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    322,
    'BREAKOUT',
    '4',
    '2022-10-28 11:42:52',
    '2022-10-27 23:12:52',
    '2022-10-28 11:42:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    323,
    'BREAKIN',
    '5',
    '2022-10-28 13:15:26',
    '2022-10-28 00:45:26',
    '2022-10-28 13:15:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    324,
    'BREAKIN',
    '4',
    '2022-10-28 13:16:36',
    '2022-10-28 00:46:36',
    '2022-10-28 13:16:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    325,
    'BREAKIN',
    '7',
    '2022-10-28 13:17:48',
    '2022-10-28 00:47:48',
    '2022-10-28 13:17:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    326,
    'CHECKIN',
    '3',
    '2022-10-28 13:43:31',
    '2022-10-28 01:13:31',
    '2022-10-28 13:43:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    327,
    'BREAKIN',
    '3',
    '2022-10-28 13:43:32',
    '2022-10-28 01:13:32',
    '2022-10-28 13:43:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    328,
    'BREAKOUT',
    '5',
    '2022-10-28 14:06:37',
    '2022-10-28 01:36:37',
    '2022-10-28 14:06:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    329,
    'BREAKOUT',
    '7',
    '2022-10-28 14:07:10',
    '2022-10-28 01:37:10',
    '2022-10-28 14:07:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    330,
    'BREAKOUT',
    '3',
    '2022-10-28 14:17:31',
    '2022-10-28 01:47:31',
    '2022-10-28 14:17:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    331,
    'BREAKOUT',
    '4',
    '2022-10-28 14:22:06',
    '2022-10-28 01:52:06',
    '2022-10-28 14:22:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    332,
    'CHECKOUT',
    '4',
    '2022-10-28 19:00:24',
    '2022-10-28 06:30:24',
    '2022-10-28 19:00:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    333,
    'CHECKOUT',
    '7',
    '2022-10-28 19:00:27',
    '2022-10-28 06:30:27',
    '2022-10-28 19:00:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    334,
    'CHECKOUT',
    '5',
    '2022-10-28 19:12:33',
    '2022-10-28 06:42:33',
    '2022-10-28 19:12:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    335,
    'CHECKOUT',
    '3',
    '2022-10-28 19:25:40',
    '2022-10-28 06:55:40',
    '2022-10-28 19:25:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    336,
    'CHECKIN',
    '4',
    '2022-10-29 09:03:40',
    '2022-10-28 20:33:40',
    '2022-10-29 09:03:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    337,
    'CHECKIN',
    '3',
    '2022-10-29 09:04:45',
    '2022-10-28 20:34:45',
    '2022-10-29 09:04:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    338,
    'CHECKIN',
    '7',
    '2022-10-29 09:04:55',
    '2022-10-28 20:34:55',
    '2022-10-29 09:04:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    339,
    'CHECKIN',
    '5',
    '2022-10-29 09:09:31',
    '2022-10-28 20:39:31',
    '2022-10-29 09:09:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    340,
    'CHECKOUT',
    '5',
    '2022-10-29 10:35:41',
    '2022-10-28 22:05:41',
    '2022-10-29 10:35:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    341,
    'BREAKIN',
    '3',
    '2022-10-29 13:11:25',
    '2022-10-29 00:41:25',
    '2022-10-29 13:11:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    342,
    'BREAKIN',
    '4',
    '2022-10-29 13:11:25',
    '2022-10-29 00:41:25',
    '2022-10-29 13:11:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    343,
    'BREAKIN',
    '7',
    '2022-10-29 13:11:34',
    '2022-10-29 00:41:34',
    '2022-10-29 13:11:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    344,
    'BREAKOUT',
    '7',
    '2022-10-29 13:53:32',
    '2022-10-29 01:23:32',
    '2022-10-29 13:53:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    345,
    'BREAKOUT',
    '3',
    '2022-10-29 14:04:45',
    '2022-10-29 01:34:45',
    '2022-10-29 14:04:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    346,
    'BREAKOUT',
    '4',
    '2022-10-29 14:10:35',
    '2022-10-29 01:40:35',
    '2022-10-29 14:10:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    347,
    'BREAKIN',
    '4',
    '2022-10-29 16:13:05',
    '2022-10-29 03:43:05',
    '2022-10-29 16:13:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    348,
    'BREAKOUT',
    '4',
    '2022-10-29 16:27:54',
    '2022-10-29 03:57:54',
    '2022-10-29 16:27:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    349,
    'BREAKIN',
    '7',
    '2022-10-29 17:25:05',
    '2022-10-29 04:55:05',
    '2022-10-29 17:25:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    350,
    'BREAKOUT',
    '7',
    '2022-10-29 17:26:28',
    '2022-10-29 04:56:28',
    '2022-10-29 17:26:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    351,
    'CHECKOUT',
    '4',
    '2022-10-29 18:23:46',
    '2022-10-29 05:53:46',
    '2022-10-29 18:23:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    352,
    'CHECKOUT',
    '7',
    '2022-10-29 18:24:42',
    '2022-10-29 05:54:42',
    '2022-10-29 18:24:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    353,
    'CHECKOUT',
    '3',
    '2022-10-29 18:32:42',
    '2022-10-29 06:02:42',
    '2022-10-29 18:32:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    354,
    'CHECKIN',
    '1',
    '2022-10-31 11:11:47',
    '2022-10-30 22:41:47',
    '2022-10-31 11:11:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    355,
    'CHECKIN',
    '3',
    '2022-10-31 11:29:15',
    '2022-10-30 22:59:15',
    '2022-10-31 11:29:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    356,
    'CHECKIN',
    '5',
    '2022-10-31 11:29:20',
    '2022-10-30 22:59:20',
    '2022-10-31 11:29:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    357,
    'CHECKIN',
    '4',
    '2022-10-31 11:54:00',
    '2022-10-30 23:24:00',
    '2022-10-31 11:54:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    358,
    'BREAKIN',
    '3',
    '2022-10-31 12:36:49',
    '2022-10-31 00:06:49',
    '2022-10-31 12:36:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    359,
    'BREAKOUT',
    '3',
    '2022-10-31 12:55:37',
    '2022-10-31 00:25:37',
    '2022-10-31 12:55:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    360,
    'BREAKIN',
    '3',
    '2022-10-31 12:55:38',
    '2022-10-31 00:25:38',
    '2022-10-31 12:55:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    361,
    'BREAKIN',
    '4',
    '2022-10-31 13:00:26',
    '2022-10-31 00:30:26',
    '2022-10-31 13:00:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    362,
    'BREAKIN',
    '5',
    '2022-10-31 13:00:41',
    '2022-10-31 00:30:41',
    '2022-10-31 13:00:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    363,
    'CHECKIN',
    '7',
    '2022-10-31 13:01:20',
    '2022-10-31 00:31:20',
    '2022-10-31 13:01:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    364,
    'BREAKIN',
    '7',
    '2022-10-31 13:01:22',
    '2022-10-31 00:31:22',
    '2022-10-31 13:01:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    365,
    'CHECKIN',
    '4',
    '2022-10-31 13:57:59',
    '2022-10-31 01:27:59',
    '2022-10-31 13:57:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    366,
    'BREAKOUT',
    '7',
    '2022-10-31 14:00:57',
    '2022-10-31 01:30:57',
    '2022-10-31 14:00:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    367,
    'BREAKOUT',
    '5',
    '2022-10-31 14:02:14',
    '2022-10-31 01:32:14',
    '2022-10-31 14:02:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    368,
    'BREAKOUT',
    '3',
    '2022-10-31 14:04:08',
    '2022-10-31 01:34:08',
    '2022-10-31 14:04:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    369,
    'BREAKIN',
    '7',
    '2022-10-31 15:19:17',
    '2022-10-31 02:49:17',
    '2022-10-31 15:19:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    370,
    'BREAKOUT',
    '7',
    '2022-10-31 15:21:28',
    '2022-10-31 02:51:28',
    '2022-10-31 15:21:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    371,
    'BREAKIN',
    '4',
    '2022-10-31 16:13:36',
    '2022-10-31 03:43:36',
    '2022-10-31 16:13:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    372,
    'BREAKOUT',
    '4',
    '2022-10-31 16:25:34',
    '2022-10-31 03:55:34',
    '2022-10-31 16:25:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    373,
    'CHECKOUT',
    '4',
    '2022-10-31 18:21:01',
    '2022-10-31 05:51:01',
    '2022-10-31 18:21:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    374,
    'CHECKOUT',
    '7',
    '2022-10-31 19:18:17',
    '2022-10-31 06:48:17',
    '2022-10-31 19:18:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    375,
    'CHECKOUT',
    '3',
    '2022-10-31 19:19:25',
    '2022-10-31 06:49:25',
    '2022-10-31 19:19:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    376,
    'CHECKOUT',
    '5',
    '2022-10-31 19:19:47',
    '2022-10-31 06:49:47',
    '2022-10-31 19:19:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    377,
    'CHECKIN',
    '5',
    '2022-11-01 09:15:54',
    '2022-10-31 20:45:54',
    '2022-11-01 09:15:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    378,
    'CHECKIN',
    '7',
    '2022-11-01 09:16:03',
    '2022-10-31 20:46:03',
    '2022-11-01 09:16:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    379,
    'CHECKIN',
    '3',
    '2022-11-01 09:17:06',
    '2022-10-31 20:47:06',
    '2022-11-01 09:17:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    380,
    'BREAKIN',
    '7',
    '2022-11-01 13:04:56',
    '2022-11-01 00:34:56',
    '2022-11-01 13:04:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    381,
    'BREAKIN',
    '5',
    '2022-11-01 13:05:20',
    '2022-11-01 00:35:20',
    '2022-11-01 13:05:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    382,
    'BREAKIN',
    '3',
    '2022-11-01 13:18:19',
    '2022-11-01 00:48:19',
    '2022-11-01 13:18:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    383,
    'BREAKOUT',
    '5',
    '2022-11-01 14:02:07',
    '2022-11-01 01:32:07',
    '2022-11-01 14:02:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    384,
    'BREAKOUT',
    '7',
    '2022-11-01 14:02:27',
    '2022-11-01 01:32:27',
    '2022-11-01 14:02:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    385,
    'BREAKOUT',
    '3',
    '2022-11-01 14:04:01',
    '2022-11-01 01:34:01',
    '2022-11-01 14:03:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    386,
    'CHECKOUT',
    '3',
    '2022-11-01 19:01:23',
    '2022-11-01 06:31:23',
    '2022-11-01 19:01:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    387,
    'CHECKOUT',
    '5',
    '2022-11-01 19:01:33',
    '2022-11-01 06:31:33',
    '2022-11-01 19:01:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    388,
    'CHECKOUT',
    '7',
    '2022-11-01 19:03:27',
    '2022-11-01 06:33:27',
    '2022-11-01 19:03:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    389,
    'CHECKIN',
    '3',
    '2022-11-02 09:05:44',
    '2022-11-01 20:35:44',
    '2022-11-02 09:05:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    390,
    'CHECKIN',
    '7',
    '2022-11-02 09:06:27',
    '2022-11-01 20:36:27',
    '2022-11-02 09:06:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    391,
    'CHECKIN',
    '5',
    '2022-11-02 09:08:41',
    '2022-11-01 20:38:41',
    '2022-11-02 09:08:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    392,
    'CHECKIN',
    '4',
    '2022-11-02 09:13:43',
    '2022-11-01 20:43:43',
    '2022-11-02 09:13:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    393,
    'BREAKIN',
    '7',
    '2022-11-02 11:09:01',
    '2022-11-01 22:39:01',
    '2022-11-02 11:09:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    394,
    'BREAKOUT',
    '7',
    '2022-11-02 11:11:49',
    '2022-11-01 22:41:49',
    '2022-11-02 11:11:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    395,
    'BREAKIN',
    '3',
    '2022-11-02 13:18:06',
    '2022-11-02 00:48:06',
    '2022-11-02 13:18:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    396,
    'BREAKIN',
    '7',
    '2022-11-02 13:20:40',
    '2022-11-02 00:50:40',
    '2022-11-02 13:20:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    397,
    'BREAKIN',
    '5',
    '2022-11-02 13:21:02',
    '2022-11-02 00:51:02',
    '2022-11-02 13:21:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    398,
    'BREAKIN',
    '4',
    '2022-11-02 13:21:29',
    '2022-11-02 00:51:29',
    '2022-11-02 13:21:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    399,
    'BREAKOUT',
    '3',
    '2022-11-02 13:23:20',
    '2022-11-02 00:53:20',
    '2022-11-02 13:23:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    400,
    'BREAKIN',
    '3',
    '2022-11-02 13:38:46',
    '2022-11-02 01:08:46',
    '2022-11-02 13:38:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    401,
    'BREAKOUT',
    '5',
    '2022-11-02 14:06:05',
    '2022-11-02 01:36:05',
    '2022-11-02 14:06:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    402,
    'BREAKOUT',
    '3',
    '2022-11-02 14:09:55',
    '2022-11-02 01:39:55',
    '2022-11-02 14:09:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    403,
    'BREAKOUT',
    '7',
    '2022-11-02 14:14:02',
    '2022-11-02 01:44:02',
    '2022-11-02 14:14:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    404,
    'BREAKOUT',
    '4',
    '2022-11-02 14:27:15',
    '2022-11-02 01:57:15',
    '2022-11-02 14:27:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    405,
    'CHECKOUT',
    '4',
    '2022-11-02 19:20:48',
    '2022-11-02 06:50:48',
    '2022-11-02 19:20:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    406,
    'CHECKOUT',
    '3',
    '2022-11-02 19:35:20',
    '2022-11-02 07:05:20',
    '2022-11-02 19:35:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    407,
    'CHECKOUT',
    '5',
    '2022-11-02 19:35:44',
    '2022-11-02 07:05:44',
    '2022-11-02 19:35:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    408,
    'CHECKOUT',
    '7',
    '2022-11-02 19:36:02',
    '2022-11-02 07:06:02',
    '2022-11-02 19:36:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    409,
    'CHECKIN',
    '3',
    '2022-11-03 09:09:20',
    '2022-11-02 20:39:20',
    '2022-11-03 09:09:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    410,
    'CHECKIN',
    '5',
    '2022-11-03 09:22:10',
    '2022-11-02 20:52:10',
    '2022-11-03 09:22:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    411,
    'CHECKIN',
    '4',
    '2022-11-03 09:27:57',
    '2022-11-02 20:57:57',
    '2022-11-03 09:27:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    412,
    'CHECKIN',
    '7',
    '2022-11-03 10:10:55',
    '2022-11-02 21:40:55',
    '2022-11-03 10:10:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    413,
    'BREAKIN',
    '5',
    '2022-11-03 13:06:52',
    '2022-11-03 00:36:52',
    '2022-11-03 13:06:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    414,
    'BREAKIN',
    '7',
    '2022-11-03 13:07:10',
    '2022-11-03 00:37:10',
    '2022-11-03 13:07:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    415,
    'BREAKIN',
    '4',
    '2022-11-03 13:07:27',
    '2022-11-03 00:37:27',
    '2022-11-03 13:07:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    416,
    'BREAKIN',
    '3',
    '2022-11-03 13:19:38',
    '2022-11-03 00:49:38',
    '2022-11-03 13:19:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    417,
    'BREAKOUT',
    '5',
    '2022-11-03 14:01:52',
    '2022-11-03 01:31:52',
    '2022-11-03 14:01:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    418,
    'BREAKOUT',
    '3',
    '2022-11-03 14:03:39',
    '2022-11-03 01:33:39',
    '2022-11-03 14:03:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    419,
    'BREAKOUT',
    '4',
    '2022-11-03 14:05:55',
    '2022-11-03 01:35:55',
    '2022-11-03 14:05:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    420,
    'BREAKOUT',
    '7',
    '2022-11-03 14:16:43',
    '2022-11-03 01:46:43',
    '2022-11-03 14:16:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    421,
    'BREAKIN',
    '4',
    '2022-11-03 16:25:36',
    '2022-11-03 03:55:36',
    '2022-11-03 16:25:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    422,
    'BREAKOUT',
    '4',
    '2022-11-03 16:36:03',
    '2022-11-03 04:06:03',
    '2022-11-03 16:36:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    423,
    'BREAKIN',
    '4',
    '2022-11-03 18:56:27',
    '2022-11-03 06:26:27',
    '2022-11-03 18:56:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    424,
    'CHECKOUT',
    '3',
    '2022-11-03 19:00:04',
    '2022-11-03 06:30:04',
    '2022-11-03 19:00:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    425,
    'CHECKOUT',
    '7',
    '2022-11-03 19:03:04',
    '2022-11-03 06:33:04',
    '2022-11-03 19:03:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    426,
    'CHECKOUT',
    '5',
    '2022-11-03 19:09:14',
    '2022-11-03 06:39:14',
    '2022-11-03 19:09:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    427,
    'CHECKIN',
    '3',
    '2022-11-04 09:04:48',
    '2022-11-03 20:34:48',
    '2022-11-04 09:04:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    428,
    'CHECKIN',
    '7',
    '2022-11-04 09:05:25',
    '2022-11-03 20:35:25',
    '2022-11-04 09:05:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    429,
    'CHECKIN',
    '4',
    '2022-11-04 09:20:18',
    '2022-11-03 20:50:18',
    '2022-11-04 09:20:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    430,
    'CHECKIN',
    '5',
    '2022-11-04 09:20:43',
    '2022-11-03 20:50:43',
    '2022-11-04 09:20:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    431,
    'BREAKIN',
    '7',
    '2022-11-04 10:59:33',
    '2022-11-03 22:29:33',
    '2022-11-04 10:59:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    432,
    'BREAKOUT',
    '7',
    '2022-11-04 11:00:24',
    '2022-11-03 22:30:24',
    '2022-11-04 11:00:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    433,
    'BREAKIN',
    '4',
    '2022-11-04 13:25:45',
    '2022-11-04 00:55:45',
    '2022-11-04 13:25:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    434,
    'BREAKIN',
    '7',
    '2022-11-04 13:25:55',
    '2022-11-04 00:55:55',
    '2022-11-04 13:25:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    435,
    'BREAKIN',
    '5',
    '2022-11-04 13:26:05',
    '2022-11-04 00:56:05',
    '2022-11-04 13:26:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    436,
    'BREAKIN',
    '3',
    '2022-11-04 13:45:18',
    '2022-11-04 01:15:18',
    '2022-11-04 13:45:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    437,
    'BREAKOUT',
    '7',
    '2022-11-04 14:08:52',
    '2022-11-04 01:38:52',
    '2022-11-04 14:08:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    438,
    'BREAKOUT',
    '5',
    '2022-11-04 14:10:09',
    '2022-11-04 01:40:09',
    '2022-11-04 14:10:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    439,
    'BREAKOUT',
    '3',
    '2022-11-04 14:16:59',
    '2022-11-04 01:46:59',
    '2022-11-04 14:16:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    440,
    'BREAKOUT',
    '4',
    '2022-11-04 14:27:48',
    '2022-11-04 01:57:48',
    '2022-11-04 14:27:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    441,
    'BREAKIN',
    '4',
    '2022-11-04 17:26:55',
    '2022-11-04 04:56:55',
    '2022-11-04 17:26:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    442,
    'BREAKOUT',
    '4',
    '2022-11-04 17:43:06',
    '2022-11-04 05:13:06',
    '2022-11-04 17:43:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    443,
    'CHECKOUT',
    '3',
    '2022-11-04 18:57:31',
    '2022-11-04 06:27:31',
    '2022-11-04 18:57:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    444,
    'BREAKIN',
    '4',
    '2022-11-04 19:04:17',
    '2022-11-04 06:34:17',
    '2022-11-04 19:04:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    445,
    'BREAKOUT',
    '4',
    '2022-11-04 19:04:19',
    '2022-11-04 06:34:19',
    '2022-11-04 19:04:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    446,
    'CHECKOUT',
    '4',
    '2022-11-04 19:04:20',
    '2022-11-04 06:34:20',
    '2022-11-04 19:04:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    447,
    'CHECKOUT',
    '5',
    '2022-11-04 19:17:40',
    '2022-11-04 06:47:40',
    '2022-11-04 19:17:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    448,
    'CHECKOUT',
    '7',
    '2022-11-04 19:19:05',
    '2022-11-04 06:49:05',
    '2022-11-04 19:19:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    449,
    'CHECKIN',
    '3',
    '2022-11-05 09:02:12',
    '2022-11-04 20:32:12',
    '2022-11-05 09:02:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    450,
    'CHECKIN',
    '7',
    '2022-11-05 09:02:38',
    '2022-11-04 20:32:38',
    '2022-11-05 09:02:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    451,
    'CHECKIN',
    '5',
    '2022-11-05 09:15:14',
    '2022-11-04 20:45:14',
    '2022-11-05 09:15:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    452,
    'CHECKIN',
    '4',
    '2022-11-05 09:26:04',
    '2022-11-04 20:56:04',
    '2022-11-05 09:26:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    453,
    'BREAKOUT',
    '4',
    '2022-11-05 13:04:47',
    '2022-11-21 05:54:00',
    '2022-11-05 14:30:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    454,
    'BREAKIN',
    '7',
    '2022-11-05 13:05:07',
    '2022-11-05 00:35:07',
    '2022-11-05 13:05:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    455,
    'BREAKIN',
    '5',
    '2022-11-05 13:05:10',
    '2022-11-05 00:35:10',
    '2022-11-05 13:05:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    456,
    'BREAKIN',
    '4',
    '2022-11-05 14:01:24',
    '2022-11-05 01:31:24',
    '2022-11-05 14:01:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    457,
    'BREAKOUT',
    '7',
    '2022-11-05 14:03:27',
    '2022-11-05 01:33:27',
    '2022-11-05 14:03:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    458,
    'BREAKOUT',
    '5',
    '2022-11-05 14:06:10',
    '2022-11-05 01:36:10',
    '2022-11-05 14:06:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    459,
    'CHECKIN',
    '4',
    '2022-11-07 09:43:05',
    '2022-11-21 05:55:15',
    '2022-11-07 09:33:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    460,
    'CHECKIN',
    '5',
    '2022-11-07 09:44:05',
    '2022-11-06 21:14:05',
    '2022-11-07 09:44:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    461,
    'CHECKIN',
    '7',
    '2022-11-07 09:44:32',
    '2022-11-06 21:14:32',
    '2022-11-07 09:44:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    462,
    'CHECKIN',
    '3',
    '2022-11-07 09:49:52',
    '2022-11-06 21:19:52',
    '2022-11-07 09:49:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    463,
    'BREAKIN',
    '5',
    '2022-11-07 13:24:42',
    '2022-11-07 00:54:42',
    '2022-11-07 13:24:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    464,
    'BREAKIN',
    '7',
    '2022-11-07 13:25:29',
    '2022-11-07 00:55:29',
    '2022-11-07 13:25:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    465,
    'BREAKIN',
    '4',
    '2022-11-07 13:25:35',
    '2022-11-07 00:55:35',
    '2022-11-07 13:25:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    466,
    'BREAKIN',
    '3',
    '2022-11-07 13:40:05',
    '2022-11-07 01:10:05',
    '2022-11-07 13:40:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    467,
    'BREAKOUT',
    '5',
    '2022-11-07 14:02:30',
    '2022-11-07 01:32:30',
    '2022-11-07 14:02:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    468,
    'BREAKOUT',
    '7',
    '2022-11-07 14:02:41',
    '2022-11-07 01:32:41',
    '2022-11-07 14:02:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    469,
    'BREAKOUT',
    '3',
    '2022-11-07 14:04:54',
    '2022-11-07 01:34:54',
    '2022-11-07 14:04:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    470,
    'BREAKOUT',
    '4',
    '2022-11-07 14:32:13',
    '2022-11-07 02:02:13',
    '2022-11-07 14:32:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    471,
    'BREAKIN',
    '4',
    '2022-11-07 16:52:52',
    '2022-11-07 04:22:52',
    '2022-11-07 16:52:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    472,
    'BREAKOUT',
    '4',
    '2022-11-07 17:12:14',
    '2022-11-07 04:42:14',
    '2022-11-07 17:12:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    473,
    'CHECKOUT',
    '3',
    '2022-11-07 18:39:49',
    '2022-11-07 06:09:49',
    '2022-11-07 18:39:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    474,
    'CHECKOUT',
    '4',
    '2022-11-07 18:59:34',
    '2022-11-07 06:29:34',
    '2022-11-07 18:59:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    475,
    'CHECKOUT',
    '7',
    '2022-11-07 19:02:27',
    '2022-11-07 06:32:27',
    '2022-11-07 19:02:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    476,
    'CHECKOUT',
    '5',
    '2022-11-07 19:03:44',
    '2022-11-07 06:33:44',
    '2022-11-07 19:03:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    477,
    'CHECKIN',
    '3',
    '2022-11-08 13:18:25',
    '2022-11-21 02:20:18',
    '2022-11-08 09:07:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    478,
    'CHECKIN',
    '5',
    '2022-11-08 13:18:40',
    '2022-11-21 02:22:49',
    '2022-11-08 09:30:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    479,
    'CHECKIN',
    '4',
    '2022-11-08 13:18:51',
    '2022-11-21 05:55:29',
    '2022-11-08 09:18:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    480,
    'CHECKIN',
    '7',
    '2022-11-08 13:23:04',
    '2022-11-21 02:26:31',
    '2022-11-08 09:23:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    481,
    'BREAKIN',
    '7',
    '2022-11-08 13:23:08',
    '2022-11-08 00:53:08',
    '2022-11-08 13:23:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    482,
    'BREAKIN',
    '5',
    '2022-11-08 13:23:11',
    '2022-11-08 00:53:11',
    '2022-11-08 13:23:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    483,
    'BREAKIN',
    '4',
    '2022-11-08 13:23:17',
    '2022-11-08 00:53:17',
    '2022-11-08 13:23:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    484,
    'BREAKIN',
    '3',
    '2022-11-08 13:23:31',
    '2022-11-08 00:53:31',
    '2022-11-08 13:23:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    485,
    'BREAKOUT',
    '7',
    '2022-11-08 14:01:09',
    '2022-11-08 01:31:09',
    '2022-11-08 14:01:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    486,
    'BREAKOUT',
    '5',
    '2022-11-08 14:09:13',
    '2022-11-08 01:39:13',
    '2022-11-08 14:09:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    487,
    'BREAKOUT',
    '3',
    '2022-11-08 14:10:42',
    '2022-11-08 01:40:42',
    '2022-11-08 14:10:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    488,
    'BREAKOUT',
    '4',
    '2022-11-08 14:23:00',
    '2022-11-08 01:53:00',
    '2022-11-08 14:23:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    489,
    'CHECKOUT',
    '3',
    '2022-11-08 18:44:08',
    '2022-11-08 06:14:08',
    '2022-11-08 18:44:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    490,
    'CHECKOUT',
    '4',
    '2022-11-08 19:03:22',
    '2022-11-08 06:33:22',
    '2022-11-08 19:03:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    491,
    'CHECKOUT',
    '5',
    '2022-11-08 19:09:06',
    '2022-11-08 06:39:06',
    '2022-11-08 19:09:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    492,
    'CHECKOUT',
    '7',
    '2022-11-08 19:15:46',
    '2022-11-08 06:45:46',
    '2022-11-08 19:15:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    493,
    'CHECKIN',
    '3',
    '2022-11-09 09:00:10',
    '2022-11-08 20:30:10',
    '2022-11-09 09:00:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    494,
    'CHECKIN',
    '7',
    '2022-11-09 09:16:04',
    '2022-11-08 20:46:04',
    '2022-11-09 09:16:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    495,
    'CHECKIN',
    '5',
    '2022-11-09 09:25:50',
    '2022-11-08 20:55:50',
    '2022-11-09 09:25:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    496,
    'CHECKIN',
    '4',
    '2022-11-09 09:37:15',
    '2022-11-08 21:07:15',
    '2022-11-09 09:37:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    497,
    'BREAKIN',
    '4',
    '2022-11-09 13:16:33',
    '2022-11-09 00:46:33',
    '2022-11-09 13:16:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    498,
    'BREAKIN',
    '3',
    '2022-11-09 13:16:40',
    '2022-11-09 00:46:40',
    '2022-11-09 13:16:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    499,
    'BREAKIN',
    '5',
    '2022-11-09 13:16:42',
    '2022-11-09 00:46:42',
    '2022-11-09 13:16:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    500,
    'BREAKIN',
    '7',
    '2022-11-09 13:16:44',
    '2022-11-09 00:46:44',
    '2022-11-09 13:16:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    501,
    'BREAKOUT',
    '5',
    '2022-11-09 14:06:00',
    '2022-11-09 01:36:00',
    '2022-11-09 14:05:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    502,
    'BREAKOUT',
    '3',
    '2022-11-09 14:06:44',
    '2022-11-09 01:36:44',
    '2022-11-09 14:06:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    503,
    'BREAKOUT',
    '7',
    '2022-11-09 14:07:20',
    '2022-11-09 01:37:20',
    '2022-11-09 14:07:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    504,
    'BREAKOUT',
    '4',
    '2022-11-09 14:22:05',
    '2022-11-09 01:52:05',
    '2022-11-09 14:22:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    505,
    'BREAKIN',
    '4',
    '2022-11-09 16:33:34',
    '2022-11-09 04:03:34',
    '2022-11-09 16:33:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    506,
    'BREAKOUT',
    '4',
    '2022-11-09 17:00:42',
    '2022-11-09 04:30:42',
    '2022-11-09 17:00:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    507,
    'CHECKOUT',
    '3',
    '2022-11-09 18:50:52',
    '2022-11-09 06:20:52',
    '2022-11-09 18:50:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    508,
    'CHECKOUT',
    '5',
    '2022-11-09 19:09:43',
    '2022-11-09 06:39:43',
    '2022-11-09 19:09:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    509,
    'CHECKOUT',
    '4',
    '2022-11-09 19:10:37',
    '2022-11-09 06:40:37',
    '2022-11-09 19:10:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    510,
    'CHECKOUT',
    '7',
    '2022-11-09 19:11:04',
    '2022-11-09 06:41:04',
    '2022-11-09 19:11:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    511,
    'CHECKIN',
    '3',
    '2022-11-10 09:02:30',
    '2022-11-09 20:32:30',
    '2022-11-10 09:02:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    512,
    'CHECKIN',
    '5',
    '2022-11-10 09:20:27',
    '2022-11-09 20:50:27',
    '2022-11-10 09:20:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    513,
    'CHECKIN',
    '7',
    '2022-11-10 09:22:21',
    '2022-11-09 20:52:21',
    '2022-11-10 09:22:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    514,
    'CHECKIN',
    '4',
    '2022-11-10 09:36:41',
    '2022-11-09 21:06:41',
    '2022-11-10 09:36:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    515,
    'BREAKIN',
    '5',
    '2022-11-10 13:17:09',
    '2022-11-10 00:47:09',
    '2022-11-10 13:17:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    516,
    'BREAKIN',
    '7',
    '2022-11-10 13:17:27',
    '2022-11-10 00:47:27',
    '2022-11-10 13:17:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    517,
    'CHECKOUT',
    '4',
    '2022-11-10 13:17:46',
    '2022-11-21 05:55:53',
    '2022-11-10 13:57:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    518,
    'BREAKIN',
    '3',
    '2022-11-10 13:27:37',
    '2022-11-10 00:57:37',
    '2022-11-10 13:27:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    519,
    'BREAKOUT',
    '7',
    '2022-11-10 13:41:59',
    '2022-11-10 01:11:59',
    '2022-11-10 13:41:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    520,
    'BREAKOUT',
    '5',
    '2022-11-10 14:07:52',
    '2022-11-10 01:37:52',
    '2022-11-10 14:07:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    521,
    'BREAKOUT',
    '3',
    '2022-11-10 18:52:08',
    '2022-11-21 02:19:38',
    '2022-11-10 14:52:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    522,
    'CHECKOUT',
    '3',
    '2022-11-10 18:52:09',
    '2022-11-10 06:22:09',
    '2022-11-10 18:52:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    523,
    'CHECKOUT',
    '5',
    '2022-11-10 18:52:59',
    '2022-11-10 06:22:59',
    '2022-11-10 18:52:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    524,
    'CHECKOUT',
    '7',
    '2022-11-10 18:56:30',
    '2022-11-10 06:26:30',
    '2022-11-10 18:56:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    525,
    'CHECKIN',
    '4',
    '2022-11-11 09:07:42',
    '2022-11-10 20:37:42',
    '2022-11-11 09:07:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    526,
    'CHECKIN',
    '3',
    '2022-11-11 09:09:05',
    '2022-11-10 20:39:05',
    '2022-11-11 09:09:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    527,
    'CHECKIN',
    '7',
    '2022-11-11 09:11:15',
    '2022-11-10 20:41:15',
    '2022-11-11 09:11:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    528,
    'CHECKIN',
    '5',
    '2022-11-11 09:25:40',
    '2022-11-10 20:55:40',
    '2022-11-11 09:25:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    529,
    'BREAKIN',
    '7',
    '2022-11-11 11:37:28',
    '2022-11-10 23:07:28',
    '2022-11-11 11:37:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    530,
    'BREAKOUT',
    '7',
    '2022-11-11 11:39:48',
    '2022-11-10 23:09:48',
    '2022-11-11 11:39:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    531,
    'BREAKIN',
    '5',
    '2022-11-11 13:12:33',
    '2022-11-11 00:42:33',
    '2022-11-11 13:12:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    532,
    'BREAKIN',
    '3',
    '2022-11-11 13:13:02',
    '2022-11-11 00:43:02',
    '2022-11-11 13:13:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    533,
    'BREAKIN',
    '7',
    '2022-11-11 13:13:14',
    '2022-11-11 00:43:14',
    '2022-11-11 13:13:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    534,
    'BREAKIN',
    '4',
    '2022-11-11 13:14:04',
    '2022-11-11 00:44:04',
    '2022-11-11 13:14:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    535,
    'BREAKOUT',
    '7',
    '2022-11-11 14:06:38',
    '2022-11-11 01:36:38',
    '2022-11-11 14:06:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    536,
    'BREAKOUT',
    '5',
    '2022-11-11 14:13:06',
    '2022-11-11 01:43:06',
    '2022-11-11 14:13:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    537,
    'BREAKOUT',
    '4',
    '2022-11-11 14:14:18',
    '2022-11-11 01:44:18',
    '2022-11-11 14:14:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    538,
    'BREAKOUT',
    '3',
    '2022-11-11 14:15:57',
    '2022-11-11 01:45:57',
    '2022-11-11 14:15:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    539,
    'BREAKIN',
    '4',
    '2022-11-11 17:12:13',
    '2022-11-11 04:42:13',
    '2022-11-11 17:12:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    540,
    'BREAKOUT',
    '4',
    '2022-11-11 17:28:38',
    '2022-11-11 04:58:38',
    '2022-11-11 17:28:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    541,
    'CHECKOUT',
    '4',
    '2022-11-11 18:46:33',
    '2022-11-11 06:16:33',
    '2022-11-11 18:46:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    542,
    'CHECKOUT',
    '3',
    '2022-11-11 18:51:46',
    '2022-11-11 06:21:46',
    '2022-11-11 18:51:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    543,
    'CHECKOUT',
    '7',
    '2022-11-11 18:57:21',
    '2022-11-11 06:27:21',
    '2022-11-11 18:57:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    544,
    'CHECKOUT',
    '5',
    '2022-11-11 18:57:58',
    '2022-11-11 06:27:58',
    '2022-11-11 18:57:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    545,
    'CHECKIN',
    '4',
    '2022-11-12 09:14:53',
    '2022-11-11 20:44:53',
    '2022-11-12 09:14:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    546,
    'CHECKIN',
    '3',
    '2022-11-12 09:15:01',
    '2022-11-11 20:45:01',
    '2022-11-12 09:15:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    547,
    'CHECKIN',
    '7',
    '2022-11-12 09:30:02',
    '2022-11-11 21:00:02',
    '2022-11-12 09:30:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    548,
    'CHECKIN',
    '5',
    '2022-11-12 09:33:57',
    '2022-11-11 21:03:57',
    '2022-11-12 09:33:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    549,
    'BREAKIN',
    '4',
    '2022-11-12 11:59:06',
    '2022-11-11 23:29:06',
    '2022-11-12 11:59:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    550,
    'BREAKOUT',
    '4',
    '2022-11-12 12:13:01',
    '2022-11-11 23:43:01',
    '2022-11-12 12:13:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    551,
    'BREAKIN',
    '4',
    '2022-11-12 12:23:32',
    '2022-11-11 23:53:32',
    '2022-11-12 12:23:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    552,
    'BREAKOUT',
    '4',
    '2022-11-12 13:17:34',
    '2022-11-12 00:47:34',
    '2022-11-12 13:17:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    553,
    'BREAKIN',
    '3',
    '2022-11-12 13:19:13',
    '2022-11-12 00:49:13',
    '2022-11-12 13:19:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    554,
    'BREAKIN',
    '7',
    '2022-11-12 13:20:33',
    '2022-11-12 00:50:33',
    '2022-11-12 13:20:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    555,
    'BREAKIN',
    '5',
    '2022-11-12 13:20:52',
    '2022-11-12 00:50:52',
    '2022-11-12 13:20:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    556,
    'BREAKOUT',
    '7',
    '2022-11-12 14:03:01',
    '2022-11-12 01:33:01',
    '2022-11-12 14:03:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    557,
    'BREAKOUT',
    '5',
    '2022-11-12 14:05:02',
    '2022-11-12 01:35:02',
    '2022-11-12 14:05:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    558,
    'BREAKIN',
    '4',
    '2022-11-12 14:12:21',
    '2022-11-12 01:42:21',
    '2022-11-12 14:12:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    559,
    'BREAKOUT',
    '4',
    '2022-11-12 14:12:31',
    '2022-11-12 01:42:31',
    '2022-11-12 14:12:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    560,
    'BREAKOUT',
    '3',
    '2022-11-12 14:19:11',
    '2022-11-12 01:49:11',
    '2022-11-12 14:19:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    561,
    'BREAKIN',
    '4',
    '2022-11-12 16:43:44',
    '2022-11-12 04:13:44',
    '2022-11-12 16:43:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    562,
    'BREAKOUT',
    '4',
    '2022-11-12 16:58:51',
    '2022-11-12 04:28:51',
    '2022-11-12 16:58:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    563,
    'CHECKOUT',
    '5',
    '2022-11-12 18:26:22',
    '2022-11-12 05:56:22',
    '2022-11-12 18:26:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    564,
    'CHECKOUT',
    '4',
    '2022-11-12 18:44:53',
    '2022-11-12 06:14:53',
    '2022-11-12 18:44:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    565,
    'CHECKOUT',
    '7',
    '2022-11-12 19:01:04',
    '2022-11-12 06:31:04',
    '2022-11-12 19:01:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    566,
    'CHECKIN',
    '3',
    '2022-11-14 09:06:20',
    '2022-11-13 20:36:20',
    '2022-11-14 09:06:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    567,
    'CHECKIN',
    '7',
    '2022-11-14 09:07:10',
    '2022-11-13 20:37:10',
    '2022-11-14 09:07:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    568,
    'CHECKIN',
    '4',
    '2022-11-14 09:22:04',
    '2022-11-13 20:52:04',
    '2022-11-14 09:22:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    569,
    'CHECKIN',
    '5',
    '2022-11-14 09:22:21',
    '2022-11-13 20:52:21',
    '2022-11-14 09:22:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    570,
    'BREAKIN',
    '4',
    '2022-11-14 12:01:16',
    '2022-11-13 23:31:16',
    '2022-11-14 12:01:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    571,
    'BREAKOUT',
    '4',
    '2022-11-14 12:16:51',
    '2022-11-13 23:46:51',
    '2022-11-14 12:16:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    572,
    'BREAKIN',
    '4',
    '2022-11-14 13:21:11',
    '2022-11-14 00:51:11',
    '2022-11-14 13:21:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    573,
    'BREAKIN',
    '7',
    '2022-11-14 13:21:24',
    '2022-11-14 00:51:24',
    '2022-11-14 13:21:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    574,
    'BREAKIN',
    '5',
    '2022-11-14 13:21:57',
    '2022-11-14 00:51:57',
    '2022-11-14 13:21:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    575,
    'BREAKIN',
    '3',
    '2022-11-14 13:27:04',
    '2022-11-14 00:57:04',
    '2022-11-14 13:27:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    576,
    'BREAKOUT',
    '7',
    '2022-11-14 14:08:52',
    '2022-11-14 01:38:52',
    '2022-11-14 14:08:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    577,
    'BREAKIN',
    '7',
    '2022-11-14 14:13:14',
    '2022-11-14 01:43:14',
    '2022-11-14 14:13:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    578,
    'BREAKOUT',
    '7',
    '2022-11-14 14:16:18',
    '2022-11-14 01:46:18',
    '2022-11-14 14:16:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    579,
    'BREAKOUT',
    '3',
    '2022-11-14 14:16:35',
    '2022-11-14 01:46:35',
    '2022-11-14 14:16:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    580,
    'BREAKOUT',
    '5',
    '2022-11-14 14:17:11',
    '2022-11-14 01:47:11',
    '2022-11-14 14:17:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    581,
    'BREAKOUT',
    '4',
    '2022-11-14 14:35:09',
    '2022-11-14 02:05:09',
    '2022-11-14 14:35:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    582,
    'BREAKIN',
    '7',
    '2022-11-14 14:39:54',
    '2022-11-14 02:09:54',
    '2022-11-14 14:39:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    583,
    'BREAKOUT',
    '7',
    '2022-11-14 14:51:04',
    '2022-11-14 02:21:04',
    '2022-11-14 14:51:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    584,
    'BREAKIN',
    '4',
    '2022-11-14 17:28:14',
    '2022-11-14 04:58:14',
    '2022-11-14 17:28:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    585,
    'BREAKOUT',
    '4',
    '2022-11-14 17:46:35',
    '2022-11-14 05:16:35',
    '2022-11-14 17:46:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    586,
    'CHECKOUT',
    '3',
    '2022-11-14 18:47:09',
    '2022-11-14 06:17:09',
    '2022-11-14 18:47:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    587,
    'BREAKIN',
    '4',
    '2022-11-14 18:58:09',
    '2022-11-14 06:28:09',
    '2022-11-14 18:58:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    588,
    'BREAKOUT',
    '4',
    '2022-11-14 18:58:11',
    '2022-11-14 06:28:11',
    '2022-11-14 18:58:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    589,
    'CHECKOUT',
    '5',
    '2022-11-14 18:58:19',
    '2022-11-14 06:28:19',
    '2022-11-14 18:58:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    590,
    'CHECKOUT',
    '7',
    '2022-11-14 19:06:02',
    '2022-11-14 06:36:02',
    '2022-11-14 19:06:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    591,
    'CHECKIN',
    '3',
    '2022-11-15 09:05:01',
    '2022-11-14 20:35:01',
    '2022-11-15 09:05:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    592,
    'CHECKIN',
    '7',
    '2022-11-15 09:06:17',
    '2022-11-14 20:36:17',
    '2022-11-15 09:06:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    593,
    'CHECKIN',
    '4',
    '2022-11-15 09:21:58',
    '2022-11-14 20:51:58',
    '2022-11-15 09:22:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    594,
    'CHECKIN',
    '5',
    '2022-11-15 09:22:32',
    '2022-11-14 20:52:32',
    '2022-11-15 09:22:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    595,
    'CHECKOUT',
    '4',
    '2022-11-15 13:19:19',
    '2022-11-15 00:49:19',
    '2022-11-15 13:19:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    596,
    'BREAKIN',
    '3',
    '2022-11-15 13:20:11',
    '2022-11-15 00:50:11',
    '2022-11-15 13:20:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    597,
    'BREAKIN',
    '5',
    '2022-11-15 13:20:12',
    '2022-11-15 00:50:12',
    '2022-11-15 13:20:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    598,
    'BREAKIN',
    '7',
    '2022-11-15 13:20:25',
    '2022-11-15 00:50:25',
    '2022-11-15 13:20:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    599,
    'BREAKOUT',
    '5',
    '2022-11-15 14:10:59',
    '2022-11-15 01:40:59',
    '2022-11-15 14:10:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    600,
    'BREAKOUT',
    '7',
    '2022-11-15 14:12:47',
    '2022-11-15 01:42:47',
    '2022-11-15 14:12:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    601,
    'BREAKOUT',
    '3',
    '2022-11-15 14:17:19',
    '2022-11-15 01:47:19',
    '2022-11-15 14:17:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    602,
    'CHECKOUT',
    '3',
    '2022-11-15 18:56:08',
    '2022-11-15 06:26:08',
    '2022-11-15 18:56:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    603,
    'CHECKOUT',
    '5',
    '2022-11-15 19:06:02',
    '2022-11-15 06:36:02',
    '2022-11-15 19:06:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    604,
    'CHECKIN',
    '3',
    '2022-11-16 09:06:56',
    '2022-11-15 20:36:56',
    '2022-11-16 09:06:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    605,
    'CHECKIN',
    '5',
    '2022-11-16 09:34:07',
    '2022-11-15 21:04:07',
    '2022-11-16 09:34:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    606,
    'CHECKIN',
    '7',
    '2022-11-16 09:38:38',
    '2022-11-15 21:08:38',
    '2022-11-16 09:38:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    607,
    'CHECKIN',
    '4',
    '2022-11-16 09:40:37',
    '2022-11-15 21:10:37',
    '2022-11-16 09:40:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    608,
    'BREAKIN',
    '4',
    '2022-11-16 13:14:52',
    '2022-11-16 00:44:52',
    '2022-11-16 13:14:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    609,
    'BREAKIN',
    '5',
    '2022-11-16 13:15:04',
    '2022-11-16 00:45:04',
    '2022-11-16 13:15:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    610,
    'BREAKIN',
    '7',
    '2022-11-16 13:15:05',
    '2022-11-16 00:45:05',
    '2022-11-16 13:15:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    611,
    'BREAKIN',
    '3',
    '2022-11-16 13:16:05',
    '2022-11-16 00:46:05',
    '2022-11-16 13:16:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    612,
    'BREAKOUT',
    '7',
    '2022-11-16 13:43:37',
    '2022-11-16 01:13:37',
    '2022-11-16 13:43:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    613,
    'BREAKOUT',
    '5',
    '2022-11-16 14:00:57',
    '2022-11-16 01:30:57',
    '2022-11-16 14:00:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    614,
    'BREAKOUT',
    '3',
    '2022-11-16 14:06:15',
    '2022-11-16 01:36:15',
    '2022-11-16 14:06:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    615,
    'BREAKOUT',
    '4',
    '2022-11-16 14:17:52',
    '2022-11-16 01:47:52',
    '2022-11-16 14:17:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    616,
    'CHECKOUT',
    '3',
    '2022-11-16 18:49:37',
    '2022-11-16 06:19:37',
    '2022-11-16 18:49:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    617,
    'CHECKOUT',
    '5',
    '2022-11-16 18:50:07',
    '2022-11-16 06:20:07',
    '2022-11-16 18:50:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    618,
    'CHECKOUT',
    '4',
    '2022-11-16 19:01:24',
    '2022-11-16 06:31:24',
    '2022-11-16 19:01:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    619,
    'CHECKOUT',
    '7',
    '2022-11-16 19:11:05',
    '2022-11-16 06:41:05',
    '2022-11-16 19:11:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    620,
    'CHECKIN',
    '3',
    '2022-11-17 09:08:52',
    '2022-11-16 20:38:52',
    '2022-11-17 09:08:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    621,
    'CHECKIN',
    '5',
    '2022-11-17 09:20:53',
    '2022-11-16 20:50:53',
    '2022-11-17 09:20:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    622,
    'CHECKIN',
    '7',
    '2022-11-17 09:22:03',
    '2022-11-16 20:52:03',
    '2022-11-17 09:22:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    623,
    'CHECKIN',
    '4',
    '2022-11-17 09:39:36',
    '2022-11-16 21:09:36',
    '2022-11-17 09:39:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    624,
    'BREAKIN',
    '5',
    '2022-11-17 13:14:41',
    '2022-11-17 00:44:41',
    '2022-11-17 13:14:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    625,
    'BREAKIN',
    '7',
    '2022-11-17 13:14:54',
    '2022-11-17 00:44:54',
    '2022-11-17 13:14:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    626,
    'BREAKIN',
    '4',
    '2022-11-17 13:16:31',
    '2022-11-17 00:46:31',
    '2022-11-17 13:16:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    627,
    'BREAKIN',
    '3',
    '2022-11-17 13:27:51',
    '2022-11-17 00:57:51',
    '2022-11-17 13:27:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    628,
    'BREAKOUT',
    '7',
    '2022-11-17 13:56:29',
    '2022-11-17 01:26:29',
    '2022-11-17 13:56:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    629,
    'BREAKOUT',
    '3',
    '2022-11-17 14:07:44',
    '2022-11-17 01:37:44',
    '2022-11-17 14:07:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    630,
    'BREAKOUT',
    '5',
    '2022-11-17 14:11:18',
    '2022-11-17 01:41:18',
    '2022-11-17 14:11:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    631,
    'BREAKOUT',
    '4',
    '2022-11-17 14:16:04',
    '2022-11-17 01:46:04',
    '2022-11-17 14:16:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    632,
    'BREAKIN',
    '4',
    '2022-11-17 17:11:11',
    '2022-11-17 04:41:11',
    '2022-11-17 17:11:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    633,
    'BREAKOUT',
    '4',
    '2022-11-17 17:28:52',
    '2022-11-17 04:58:52',
    '2022-11-17 17:28:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    634,
    'CHECKOUT',
    '5',
    '2022-11-17 18:42:03',
    '2022-11-17 06:12:03',
    '2022-11-17 18:42:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    635,
    'CHECKOUT',
    '4',
    '2022-11-17 18:58:26',
    '2022-11-17 06:28:26',
    '2022-11-17 18:58:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    636,
    'CHECKOUT',
    '7',
    '2022-11-17 19:17:10',
    '2022-11-17 06:47:10',
    '2022-11-17 19:17:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    637,
    'CHECKIN',
    '3',
    '2022-11-18 09:15:13',
    '2022-11-17 20:45:13',
    '2022-11-18 09:15:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    638,
    'CHECKIN',
    '5',
    '2022-11-18 09:24:38',
    '2022-11-17 20:54:38',
    '2022-11-18 09:24:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    639,
    'CHECKIN',
    '7',
    '2022-11-18 09:41:52',
    '2022-11-17 21:11:52',
    '2022-11-18 09:41:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    640,
    'CHECKIN',
    '4',
    '2022-11-18 10:20:19',
    '2022-11-21 05:57:14',
    '2022-11-18 10:00:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    641,
    'BREAKIN',
    '5',
    '2022-11-18 10:50:26',
    '2022-11-17 22:20:26',
    '2022-11-18 10:50:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    642,
    'BREAKOUT',
    '5',
    '2022-11-18 10:59:15',
    '2022-11-17 22:29:15',
    '2022-11-18 10:59:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    643,
    'BREAKIN',
    '4',
    '2022-11-18 13:15:42',
    '2022-11-18 00:45:42',
    '2022-11-18 13:15:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    644,
    'BREAKIN',
    '7',
    '2022-11-18 13:16:31',
    '2022-11-18 00:46:31',
    '2022-11-18 13:16:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    645,
    'BREAKIN',
    '5',
    '2022-11-18 13:17:19',
    '2022-11-18 00:47:19',
    '2022-11-18 13:17:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    646,
    'BREAKIN',
    '3',
    '2022-11-18 13:31:53',
    '2022-11-18 01:01:53',
    '2022-11-18 13:31:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    647,
    'BREAKOUT',
    '7',
    '2022-11-18 14:00:43',
    '2022-11-18 01:30:43',
    '2022-11-18 14:00:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    648,
    'BREAKOUT',
    '5',
    '2022-11-18 14:04:57',
    '2022-11-18 01:34:57',
    '2022-11-18 14:04:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    649,
    'BREAKOUT',
    '4',
    '2022-11-18 14:11:26',
    '2022-11-18 01:41:26',
    '2022-11-18 14:11:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    650,
    'BREAKIN',
    '4',
    '2022-11-18 16:24:19',
    '2022-11-18 03:54:19',
    '2022-11-18 16:24:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    651,
    'BREAKOUT',
    '4',
    '2022-11-18 16:40:41',
    '2022-11-18 04:10:41',
    '2022-11-18 16:40:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    652,
    'CHECKOUT',
    '7',
    '2022-11-18 19:00:57',
    '2022-11-18 06:30:57',
    '2022-11-18 19:00:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    653,
    'CHECKOUT',
    '4',
    '2022-11-18 19:10:29',
    '2022-11-21 05:57:24',
    '2022-11-18 19:13:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    654,
    'BREAKOUT',
    '3',
    '2022-11-18 19:30:31',
    '2022-11-21 02:17:28',
    '2022-11-18 14:00:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    655,
    'CHECKOUT',
    '3',
    '2022-11-18 19:30:32',
    '2022-11-18 07:00:32',
    '2022-11-18 19:30:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    656,
    'CHECKIN',
    '3',
    '2022-11-19 09:18:49',
    '2022-11-18 20:48:49',
    '2022-11-19 09:18:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    657,
    'CHECKIN',
    '7',
    '2022-11-19 09:19:21',
    '2022-11-18 20:49:21',
    '2022-11-19 09:19:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    658,
    'CHECKIN',
    '5',
    '2022-11-19 09:19:29',
    '2022-11-18 20:49:29',
    '2022-11-19 09:19:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    659,
    'CHECKIN',
    '4',
    '2022-11-19 09:39:10',
    '2022-11-18 21:09:10',
    '2022-11-19 09:39:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    660,
    'BREAKIN',
    '4',
    '2022-11-19 13:12:23',
    '2022-11-19 00:42:23',
    '2022-11-19 13:12:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    661,
    'BREAKIN',
    '5',
    '2022-11-19 13:29:01',
    '2022-11-19 00:59:01',
    '2022-11-19 13:29:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    662,
    'BREAKIN',
    '7',
    '2022-11-19 13:30:03',
    '2022-11-19 01:00:03',
    '2022-11-19 13:30:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    663,
    'BREAKOUT',
    '7',
    '2022-11-19 14:11:17',
    '2022-11-19 01:41:17',
    '2022-11-19 14:11:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    664,
    'BREAKOUT',
    '5',
    '2022-11-19 14:12:31',
    '2022-11-19 01:42:31',
    '2022-11-19 14:12:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    665,
    'BREAKOUT',
    '4',
    '2022-11-19 14:18:30',
    '2022-11-19 01:48:30',
    '2022-11-19 14:18:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    666,
    'BREAKOUT',
    '5',
    '2022-11-19 14:32:22',
    '2022-11-19 02:02:22',
    '2022-11-19 14:32:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    667,
    'CHECKIN',
    '3',
    '2022-11-21 12:58:57',
    '2022-11-21 02:16:06',
    '2022-11-21 09:07:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    668,
    'CHECKIN',
    '4',
    '2022-11-21 13:30:43',
    '2022-11-21 05:57:56',
    '2022-11-21 09:30:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    669,
    'CHECKIN',
    '7',
    '2022-11-21 13:31:16',
    '2022-11-21 02:27:27',
    '2022-11-21 09:31:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    670,
    'BREAKIN',
    '7',
    '2022-11-21 13:44:27',
    '2022-11-21 01:14:27',
    '2022-11-21 13:44:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    671,
    'BREAKIN',
    '4',
    '2022-11-21 13:45:03',
    '2022-11-21 01:15:03',
    '2022-11-21 13:45:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    672,
    'CHECKIN',
    '5',
    '2022-11-21 13:45:37',
    '2022-11-21 02:24:51',
    '2022-11-21 09:13:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    673,
    'BREAKIN',
    '5',
    '2022-11-21 13:45:39',
    '2022-11-21 01:15:39',
    '2022-11-21 13:45:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    674,
    'BREAKIN',
    '3',
    '2022-11-21 13:50:21',
    '2022-11-21 01:20:21',
    '2022-11-21 13:50:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    675,
    'BREAKOUT',
    '7',
    '2022-11-21 14:14:05',
    '2022-11-21 01:44:05',
    '2022-11-21 14:14:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    676,
    'BREAKOUT',
    '5',
    '2022-11-21 14:22:57',
    '2022-11-21 01:52:57',
    '2022-11-21 14:22:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    677,
    'BREAKOUT',
    '3',
    '2022-11-21 14:22:57',
    '2022-11-21 01:52:57',
    '2022-11-21 14:22:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    678,
    'CHECKOUT',
    '3',
    '2022-11-21 14:48:15',
    '2022-11-21 02:18:15',
    '2022-11-17 18:30:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    679,
    'CHECKOUT',
    '3',
    '2022-11-21 14:49:01',
    '2022-11-21 02:19:22',
    '2022-11-12 18:30:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    680,
    'CHECKOUT',
    '3',
    '2022-11-21 14:50:52',
    '2022-11-21 02:21:06',
    '2022-11-05 18:30:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    681,
    'CHECKOUT',
    '5',
    '2022-11-21 14:52:23',
    '2022-11-21 02:22:23',
    '2022-11-05 18:30:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    682,
    'CHECKOUT',
    '5',
    '2022-11-21 14:53:17',
    '2022-11-21 02:23:17',
    '2022-11-18 19:00:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    683,
    'CHECKOUT',
    '5',
    '2022-11-21 14:54:06',
    '2022-11-21 02:24:06',
    '2022-11-19 18:30:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    684,
    'CHECKOUT',
    '7',
    '2022-11-21 14:56:04',
    '2022-11-21 02:26:16',
    '2022-11-05 19:00:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    685,
    'CHECKOUT',
    '7',
    '2022-11-21 14:56:50',
    '2022-11-21 02:26:50',
    '2022-11-15 19:30:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    686,
    'CHECKOUT',
    '7',
    '2022-11-21 14:57:12',
    '2022-11-21 02:27:12',
    '2022-11-19 19:00:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    687,
    'BREAKOUT',
    '4',
    '2022-11-21 15:00:42',
    '2022-11-21 05:58:18',
    '2022-11-21 14:45:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    688,
    'BREAKIN',
    '4',
    '2022-11-21 15:12:51',
    '2022-11-21 02:42:51',
    '2022-11-21 15:12:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    689,
    'BREAKOUT',
    '4',
    '2022-11-21 15:14:01',
    '2022-11-21 05:59:09',
    '2022-11-21 15:12:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    690,
    'BREAKIN',
    '4',
    '2022-11-21 17:16:48',
    '2022-11-21 04:46:48',
    '2022-11-21 17:16:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    691,
    'BREAKOUT',
    '4',
    '2022-11-21 17:27:50',
    '2022-11-21 04:57:50',
    '2022-11-21 17:27:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    692,
    'CHECKOUT',
    '4',
    '2022-11-21 18:24:42',
    '2022-11-21 05:54:42',
    '2022-11-05 18:30:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    693,
    'CHECKOUT',
    '4',
    '2022-11-21 18:26:41',
    '2022-11-21 05:56:41',
    '2022-11-14 19:38:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    694,
    'CHECKOUT',
    '4',
    '2022-11-21 18:27:45',
    '2022-11-21 05:57:45',
    '2022-11-19 18:58:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    695,
    'CHECKOUT',
    '4',
    '2022-11-21 18:29:31',
    '2022-11-21 05:59:47',
    '2022-11-21 19:00:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    696,
    'BREAKIN',
    '7',
    '2022-11-21 18:34:23',
    '2022-11-21 06:04:23',
    '2022-11-21 18:34:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    697,
    'BREAKOUT',
    '7',
    '2022-11-21 18:34:24',
    '2022-11-21 06:04:24',
    '2022-11-21 18:34:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    698,
    'CHECKOUT',
    '3',
    '2022-11-21 18:59:27',
    '2022-11-21 06:29:27',
    '2022-11-21 18:59:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    699,
    'CHECKOUT',
    '7',
    '2022-11-21 18:59:49',
    '2022-11-21 06:29:49',
    '2022-11-21 18:59:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    700,
    'CHECKOUT',
    '5',
    '2022-11-21 19:02:23',
    '2022-11-21 06:32:23',
    '2022-11-21 19:02:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    701,
    'CHECKIN',
    '3',
    '2022-11-22 09:10:04',
    '2022-11-21 20:40:04',
    '2022-11-22 09:10:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    702,
    'CHECKIN',
    '7',
    '2022-11-22 09:20:30',
    '2022-11-21 20:50:30',
    '2022-11-22 09:20:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    703,
    'CHECKIN',
    '5',
    '2022-11-22 09:23:20',
    '2022-11-21 20:53:20',
    '2022-11-22 09:23:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    704,
    'CHECKIN',
    '4',
    '2022-11-22 09:38:43',
    '2022-11-21 21:08:43',
    '2022-11-22 09:38:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    705,
    'BREAKIN',
    '4',
    '2022-11-22 13:35:03',
    '2022-11-22 01:05:03',
    '2022-11-22 13:35:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    706,
    'BREAKIN',
    '7',
    '2022-11-22 13:35:30',
    '2022-11-22 01:05:30',
    '2022-11-22 13:35:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    707,
    'BREAKIN',
    '5',
    '2022-11-22 13:35:30',
    '2022-11-22 01:05:30',
    '2022-11-22 13:35:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    708,
    'BREAKIN',
    '3',
    '2022-11-22 13:43:30',
    '2022-11-22 01:13:30',
    '2022-11-22 13:43:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    709,
    'BREAKOUT',
    '5',
    '2022-11-22 13:54:28',
    '2022-11-22 01:24:28',
    '2022-11-22 13:54:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    710,
    'BREAKOUT',
    '7',
    '2022-11-22 13:56:46',
    '2022-11-22 01:26:46',
    '2022-11-22 13:56:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    711,
    'BREAKOUT',
    '3',
    '2022-11-22 14:15:18',
    '2022-11-22 01:45:18',
    '2022-11-22 14:15:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    712,
    'BREAKOUT',
    '4',
    '2022-11-22 14:32:47',
    '2022-11-22 02:02:47',
    '2022-11-22 14:32:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    713,
    'CHECKOUT',
    '5',
    '2022-11-22 18:43:07',
    '2022-11-22 06:13:07',
    '2022-11-22 18:43:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    714,
    'CHECKOUT',
    '4',
    '2022-11-22 18:50:26',
    '2022-11-22 06:20:26',
    '2022-11-22 18:50:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    715,
    'CHECKOUT',
    '3',
    '2022-11-22 18:55:29',
    '2022-11-22 06:25:29',
    '2022-11-22 18:55:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    716,
    'CHECKIN',
    '3',
    '2022-11-23 09:09:19',
    '2022-11-22 20:39:19',
    '2022-11-23 09:09:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    717,
    'CHECKIN',
    '7',
    '2022-11-23 09:09:42',
    '2022-11-22 20:39:42',
    '2022-11-23 09:09:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    718,
    'CHECKIN',
    '5',
    '2022-11-23 09:30:55',
    '2022-11-22 21:00:55',
    '2022-11-23 09:30:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    719,
    'CHECKIN',
    '4',
    '2022-11-23 09:31:06',
    '2022-11-22 21:01:06',
    '2022-11-23 09:31:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    720,
    'BREAKIN',
    '4',
    '2022-11-23 13:13:56',
    '2022-11-23 00:43:56',
    '2022-11-23 13:13:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    721,
    'BREAKIN',
    '7',
    '2022-11-23 13:14:15',
    '2022-11-23 00:44:15',
    '2022-11-23 13:14:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    722,
    'BREAKIN',
    '5',
    '2022-11-23 13:14:31',
    '2022-11-23 00:44:31',
    '2022-11-23 13:14:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    723,
    'BREAKIN',
    '3',
    '2022-11-23 13:23:31',
    '2022-11-23 00:53:31',
    '2022-11-23 13:23:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    724,
    'BREAKOUT',
    '7',
    '2022-11-23 14:02:03',
    '2022-11-23 01:32:03',
    '2022-11-23 14:02:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    725,
    'BREAKOUT',
    '4',
    '2022-11-23 14:15:48',
    '2022-11-23 01:45:48',
    '2022-11-23 14:15:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    726,
    'BREAKOUT',
    '5',
    '2022-11-23 14:16:25',
    '2022-11-23 01:46:25',
    '2022-11-23 14:16:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    727,
    'CHECKOUT',
    '4',
    '2022-11-23 18:50:52',
    '2022-11-23 06:20:52',
    '2022-11-23 18:50:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    728,
    'BREAKOUT',
    '3',
    '2022-11-23 18:51:42',
    '2022-11-23 06:21:42',
    '2022-11-23 18:51:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    729,
    'CHECKOUT',
    '3',
    '2022-11-23 18:51:44',
    '2022-11-23 06:21:44',
    '2022-11-23 18:51:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    730,
    'CHECKOUT',
    '5',
    '2022-11-23 18:55:25',
    '2022-11-23 06:25:25',
    '2022-11-23 18:55:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    731,
    'CHECKOUT',
    '7',
    '2022-11-23 18:57:57',
    '2022-11-23 06:27:57',
    '2022-11-23 18:57:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    732,
    'CHECKIN',
    '7',
    '2022-11-24 09:09:32',
    '2022-11-23 20:39:32',
    '2022-11-24 09:09:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    733,
    'CHECKIN',
    '3',
    '2022-11-24 09:09:45',
    '2022-11-23 20:39:45',
    '2022-11-24 09:09:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    734,
    'CHECKIN',
    '5',
    '2022-11-24 09:34:04',
    '2022-11-23 21:04:04',
    '2022-11-24 09:34:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    735,
    'CHECKIN',
    '4',
    '2022-11-24 11:43:19',
    '2022-11-23 23:13:19',
    '2022-11-24 11:43:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    736,
    'BREAKIN',
    '4',
    '2022-11-24 13:17:09',
    '2022-11-24 00:47:09',
    '2022-11-24 13:17:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    737,
    'BREAKIN',
    '5',
    '2022-11-24 13:18:05',
    '2022-11-24 00:48:05',
    '2022-11-24 13:18:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    738,
    'BREAKIN',
    '7',
    '2022-11-24 13:18:09',
    '2022-11-24 00:48:09',
    '2022-11-24 13:18:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    739,
    'BREAKIN',
    '3',
    '2022-11-24 13:35:38',
    '2022-11-24 01:05:38',
    '2022-11-24 13:35:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    740,
    'BREAKOUT',
    '7',
    '2022-11-24 14:01:26',
    '2022-11-24 01:31:26',
    '2022-11-24 14:01:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    741,
    'BREAKOUT',
    '4',
    '2022-11-24 14:16:37',
    '2022-11-24 01:46:37',
    '2022-11-24 14:16:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    742,
    'BREAKOUT',
    '5',
    '2022-11-24 14:18:01',
    '2022-11-24 01:48:01',
    '2022-11-24 14:18:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    743,
    'BREAKOUT',
    '3',
    '2022-11-24 14:18:38',
    '2022-11-24 01:48:38',
    '2022-11-24 14:18:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    744,
    'BREAKIN',
    '4',
    '2022-11-24 16:41:28',
    '2022-11-24 04:11:28',
    '2022-11-24 16:41:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    745,
    'BREAKOUT',
    '4',
    '2022-11-24 16:52:39',
    '2022-11-24 04:22:39',
    '2022-11-24 16:52:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    746,
    'CHECKOUT',
    '3',
    '2022-11-24 18:29:27',
    '2022-11-24 05:59:27',
    '2022-11-24 18:29:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    747,
    'CHECKOUT',
    '5',
    '2022-11-24 18:34:09',
    '2022-11-24 06:04:09',
    '2022-11-24 18:34:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    748,
    'CHECKOUT',
    '7',
    '2022-11-24 18:44:45',
    '2022-11-24 06:14:45',
    '2022-11-24 18:44:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    749,
    'CHECKOUT',
    '4',
    '2022-11-24 21:13:07',
    '2022-11-24 08:43:07',
    '2022-11-24 21:13:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    750,
    'CHECKIN',
    '3',
    '2022-11-25 09:09:11',
    '2022-11-24 20:39:11',
    '2022-11-25 09:09:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    751,
    'CHECKIN',
    '5',
    '2022-11-25 09:09:41',
    '2022-11-24 20:39:41',
    '2022-11-25 09:09:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    752,
    'CHECKIN',
    '7',
    '2022-11-25 09:10:54',
    '2022-11-24 20:40:54',
    '2022-11-25 09:10:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    753,
    'CHECKIN',
    '4',
    '2022-11-25 09:33:00',
    '2022-11-24 21:03:00',
    '2022-11-25 09:33:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    754,
    'BREAKIN',
    '7',
    '2022-11-25 13:11:38',
    '2022-11-25 00:41:38',
    '2022-11-25 13:11:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    755,
    'BREAKIN',
    '4',
    '2022-11-25 13:11:56',
    '2022-11-25 00:41:56',
    '2022-11-25 13:11:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    756,
    'BREAKIN',
    '5',
    '2022-11-25 13:12:25',
    '2022-11-25 00:42:25',
    '2022-11-25 13:12:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    757,
    'BREAKOUT',
    '7',
    '2022-11-25 13:49:58',
    '2022-11-25 01:19:58',
    '2022-11-25 13:49:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    758,
    'BREAKOUT',
    '5',
    '2022-11-25 13:55:15',
    '2022-11-25 01:25:15',
    '2022-11-25 13:55:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    759,
    'BREAKOUT',
    '4',
    '2022-11-25 14:18:02',
    '2022-11-25 01:48:02',
    '2022-11-25 14:18:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    760,
    'BREAKIN',
    '4',
    '2022-11-25 17:31:16',
    '2022-11-25 05:01:16',
    '2022-11-25 17:31:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    761,
    'BREAKOUT',
    '4',
    '2022-11-25 17:46:13',
    '2022-11-25 05:16:13',
    '2022-11-25 17:46:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    762,
    'CHECKOUT',
    '3',
    '2022-11-25 18:01:44',
    '2022-11-25 05:31:44',
    '2022-11-25 18:01:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    763,
    'CHECKOUT',
    '7',
    '2022-11-25 18:58:03',
    '2022-11-25 06:28:03',
    '2022-11-25 18:58:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    764,
    'CHECKOUT',
    '4',
    '2022-11-25 19:05:17',
    '2022-11-25 06:35:17',
    '2022-11-25 19:05:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    765,
    'CHECKOUT',
    '5',
    '2022-11-25 19:05:18',
    '2022-11-25 06:35:18',
    '2022-11-25 19:05:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    766,
    'CHECKIN',
    '7',
    '2022-11-26 09:13:49',
    '2022-11-25 20:43:49',
    '2022-11-26 09:13:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    767,
    'CHECKIN',
    '3',
    '2022-11-26 09:14:28',
    '2022-11-25 20:44:28',
    '2022-11-26 09:14:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    768,
    'CHECKIN',
    '5',
    '2022-11-26 09:26:59',
    '2022-11-25 20:56:59',
    '2022-11-26 09:26:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    769,
    'CHECKIN',
    '4',
    '2022-11-26 10:23:16',
    '2022-11-25 21:53:16',
    '2022-11-26 10:23:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    770,
    'BREAKIN',
    '4',
    '2022-11-26 13:12:03',
    '2022-11-26 00:42:03',
    '2022-11-26 13:12:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    771,
    'BREAKIN',
    '5',
    '2022-11-26 13:19:05',
    '2022-11-26 00:49:05',
    '2022-11-26 13:19:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    772,
    'BREAKIN',
    '3',
    '2022-11-26 13:19:35',
    '2022-11-26 00:49:35',
    '2022-11-26 13:19:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    773,
    'BREAKIN',
    '7',
    '2022-11-26 13:19:56',
    '2022-11-26 00:49:56',
    '2022-11-26 13:19:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    774,
    'BREAKOUT',
    '4',
    '2022-11-26 14:17:12',
    '2022-11-26 01:47:12',
    '2022-11-26 14:17:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    775,
    'BREAKOUT',
    '5',
    '2022-11-26 14:20:39',
    '2022-11-26 01:50:39',
    '2022-11-26 14:20:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    776,
    'BREAKOUT',
    '7',
    '2022-11-26 14:21:39',
    '2022-11-26 01:51:39',
    '2022-11-26 14:21:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    777,
    'BREAKOUT',
    '3',
    '2022-11-26 14:23:42',
    '2022-11-26 01:53:42',
    '2022-11-26 14:23:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    778,
    'CHECKOUT',
    '4',
    '2022-11-26 18:55:49',
    '2022-11-26 06:25:49',
    '2022-11-26 18:55:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    779,
    'CHECKOUT',
    '7',
    '2022-11-26 18:56:04',
    '2022-11-26 06:26:04',
    '2022-11-26 18:56:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    780,
    'CHECKOUT',
    '5',
    '2022-11-26 18:57:23',
    '2022-11-26 06:27:23',
    '2022-11-26 18:57:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    781,
    'CHECKIN',
    '3',
    '2022-11-28 09:05:11',
    '2022-11-27 20:35:11',
    '2022-11-28 09:05:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    782,
    'CHECKIN',
    '7',
    '2022-11-28 09:05:25',
    '2022-11-27 20:35:25',
    '2022-11-28 09:05:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    783,
    'CHECKIN',
    '5',
    '2022-11-28 09:27:26',
    '2022-11-27 20:57:26',
    '2022-11-28 09:27:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    784,
    'CHECKIN',
    '4',
    '2022-11-28 13:05:15',
    '2022-11-28 00:35:15',
    '2022-11-28 13:05:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    785,
    'BREAKIN',
    '4',
    '2022-11-28 13:05:17',
    '2022-11-28 00:35:17',
    '2022-11-28 13:05:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    786,
    'BREAKIN',
    '5',
    '2022-11-28 13:05:42',
    '2022-11-28 00:35:42',
    '2022-11-28 13:05:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    787,
    'BREAKIN',
    '3',
    '2022-11-28 13:19:59',
    '2022-11-28 00:49:59',
    '2022-11-28 13:19:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    788,
    'BREAKOUT',
    '4',
    '2022-11-28 14:00:42',
    '2022-11-28 01:30:42',
    '2022-11-28 14:00:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    789,
    'BREAKOUT',
    '5',
    '2022-11-28 14:06:10',
    '2022-11-28 01:36:10',
    '2022-11-28 14:06:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    790,
    'BREAKOUT',
    '3',
    '2022-11-28 14:12:50',
    '2022-11-28 01:42:50',
    '2022-11-28 14:12:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    791,
    'BREAKIN',
    '4',
    '2022-11-28 17:10:35',
    '2022-11-28 04:40:35',
    '2022-11-28 17:10:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    792,
    'BREAKOUT',
    '4',
    '2022-11-28 17:28:02',
    '2022-11-28 04:58:02',
    '2022-11-28 17:28:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    793,
    'CHECKOUT',
    '5',
    '2022-11-28 18:52:02',
    '2022-11-28 06:22:02',
    '2022-11-28 18:52:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    794,
    'CHECKOUT',
    '3',
    '2022-11-28 18:52:55',
    '2022-11-28 06:22:55',
    '2022-11-28 18:52:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    795,
    'CHECKOUT',
    '4',
    '2022-11-28 19:00:05',
    '2022-11-28 06:30:05',
    '2022-11-28 19:00:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    796,
    'CHECKOUT',
    '7',
    '2022-11-28 19:02:05',
    '2022-11-28 06:32:05',
    '2022-11-28 19:02:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    797,
    'CHECKIN',
    '3',
    '2022-11-29 09:13:09',
    '2022-11-28 20:43:09',
    '2022-11-29 09:13:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    798,
    'CHECKIN',
    '7',
    '2022-11-29 09:13:40',
    '2022-11-28 20:43:40',
    '2022-11-29 09:13:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    799,
    'CHECKIN',
    '5',
    '2022-11-29 09:17:29',
    '2022-11-28 20:47:29',
    '2022-11-29 09:17:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    800,
    'CHECKIN',
    '4',
    '2022-11-29 09:36:52',
    '2022-11-28 21:06:52',
    '2022-11-29 09:36:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    801,
    'BREAKIN',
    '4',
    '2022-11-29 12:57:07',
    '2022-11-29 00:27:07',
    '2022-11-29 12:57:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    802,
    'BREAKIN',
    '3',
    '2022-11-29 12:59:53',
    '2022-11-29 00:29:53',
    '2022-11-29 12:59:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    803,
    'BREAKIN',
    '5',
    '2022-11-29 13:05:31',
    '2022-11-29 00:35:31',
    '2022-11-29 13:05:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    804,
    'BREAKIN',
    '7',
    '2022-11-29 13:06:29',
    '2022-11-29 00:36:29',
    '2022-11-29 13:06:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    805,
    'BREAKOUT',
    '4',
    '2022-11-29 13:49:52',
    '2022-11-29 01:19:52',
    '2022-11-29 13:49:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    806,
    'BREAKOUT',
    '7',
    '2022-11-29 14:07:46',
    '2022-11-29 01:37:46',
    '2022-11-29 14:07:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    807,
    'BREAKOUT',
    '3',
    '2022-11-29 14:09:19',
    '2022-11-29 01:39:19',
    '2022-11-29 14:09:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    808,
    'BREAKIN',
    '4',
    '2022-11-29 17:18:27',
    '2022-11-29 04:48:27',
    '2022-11-29 17:18:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    809,
    'BREAKOUT',
    '4',
    '2022-11-29 17:18:28',
    '2022-11-29 04:48:28',
    '2022-11-29 17:18:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    810,
    'CHECKOUT',
    '4',
    '2022-11-29 18:39:51',
    '2022-11-29 06:09:51',
    '2022-11-29 18:39:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    811,
    'CHECKOUT',
    '3',
    '2022-11-29 18:46:19',
    '2022-11-29 06:16:19',
    '2022-11-29 18:46:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    812,
    'BREAKOUT',
    '5',
    '2022-11-29 18:51:22',
    '2022-11-29 06:21:22',
    '2022-11-29 18:51:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    813,
    'CHECKOUT',
    '5',
    '2022-11-29 18:51:29',
    '2022-11-29 06:21:29',
    '2022-11-29 18:51:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    814,
    'CHECKOUT',
    '7',
    '2022-11-29 18:57:19',
    '2022-11-29 06:27:19',
    '2022-11-29 18:57:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    815,
    'CHECKIN',
    '3',
    '2022-11-30 09:11:41',
    '2022-11-29 20:41:41',
    '2022-11-30 09:11:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    816,
    'CHECKIN',
    '7',
    '2022-11-30 09:12:19',
    '2022-11-29 20:42:19',
    '2022-11-30 09:12:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    817,
    'CHECKIN',
    '5',
    '2022-11-30 09:17:49',
    '2022-11-29 20:47:49',
    '2022-11-30 09:17:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    818,
    'CHECKIN',
    '4',
    '2022-11-30 09:31:41',
    '2022-11-29 21:01:41',
    '2022-11-30 09:31:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    819,
    'BREAKIN',
    '4',
    '2022-11-30 10:01:16',
    '2022-11-29 21:31:16',
    '2022-11-30 10:01:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    820,
    'BREAKOUT',
    '4',
    '2022-11-30 10:22:28',
    '2022-11-29 21:52:28',
    '2022-11-30 10:22:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    821,
    'BREAKIN',
    '5',
    '2022-11-30 13:20:12',
    '2022-11-30 00:50:12',
    '2022-11-30 13:20:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    822,
    'BREAKIN',
    '3',
    '2022-11-30 13:20:15',
    '2022-11-30 00:50:15',
    '2022-11-30 13:20:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    823,
    'BREAKIN',
    '7',
    '2022-11-30 13:20:35',
    '2022-11-30 00:50:35',
    '2022-11-30 13:20:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    824,
    'BREAKIN',
    '4',
    '2022-11-30 13:21:19',
    '2022-11-30 00:51:19',
    '2022-11-30 13:21:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    825,
    'BREAKOUT',
    '7',
    '2022-11-30 14:10:45',
    '2022-11-30 01:40:45',
    '2022-11-30 14:10:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    826,
    'BREAKOUT',
    '5',
    '2022-11-30 14:12:16',
    '2022-11-30 01:42:16',
    '2022-11-30 14:12:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    827,
    'BREAKOUT',
    '4',
    '2022-11-30 14:14:15',
    '2022-11-30 01:44:15',
    '2022-11-30 14:14:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    828,
    'BREAKOUT',
    '3',
    '2022-11-30 14:15:30',
    '2022-11-30 01:45:30',
    '2022-11-30 14:15:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    829,
    'CHECKOUT',
    '3',
    '2022-11-30 19:09:06',
    '2022-11-30 06:39:06',
    '2022-11-30 19:09:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    830,
    'CHECKOUT',
    '4',
    '2022-11-30 19:09:10',
    '2022-11-30 06:39:10',
    '2022-11-30 19:09:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    831,
    'CHECKOUT',
    '5',
    '2022-11-30 19:12:10',
    '2022-11-30 06:42:10',
    '2022-11-30 19:12:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    832,
    'CHECKOUT',
    '7',
    '2022-11-30 19:13:35',
    '2022-11-30 06:43:35',
    '2022-11-30 19:13:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    833,
    'CHECKIN',
    '3',
    '2022-12-01 08:54:14',
    '2022-11-30 20:24:14',
    '2022-12-01 08:54:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    834,
    'CHECKIN',
    '5',
    '2022-12-01 09:21:48',
    '2022-11-30 20:51:48',
    '2022-12-01 09:21:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    835,
    'CHECKIN',
    '4',
    '2022-12-01 09:31:29',
    '2022-11-30 21:01:29',
    '2022-12-01 09:31:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    836,
    'CHECKIN',
    '7',
    '2022-12-01 10:02:54',
    '2022-11-30 21:32:54',
    '2022-12-01 10:02:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    837,
    'BREAKIN',
    '4',
    '2022-12-01 13:23:08',
    '2022-12-01 00:53:08',
    '2022-12-01 13:23:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    838,
    'BREAKIN',
    '5',
    '2022-12-01 13:23:24',
    '2022-12-01 00:53:24',
    '2022-12-01 13:23:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    839,
    'BREAKIN',
    '7',
    '2022-12-01 13:23:30',
    '2022-12-01 00:53:30',
    '2022-12-01 13:23:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    840,
    'BREAKIN',
    '3',
    '2022-12-01 13:35:21',
    '2022-12-01 01:05:21',
    '2022-12-01 13:35:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    841,
    'BREAKOUT',
    '3',
    '2022-12-01 14:16:27',
    '2022-12-01 01:46:27',
    '2022-12-01 14:16:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    842,
    'BREAKOUT',
    '5',
    '2022-12-01 14:19:00',
    '2022-12-01 01:49:00',
    '2022-12-01 14:19:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    843,
    'BREAKOUT',
    '7',
    '2022-12-01 14:20:52',
    '2022-12-01 01:50:52',
    '2022-12-01 14:20:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    844,
    'BREAKOUT',
    '4',
    '2022-12-01 14:26:17',
    '2022-12-01 01:56:17',
    '2022-12-01 14:26:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    845,
    'BREAKIN',
    '4',
    '2022-12-01 17:04:32',
    '2022-12-01 04:34:32',
    '2022-12-01 17:04:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    846,
    'BREAKOUT',
    '4',
    '2022-12-01 17:19:53',
    '2022-12-01 04:49:53',
    '2022-12-01 17:19:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    847,
    'CHECKOUT',
    '3',
    '2022-12-01 18:42:59',
    '2022-12-01 06:12:59',
    '2022-12-01 18:43:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    848,
    'CHECKOUT',
    '4',
    '2022-12-01 18:52:45',
    '2022-12-01 06:22:45',
    '2022-12-01 18:52:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    849,
    'CHECKOUT',
    '7',
    '2022-12-01 18:58:04',
    '2022-12-01 06:28:04',
    '2022-12-01 18:58:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    850,
    'CHECKOUT',
    '5',
    '2022-12-01 19:00:41',
    '2022-12-01 06:30:41',
    '2022-12-01 19:00:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    851,
    'CHECKIN',
    '4',
    '2022-12-02 08:15:27',
    '2022-12-01 19:45:27',
    '2022-12-02 08:15:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    852,
    'CHECKIN',
    '5',
    '2022-12-02 09:05:40',
    '2022-12-01 20:35:40',
    '2022-12-02 09:05:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    853,
    'CHECKIN',
    '3',
    '2022-12-02 09:19:16',
    '2022-12-01 20:49:16',
    '2022-12-02 09:19:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    854,
    'CHECKIN',
    '7',
    '2022-12-02 09:28:12',
    '2022-12-01 20:58:12',
    '2022-12-02 09:28:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    855,
    'BREAKIN',
    '7',
    '2022-12-02 11:51:04',
    '2022-12-01 23:21:04',
    '2022-12-02 11:51:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    856,
    'BREAKIN',
    '7',
    '2022-12-02 11:51:06',
    '2022-12-01 23:21:06',
    '2022-12-02 11:51:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    857,
    'BREAKOUT',
    '7',
    '2022-12-02 11:54:43',
    '2022-12-01 23:24:43',
    '2022-12-02 11:54:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    858,
    'BREAKIN',
    '4',
    '2022-12-02 13:13:35',
    '2022-12-02 00:43:35',
    '2022-12-02 13:13:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    859,
    'BREAKIN',
    '5',
    '2022-12-02 13:14:50',
    '2022-12-02 00:44:50',
    '2022-12-02 13:14:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    860,
    'BREAKIN',
    '7',
    '2022-12-02 13:15:11',
    '2022-12-02 00:45:11',
    '2022-12-02 13:15:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    861,
    'BREAKIN',
    '3',
    '2022-12-02 13:18:30',
    '2022-12-02 00:48:30',
    '2022-12-02 13:18:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    862,
    'BREAKOUT',
    '4',
    '2022-12-02 14:09:55',
    '2022-12-02 01:39:55',
    '2022-12-02 14:09:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    863,
    'BREAKOUT',
    '5',
    '2022-12-02 14:13:10',
    '2022-12-02 01:43:10',
    '2022-12-02 14:13:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    864,
    'BREAKOUT',
    '7',
    '2022-12-02 14:13:32',
    '2022-12-02 01:43:32',
    '2022-12-02 14:13:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    865,
    'BREAKOUT',
    '3',
    '2022-12-02 14:13:46',
    '2022-12-02 01:43:46',
    '2022-12-02 14:13:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    866,
    'CHECKIN',
    '7',
    '2022-12-05 09:14:50',
    '2022-12-04 20:44:50',
    '2022-12-05 09:14:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    867,
    'CHECKIN',
    '3',
    '2022-12-05 09:15:15',
    '2022-12-04 20:45:15',
    '2022-12-05 09:15:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    868,
    'CHECKIN',
    '5',
    '2022-12-05 09:32:23',
    '2022-12-04 21:02:23',
    '2022-12-05 09:32:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    869,
    'CHECKIN',
    '4',
    '2022-12-05 10:04:44',
    '2022-12-04 21:34:44',
    '2022-12-05 10:04:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    870,
    'BREAKIN',
    '4',
    '2022-12-05 13:15:09',
    '2022-12-05 00:45:09',
    '2022-12-05 13:15:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    871,
    'BREAKIN',
    '3',
    '2022-12-05 13:16:20',
    '2022-12-05 00:46:20',
    '2022-12-05 13:16:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    872,
    'BREAKIN',
    '5',
    '2022-12-05 13:17:07',
    '2022-12-05 00:47:07',
    '2022-12-05 13:17:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    873,
    'BREAKIN',
    '7',
    '2022-12-05 13:17:12',
    '2022-12-05 00:47:12',
    '2022-12-05 13:17:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    874,
    'BREAKOUT',
    '3',
    '2022-12-05 14:11:36',
    '2022-12-05 01:41:36',
    '2022-12-05 14:11:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    875,
    'BREAKOUT',
    '4',
    '2022-12-05 14:15:10',
    '2022-12-05 01:45:10',
    '2022-12-05 14:15:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    876,
    'BREAKOUT',
    '7',
    '2022-12-05 14:17:22',
    '2022-12-05 01:47:22',
    '2022-12-05 14:17:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    877,
    'BREAKIN',
    '4',
    '2022-12-05 17:08:31',
    '2022-12-05 04:38:31',
    '2022-12-05 17:08:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    878,
    'BREAKOUT',
    '4',
    '2022-12-05 17:22:33',
    '2022-12-05 04:52:33',
    '2022-12-05 17:22:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    879,
    'BREAKOUT',
    '5',
    '2022-12-05 17:49:17',
    '2022-12-05 05:22:01',
    '2022-12-05 14:10:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    880,
    'BREAKIN',
    '5',
    '2022-12-05 17:49:24',
    '2022-12-05 05:19:24',
    '2022-12-05 17:49:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    881,
    'BREAKOUT',
    '5',
    '2022-12-05 18:03:56',
    '2022-12-05 05:33:56',
    '2022-12-05 18:03:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    882,
    'CHECKOUT',
    '3',
    '2022-12-05 19:02:53',
    '2022-12-05 06:32:53',
    '2022-12-05 19:02:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    883,
    'CHECKOUT',
    '4',
    '2022-12-05 19:20:41',
    '2022-12-05 06:50:41',
    '2022-12-05 19:20:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    884,
    'CHECKOUT',
    '7',
    '2022-12-05 19:21:34',
    '2022-12-05 06:51:34',
    '2022-12-05 19:21:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    885,
    'CHECKOUT',
    '5',
    '2022-12-05 19:29:09',
    '2022-12-05 06:59:09',
    '2022-12-05 19:29:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    886,
    'CHECKIN',
    '3',
    '2022-12-06 09:09:32',
    '2022-12-05 20:39:32',
    '2022-12-06 09:09:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    887,
    'CHECKIN',
    '5',
    '2022-12-06 09:16:34',
    '2022-12-05 20:46:34',
    '2022-12-06 09:16:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    888,
    'CHECKIN',
    '4',
    '2022-12-06 09:29:15',
    '2022-12-05 20:59:15',
    '2022-12-06 09:29:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    889,
    'CHECKIN',
    '7',
    '2022-12-06 09:45:40',
    '2022-12-05 21:15:40',
    '2022-12-06 09:45:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    890,
    'BREAKIN',
    '3',
    '2022-12-06 12:05:51',
    '2022-12-05 23:35:51',
    '2022-12-06 12:05:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    891,
    'BREAKIN',
    '4',
    '2022-12-06 13:12:43',
    '2022-12-06 00:42:43',
    '2022-12-06 13:12:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    892,
    'BREAKIN',
    '5',
    '2022-12-06 13:13:23',
    '2022-12-06 00:43:23',
    '2022-12-06 13:13:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    893,
    'BREAKIN',
    '7',
    '2022-12-06 13:13:23',
    '2022-12-06 00:43:23',
    '2022-12-06 13:13:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    894,
    'BREAKOUT',
    '5',
    '2022-12-06 13:35:23',
    '2022-12-06 01:05:23',
    '2022-12-06 13:35:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    895,
    'BREAKOUT',
    '7',
    '2022-12-06 13:44:53',
    '2022-12-06 01:14:53',
    '2022-12-06 13:44:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    896,
    'BREAKOUT',
    '4',
    '2022-12-06 14:10:41',
    '2022-12-06 01:40:41',
    '2022-12-06 14:10:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    897,
    'BREAKOUT',
    '3',
    '2022-12-06 15:10:39',
    '2022-12-06 02:40:39',
    '2022-12-06 15:10:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    898,
    'BREAKIN',
    '4',
    '2022-12-06 17:06:59',
    '2022-12-06 04:36:59',
    '2022-12-06 17:06:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    899,
    'BREAKOUT',
    '4',
    '2022-12-06 17:28:17',
    '2022-12-06 04:58:17',
    '2022-12-06 17:28:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    900,
    'CHECKOUT',
    '7',
    '2022-12-06 19:41:03',
    '2022-12-06 07:11:03',
    '2022-12-06 19:41:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    901,
    'CHECKOUT',
    '3',
    '2022-12-06 19:44:13',
    '2022-12-06 07:14:13',
    '2022-12-06 19:44:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    902,
    'CHECKOUT',
    '4',
    '2022-12-06 19:51:56',
    '2022-12-06 07:21:56',
    '2022-12-06 19:51:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    903,
    'CHECKOUT',
    '5',
    '2022-12-06 20:11:47',
    '2022-12-06 07:41:47',
    '2022-12-06 20:11:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    904,
    'CHECKIN',
    '3',
    '2022-12-07 09:10:55',
    '2022-12-06 20:40:55',
    '2022-12-07 09:10:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    905,
    'CHECKIN',
    '5',
    '2022-12-07 09:16:54',
    '2022-12-06 20:46:54',
    '2022-12-07 09:16:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    906,
    'CHECKIN',
    '4',
    '2022-12-07 10:04:32',
    '2022-12-06 21:34:32',
    '2022-12-07 10:04:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    907,
    'BREAKIN',
    '4',
    '2022-12-07 13:17:27',
    '2022-12-07 00:47:27',
    '2022-12-07 13:17:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    908,
    'BREAKIN',
    '5',
    '2022-12-07 13:19:22',
    '2022-12-07 00:49:22',
    '2022-12-07 13:19:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    909,
    'BREAKIN',
    '3',
    '2022-12-07 13:30:00',
    '2022-12-07 01:00:00',
    '2022-12-07 13:30:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    910,
    'BREAKOUT',
    '4',
    '2022-12-07 14:08:07',
    '2022-12-07 01:38:07',
    '2022-12-07 14:08:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    911,
    'BREAKOUT',
    '5',
    '2022-12-07 14:11:33',
    '2022-12-07 01:41:33',
    '2022-12-07 14:11:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    912,
    'BREAKOUT',
    '3',
    '2022-12-07 14:14:18',
    '2022-12-07 01:44:18',
    '2022-12-07 14:14:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    913,
    'CHECKIN',
    '5',
    '2022-12-08 14:02:13',
    '2022-12-08 01:32:13',
    '2022-12-08 14:02:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    914,
    'CHECKIN',
    '3',
    '2022-12-08 14:02:14',
    '2022-12-08 01:32:14',
    '2022-12-08 14:02:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    915,
    'BREAKIN',
    '3',
    '2022-12-08 14:02:15',
    '2022-12-08 01:32:15',
    '2022-12-08 14:02:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    916,
    'BREAKOUT',
    '3',
    '2022-12-08 14:02:16',
    '2022-12-08 01:32:16',
    '2022-12-08 14:02:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    917,
    'BREAKOUT',
    '3',
    '2022-12-08 14:02:18',
    '2022-12-08 01:32:18',
    '2022-12-08 14:02:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    918,
    'CHECKIN',
    '7',
    '2022-12-08 14:03:00',
    '2022-12-08 01:33:00',
    '2022-12-08 14:03:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    919,
    'BREAKIN',
    '7',
    '2022-12-08 14:03:02',
    '2022-12-08 01:33:02',
    '2022-12-08 14:03:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    920,
    'BREAKOUT',
    '7',
    '2022-12-08 14:03:03',
    '2022-12-08 01:33:03',
    '2022-12-08 14:03:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    921,
    'CHECKIN',
    '4',
    '2022-12-08 14:15:29',
    '2022-12-08 01:45:29',
    '2022-12-08 14:15:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    922,
    'BREAKIN',
    '4',
    '2022-12-08 17:19:33',
    '2022-12-08 04:49:33',
    '2022-12-08 17:19:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    923,
    'BREAKOUT',
    '4',
    '2022-12-08 17:34:49',
    '2022-12-08 05:04:49',
    '2022-12-08 17:34:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    924,
    'CHECKOUT',
    '3',
    '2022-12-08 18:57:23',
    '2022-12-08 06:27:23',
    '2022-12-08 18:57:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    925,
    'CHECKOUT',
    '7',
    '2022-12-08 19:05:14',
    '2022-12-08 06:35:14',
    '2022-12-08 19:05:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    926,
    'CHECKOUT',
    '5',
    '2022-12-08 19:11:26',
    '2022-12-08 06:41:26',
    '2022-12-08 19:11:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    927,
    'CHECKOUT',
    '4',
    '2022-12-08 19:22:54',
    '2022-12-08 06:52:54',
    '2022-12-08 19:22:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    928,
    'CHECKIN',
    '3',
    '2022-12-09 09:15:56',
    '2022-12-08 20:45:56',
    '2022-12-09 09:15:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    929,
    'CHECKIN',
    '5',
    '2022-12-09 09:16:05',
    '2022-12-08 20:46:05',
    '2022-12-09 09:16:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    930,
    'CHECKIN',
    '7',
    '2022-12-09 09:16:53',
    '2022-12-08 20:46:53',
    '2022-12-09 09:16:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    931,
    'CHECKIN',
    '4',
    '2022-12-09 09:25:02',
    '2022-12-08 20:55:02',
    '2022-12-09 09:25:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    932,
    'BREAKIN',
    '7',
    '2022-12-09 13:01:22',
    '2022-12-09 00:31:22',
    '2022-12-09 13:01:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    933,
    'BREAKIN',
    '4',
    '2022-12-09 13:01:33',
    '2022-12-09 00:31:33',
    '2022-12-09 13:01:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    934,
    'BREAKIN',
    '5',
    '2022-12-09 13:03:47',
    '2022-12-09 00:33:47',
    '2022-12-09 13:03:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    935,
    'BREAKOUT',
    '5',
    '2022-12-09 13:20:48',
    '2022-12-09 00:50:48',
    '2022-12-09 13:20:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    936,
    'BREAKIN',
    '5',
    '2022-12-09 13:20:49',
    '2022-12-09 00:50:49',
    '2022-12-09 13:20:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    937,
    'BREAKIN',
    '3',
    '2022-12-09 13:21:13',
    '2022-12-09 00:51:13',
    '2022-12-09 13:21:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    938,
    'BREAKOUT',
    '5',
    '2022-12-09 13:56:30',
    '2022-12-09 01:26:30',
    '2022-12-09 13:56:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    939,
    'BREAKOUT',
    '7',
    '2022-12-09 13:59:21',
    '2022-12-09 01:29:21',
    '2022-12-09 13:59:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    940,
    'BREAKOUT',
    '4',
    '2022-12-09 14:04:58',
    '2022-12-09 01:34:58',
    '2022-12-09 14:04:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    941,
    'BREAKOUT',
    '3',
    '2022-12-09 14:47:34',
    '2022-12-09 02:17:34',
    '2022-12-09 14:47:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    942,
    'BREAKIN',
    '4',
    '2022-12-09 17:44:03',
    '2022-12-09 05:14:03',
    '2022-12-09 17:44:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    943,
    'BREAKOUT',
    '4',
    '2022-12-09 17:58:40',
    '2022-12-09 05:28:40',
    '2022-12-09 17:58:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    944,
    'CHECKOUT',
    '4',
    '2022-12-09 18:58:14',
    '2022-12-09 06:28:14',
    '2022-12-09 18:58:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    945,
    'CHECKOUT',
    '3',
    '2022-12-09 19:02:43',
    '2022-12-09 06:32:43',
    '2022-12-09 19:02:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    946,
    'CHECKOUT',
    '5',
    '2022-12-09 19:05:20',
    '2022-12-09 06:35:20',
    '2022-12-09 19:05:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    947,
    'CHECKOUT',
    '7',
    '2022-12-09 19:08:52',
    '2022-12-09 06:38:52',
    '2022-12-09 19:08:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    948,
    'CHECKIN',
    '5',
    '2022-12-12 09:19:09',
    '2022-12-11 20:49:09',
    '2022-12-12 09:19:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    949,
    'CHECKIN',
    '3',
    '2022-12-12 09:19:10',
    '2022-12-11 20:49:10',
    '2022-12-12 09:19:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    950,
    'CHECKIN',
    '4',
    '2022-12-12 09:37:58',
    '2022-12-11 21:07:58',
    '2022-12-12 09:38:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    951,
    'CHECKIN',
    '7',
    '2022-12-12 09:39:00',
    '2022-12-11 21:09:00',
    '2022-12-12 09:39:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    952,
    'BREAKIN',
    '3',
    '2022-12-12 13:02:30',
    '2022-12-12 00:32:30',
    '2022-12-12 13:02:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    953,
    'BREAKIN',
    '4',
    '2022-12-12 13:06:45',
    '2022-12-12 00:36:45',
    '2022-12-12 13:06:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    954,
    'BREAKIN',
    '7',
    '2022-12-12 13:07:38',
    '2022-12-12 00:37:38',
    '2022-12-12 13:07:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    955,
    'BREAKIN',
    '5',
    '2022-12-12 13:08:29',
    '2022-12-12 00:38:29',
    '2022-12-12 13:08:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    956,
    'BREAKOUT',
    '5',
    '2022-12-12 13:24:55',
    '2022-12-12 00:54:55',
    '2022-12-12 13:24:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    957,
    'BREAKOUT',
    '7',
    '2022-12-12 13:25:40',
    '2022-12-12 00:55:40',
    '2022-12-12 13:25:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    958,
    'BREAKOUT',
    '3',
    '2022-12-12 13:42:55',
    '2022-12-12 01:12:55',
    '2022-12-12 13:42:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    959,
    'BREAKOUT',
    '4',
    '2022-12-12 14:03:03',
    '2022-12-12 01:33:03',
    '2022-12-12 14:03:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    960,
    'BREAKIN',
    '4',
    '2022-12-12 17:04:56',
    '2022-12-12 04:34:56',
    '2022-12-12 17:04:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    961,
    'BREAKOUT',
    '4',
    '2022-12-12 17:21:58',
    '2022-12-12 04:51:58',
    '2022-12-12 17:21:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    962,
    'CHECKOUT',
    '3',
    '2022-12-12 19:08:52',
    '2022-12-12 06:38:52',
    '2022-12-12 19:08:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    963,
    'CHECKOUT',
    '4',
    '2022-12-12 19:09:53',
    '2022-12-12 06:39:53',
    '2022-12-12 19:09:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    964,
    'CHECKOUT',
    '7',
    '2022-12-12 19:10:29',
    '2022-12-12 06:40:29',
    '2022-12-12 19:10:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    965,
    'CHECKOUT',
    '5',
    '2022-12-12 19:11:13',
    '2022-12-12 06:41:13',
    '2022-12-12 19:11:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    966,
    'CHECKIN',
    '3',
    '2022-12-13 09:15:19',
    '2022-12-12 20:45:19',
    '2022-12-13 09:15:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    967,
    'CHECKIN',
    '5',
    '2022-12-13 09:18:05',
    '2022-12-12 20:48:05',
    '2022-12-13 09:18:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    968,
    'CHECKIN',
    '7',
    '2022-12-13 09:33:43',
    '2022-12-12 21:03:43',
    '2022-12-13 09:33:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    969,
    'CHECKIN',
    '4',
    '2022-12-13 09:38:38',
    '2022-12-12 21:08:38',
    '2022-12-13 09:38:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    970,
    'BREAKIN',
    '5',
    '2022-12-13 13:19:02',
    '2022-12-13 00:49:02',
    '2022-12-13 13:19:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    971,
    'BREAKIN',
    '7',
    '2022-12-13 13:19:36',
    '2022-12-13 00:49:36',
    '2022-12-13 13:19:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    972,
    'BREAKIN',
    '4',
    '2022-12-13 13:19:38',
    '2022-12-13 00:49:38',
    '2022-12-13 13:19:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    973,
    'BREAKIN',
    '3',
    '2022-12-13 13:33:03',
    '2022-12-13 01:03:03',
    '2022-12-13 13:33:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    974,
    'BREAKOUT',
    '3',
    '2022-12-13 14:11:12',
    '2022-12-13 01:41:12',
    '2022-12-13 14:11:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    975,
    'BREAKOUT',
    '7',
    '2022-12-13 14:11:32',
    '2022-12-13 01:41:32',
    '2022-12-13 14:11:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    976,
    'BREAKOUT',
    '4',
    '2022-12-13 14:23:10',
    '2022-12-13 01:53:10',
    '2022-12-13 14:23:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    977,
    'BREAKOUT',
    '5',
    '2022-12-13 15:51:05',
    '2022-12-13 03:21:05',
    '2022-12-13 15:51:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    978,
    'BREAKIN',
    '4',
    '2022-12-13 17:04:04',
    '2022-12-13 04:34:04',
    '2022-12-13 17:04:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    979,
    'BREAKOUT',
    '4',
    '2022-12-13 17:18:42',
    '2022-12-13 04:48:42',
    '2022-12-13 17:18:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    980,
    'CHECKOUT',
    '3',
    '2022-12-13 18:49:21',
    '2022-12-13 06:19:21',
    '2022-12-13 18:49:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    981,
    'CHECKOUT',
    '5',
    '2022-12-13 18:51:57',
    '2022-12-13 06:21:57',
    '2022-12-13 18:51:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    982,
    'CHECKOUT',
    '4',
    '2022-12-13 22:43:29',
    '2022-12-13 10:13:29',
    '2022-12-13 22:43:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    983,
    'CHECKIN',
    '7',
    '2022-12-14 09:13:13',
    '2022-12-13 20:43:13',
    '2022-12-14 09:13:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    984,
    'CHECKIN',
    '3',
    '2022-12-14 09:14:49',
    '2022-12-13 20:44:49',
    '2022-12-14 09:14:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    985,
    'CHECKIN',
    '5',
    '2022-12-14 09:19:25',
    '2022-12-13 20:49:25',
    '2022-12-14 09:19:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    986,
    'CHECKIN',
    '4',
    '2022-12-14 09:45:19',
    '2022-12-13 21:15:19',
    '2022-12-14 09:45:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    987,
    'BREAKIN',
    '4',
    '2022-12-14 13:08:09',
    '2022-12-14 00:38:09',
    '2022-12-14 13:08:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    988,
    'BREAKIN',
    '3',
    '2022-12-14 13:18:51',
    '2022-12-14 00:48:51',
    '2022-12-14 13:18:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    989,
    'BREAKOUT',
    '3',
    '2022-12-14 13:18:52',
    '2022-12-14 00:48:52',
    '2022-12-14 13:18:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    990,
    'BREAKIN',
    '5',
    '2022-12-14 13:19:05',
    '2022-12-14 00:49:05',
    '2022-12-14 13:19:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    991,
    'BREAKIN',
    '7',
    '2022-12-14 13:19:34',
    '2022-12-14 00:49:34',
    '2022-12-14 13:19:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    992,
    'BREAKIN',
    '3',
    '2022-12-14 13:37:02',
    '2022-12-14 01:07:02',
    '2022-12-14 13:36:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    993,
    'BREAKOUT',
    '4',
    '2022-12-14 14:06:20',
    '2022-12-14 01:36:20',
    '2022-12-14 14:06:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    994,
    'BREAKOUT',
    '7',
    '2022-12-14 14:08:25',
    '2022-12-14 01:38:25',
    '2022-12-14 14:08:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    995,
    'BREAKOUT',
    '5',
    '2022-12-14 14:08:31',
    '2022-12-14 01:38:31',
    '2022-12-14 14:08:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    996,
    'CHECKIN',
    '3',
    '2022-12-15 13:06:51',
    '2022-12-15 00:36:51',
    '2022-12-15 13:06:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    997,
    'BREAKIN',
    '3',
    '2022-12-15 13:06:52',
    '2022-12-15 00:36:52',
    '2022-12-15 13:06:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    998,
    'CHECKIN',
    '5',
    '2022-12-15 13:07:01',
    '2022-12-15 00:37:01',
    '2022-12-15 13:07:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    999,
    'BREAKIN',
    '5',
    '2022-12-15 13:07:02',
    '2022-12-15 00:37:02',
    '2022-12-15 13:07:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1000,
    'CHECKIN',
    '7',
    '2022-12-15 13:07:08',
    '2022-12-15 00:37:08',
    '2022-12-15 13:07:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1001,
    'BREAKIN',
    '7',
    '2022-12-15 13:12:34',
    '2022-12-15 00:42:34',
    '2022-12-15 13:12:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1002,
    'BREAKOUT',
    '5',
    '2022-12-15 14:04:59',
    '2022-12-15 01:34:59',
    '2022-12-15 14:04:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1003,
    'BREAKOUT',
    '7',
    '2022-12-15 14:06:36',
    '2022-12-15 01:36:36',
    '2022-12-15 14:06:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1004,
    'BREAKOUT',
    '3',
    '2022-12-15 14:07:59',
    '2022-12-15 01:37:59',
    '2022-12-15 14:07:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1005,
    'CHECKIN',
    '4',
    '2022-12-15 14:19:19',
    '2022-12-15 01:49:19',
    '2022-12-15 14:19:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1006,
    'CHECKOUT',
    '4',
    '2022-12-15 18:47:09',
    '2022-12-15 06:17:09',
    '2022-12-15 18:47:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1007,
    'CHECKOUT',
    '3',
    '2022-12-15 18:53:29',
    '2022-12-15 06:23:29',
    '2022-12-15 18:53:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1008,
    'CHECKOUT',
    '5',
    '2022-12-15 18:58:19',
    '2022-12-15 06:28:19',
    '2022-12-15 18:58:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1009,
    'CHECKOUT',
    '7',
    '2022-12-15 19:18:00',
    '2022-12-15 06:48:00',
    '2022-12-15 19:18:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1010,
    'CHECKIN',
    '3',
    '2022-12-16 09:13:10',
    '2022-12-15 20:43:10',
    '2022-12-16 09:13:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1011,
    'CHECKIN',
    '5',
    '2022-12-16 09:26:28',
    '2022-12-15 20:56:28',
    '2022-12-16 09:26:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1012,
    'CHECKIN',
    '7',
    '2022-12-16 09:27:14',
    '2022-12-15 20:57:14',
    '2022-12-16 09:27:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1013,
    'CHECKIN',
    '4',
    '2022-12-16 09:47:02',
    '2022-12-15 21:17:02',
    '2022-12-16 09:47:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1014,
    'BREAKIN',
    '7',
    '2022-12-16 13:11:39',
    '2022-12-16 00:41:39',
    '2022-12-16 13:11:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1015,
    'BREAKIN',
    '3',
    '2022-12-16 13:28:30',
    '2022-12-16 00:58:30',
    '2022-12-16 13:28:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1016,
    'BREAKIN',
    '5',
    '2022-12-16 13:29:14',
    '2022-12-16 00:59:14',
    '2022-12-16 13:29:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1017,
    'BREAKOUT',
    '7',
    '2022-12-16 13:30:29',
    '2022-12-16 01:00:29',
    '2022-12-16 13:30:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1018,
    'BREAKOUT',
    '5',
    '2022-12-16 14:06:56',
    '2022-12-16 01:36:56',
    '2022-12-16 14:06:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1019,
    'BREAKOUT',
    '3',
    '2022-12-16 14:07:30',
    '2022-12-16 01:37:30',
    '2022-12-16 14:07:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1020,
    'BREAKIN',
    '4',
    '2022-12-16 14:37:59',
    '2022-12-16 02:07:59',
    '2022-12-16 14:37:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1021,
    'BREAKOUT',
    '4',
    '2022-12-16 14:38:53',
    '2022-12-16 02:08:53',
    '2022-12-16 14:38:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1022,
    'BREAKIN',
    '4',
    '2022-12-16 17:06:11',
    '2022-12-16 04:36:11',
    '2022-12-16 17:06:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1023,
    'BREAKOUT',
    '4',
    '2022-12-16 17:24:04',
    '2022-12-16 04:54:04',
    '2022-12-16 17:24:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1024,
    'CHECKOUT',
    '5',
    '2022-12-16 19:02:44',
    '2022-12-16 06:32:44',
    '2022-12-16 19:02:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1025,
    'CHECKOUT',
    '4',
    '2022-12-16 19:03:25',
    '2022-12-16 06:33:25',
    '2022-12-16 19:03:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1026,
    'CHECKOUT',
    '3',
    '2022-12-16 19:06:08',
    '2022-12-16 06:36:08',
    '2022-12-16 19:06:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1027,
    'CHECKOUT',
    '7',
    '2022-12-16 19:10:50',
    '2022-12-16 06:40:50',
    '2022-12-16 19:10:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1028,
    'CHECKIN',
    '3',
    '2022-12-17 09:14:00',
    '2022-12-16 20:44:00',
    '2022-12-17 09:14:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1029,
    'CHECKIN',
    '5',
    '2022-12-17 09:26:49',
    '2022-12-16 20:56:49',
    '2022-12-17 09:26:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1030,
    'CHECKIN',
    '7',
    '2022-12-17 09:31:37',
    '2022-12-16 21:01:37',
    '2022-12-17 09:31:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1031,
    'CHECKIN',
    '4',
    '2022-12-17 09:49:04',
    '2022-12-16 21:19:04',
    '2022-12-17 09:49:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1032,
    'BREAKIN',
    '5',
    '2022-12-17 13:13:10',
    '2022-12-17 00:43:10',
    '2022-12-17 13:13:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1033,
    'BREAKIN',
    '4',
    '2022-12-17 13:13:27',
    '2022-12-17 00:43:27',
    '2022-12-17 13:13:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1034,
    'BREAKIN',
    '3',
    '2022-12-17 13:14:49',
    '2022-12-17 00:44:49',
    '2022-12-17 13:14:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1035,
    'BREAKIN',
    '7',
    '2022-12-17 13:15:40',
    '2022-12-17 00:45:40',
    '2022-12-17 13:15:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1036,
    'BREAKOUT',
    '7',
    '2022-12-17 14:10:41',
    '2022-12-17 01:40:41',
    '2022-12-17 14:10:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1037,
    'BREAKOUT',
    '7',
    '2022-12-17 14:10:43',
    '2022-12-17 01:40:43',
    '2022-12-17 14:10:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1038,
    'BREAKOUT',
    '4',
    '2022-12-17 14:11:17',
    '2022-12-17 01:41:17',
    '2022-12-17 14:11:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1039,
    'BREAKOUT',
    '5',
    '2022-12-17 14:11:59',
    '2022-12-17 01:41:59',
    '2022-12-17 14:11:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1040,
    'BREAKOUT',
    '3',
    '2022-12-17 14:14:46',
    '2022-12-17 01:44:46',
    '2022-12-17 14:14:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1041,
    'CHECKIN',
    '5',
    '2022-12-19 11:15:21',
    '2022-12-18 22:45:21',
    '2022-12-19 11:15:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1042,
    'CHECKIN',
    '7',
    '2022-12-19 11:28:29',
    '2022-12-18 22:58:29',
    '2022-12-19 11:28:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1043,
    'CHECKIN',
    '4',
    '2022-12-19 13:06:22',
    '2022-12-19 00:36:22',
    '2022-12-19 13:06:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1044,
    'BREAKIN',
    '4',
    '2022-12-19 13:06:24',
    '2022-12-19 00:36:24',
    '2022-12-19 13:06:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1045,
    'BREAKIN',
    '5',
    '2022-12-19 13:06:45',
    '2022-12-19 00:36:45',
    '2022-12-19 13:06:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1046,
    'BREAKIN',
    '7',
    '2022-12-19 13:19:02',
    '2022-12-19 00:49:02',
    '2022-12-19 13:19:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1047,
    'BREAKOUT',
    '7',
    '2022-12-19 13:24:56',
    '2022-12-19 00:54:56',
    '2022-12-19 13:24:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1048,
    'BREAKOUT',
    '4',
    '2022-12-19 14:04:02',
    '2022-12-19 01:34:02',
    '2022-12-19 14:04:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1049,
    'BREAKOUT',
    '5',
    '2022-12-19 14:06:34',
    '2022-12-19 01:36:34',
    '2022-12-19 14:06:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1050,
    'CHECKOUT',
    '4',
    '2022-12-19 14:10:18',
    '2022-12-19 01:40:18',
    '2022-12-19 14:10:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1051,
    'CHECKOUT',
    '5',
    '2022-12-19 19:10:22',
    '2022-12-19 06:40:22',
    '2022-12-19 19:10:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1052,
    'CHECKOUT',
    '7',
    '2022-12-19 19:16:46',
    '2022-12-19 06:46:46',
    '2022-12-19 19:16:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1053,
    'CHECKIN',
    '3',
    '2022-12-20 09:10:34',
    '2022-12-19 20:40:34',
    '2022-12-20 09:10:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1054,
    'CHECKIN',
    '5',
    '2022-12-20 09:27:39',
    '2022-12-19 20:57:39',
    '2022-12-20 09:27:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1055,
    'BREAKIN',
    '5',
    '2022-12-20 09:28:13',
    '2022-12-19 20:58:13',
    '2022-12-20 09:28:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1056,
    'BREAKOUT',
    '5',
    '2022-12-20 09:28:15',
    '2022-12-19 20:58:15',
    '2022-12-20 09:28:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1057,
    'CHECKIN',
    '7',
    '2022-12-20 09:32:09',
    '2022-12-19 21:02:09',
    '2022-12-20 09:32:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1058,
    'CHECKIN',
    '4',
    '2022-12-20 10:11:08',
    '2022-12-19 21:41:08',
    '2022-12-20 10:11:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1059,
    'BREAKIN',
    '5',
    '2022-12-20 13:03:46',
    '2022-12-20 00:33:46',
    '2022-12-20 13:03:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1060,
    'BREAKIN',
    '3',
    '2022-12-20 13:04:10',
    '2022-12-20 00:34:10',
    '2022-12-20 13:04:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1061,
    'BREAKIN',
    '7',
    '2022-12-20 13:35:25',
    '2022-12-20 01:05:25',
    '2022-12-20 13:35:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1062,
    'BREAKOUT',
    '7',
    '2022-12-20 14:13:46',
    '2022-12-20 01:43:46',
    '2022-12-20 14:13:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1063,
    'BREAKOUT',
    '3',
    '2022-12-20 14:18:06',
    '2022-12-20 01:48:06',
    '2022-12-20 14:18:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1064,
    'BREAKOUT',
    '5',
    '2022-12-20 14:18:10',
    '2022-12-20 01:48:10',
    '2022-12-20 14:18:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1065,
    'BREAKIN',
    '4',
    '2022-12-20 17:11:56',
    '2022-12-20 04:41:56',
    '2022-12-20 17:11:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1066,
    'BREAKOUT',
    '4',
    '2022-12-20 17:28:26',
    '2022-12-20 04:58:26',
    '2022-12-20 17:28:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1067,
    'CHECKOUT',
    '5',
    '2022-12-20 18:33:02',
    '2022-12-20 06:03:02',
    '2022-12-20 18:33:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1068,
    'CHECKOUT',
    '3',
    '2022-12-20 18:39:00',
    '2022-12-20 06:09:00',
    '2022-12-20 18:39:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1069,
    'CHECKOUT',
    '7',
    '2022-12-20 18:39:21',
    '2022-12-20 06:09:21',
    '2022-12-20 18:39:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1070,
    'CHECKOUT',
    '4',
    '2022-12-20 18:39:24',
    '2022-12-20 06:09:24',
    '2022-12-20 18:39:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1071,
    'CHECKIN',
    '3',
    '2022-12-21 09:13:16',
    '2022-12-20 20:43:16',
    '2022-12-21 09:13:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1072,
    'CHECKIN',
    '5',
    '2022-12-21 09:19:51',
    '2022-12-20 20:49:51',
    '2022-12-21 09:19:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1073,
    'CHECKIN',
    '7',
    '2022-12-21 09:41:28',
    '2022-12-20 21:11:28',
    '2022-12-21 09:41:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1074,
    'CHECKIN',
    '4',
    '2022-12-21 10:15:43',
    '2022-12-20 21:45:43',
    '2022-12-21 10:15:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1075,
    'CHECKOUT',
    '3',
    '2022-12-21 22:44:36',
    '2022-12-21 10:14:36',
    '2022-12-21 22:44:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1076,
    'CHECKIN',
    '3',
    '2022-12-22 09:08:40',
    '2022-12-21 20:38:40',
    '2022-12-22 09:08:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1077,
    'CHECKIN',
    '5',
    '2022-12-22 09:18:30',
    '2022-12-21 20:48:30',
    '2022-12-22 09:18:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1078,
    'CHECKIN',
    '4',
    '2022-12-22 09:20:59',
    '2022-12-21 20:50:59',
    '2022-12-22 09:20:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1079,
    'CHECKIN',
    '7',
    '2022-12-22 09:51:19',
    '2022-12-21 21:21:19',
    '2022-12-22 09:51:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1080,
    'BREAKIN',
    '4',
    '2022-12-22 13:16:35',
    '2022-12-22 00:46:35',
    '2022-12-22 13:16:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1081,
    'BREAKIN',
    '5',
    '2022-12-22 13:17:55',
    '2022-12-22 00:47:55',
    '2022-12-22 13:17:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1082,
    'BREAKIN',
    '7',
    '2022-12-22 13:18:04',
    '2022-12-22 00:48:04',
    '2022-12-22 13:18:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1083,
    'BREAKIN',
    '3',
    '2022-12-22 13:21:26',
    '2022-12-22 00:51:26',
    '2022-12-22 13:21:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1084,
    'BREAKOUT',
    '5',
    '2022-12-22 14:16:46',
    '2022-12-22 01:46:46',
    '2022-12-22 14:16:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1085,
    'BREAKOUT',
    '7',
    '2022-12-22 14:16:54',
    '2022-12-22 01:46:54',
    '2022-12-22 14:16:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1086,
    'BREAKOUT',
    '3',
    '2022-12-22 14:19:13',
    '2022-12-22 01:49:13',
    '2022-12-22 14:19:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1087,
    'BREAKOUT',
    '4',
    '2022-12-22 14:21:43',
    '2022-12-22 01:51:43',
    '2022-12-22 14:21:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1088,
    'BREAKIN',
    '3',
    '2022-12-22 15:44:59',
    '2022-12-22 03:14:59',
    '2022-12-22 15:45:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1089,
    'BREAKIN',
    '4',
    '2022-12-22 16:51:43',
    '2022-12-22 04:21:43',
    '2022-12-22 16:51:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1090,
    'BREAKOUT',
    '4',
    '2022-12-22 17:06:21',
    '2022-12-22 04:36:21',
    '2022-12-22 17:06:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1091,
    'CHECKOUT',
    '4',
    '2022-12-22 19:37:34',
    '2022-12-22 07:07:34',
    '2022-12-22 19:37:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1092,
    'BREAKOUT',
    '3',
    '2022-12-22 19:39:16',
    '2022-12-22 07:09:16',
    '2022-12-22 19:39:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1093,
    'CHECKOUT',
    '3',
    '2022-12-22 19:39:17',
    '2022-12-22 07:09:17',
    '2022-12-22 19:39:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1094,
    'CHECKOUT',
    '7',
    '2022-12-22 19:39:35',
    '2022-12-22 07:09:35',
    '2022-12-22 19:39:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1095,
    'CHECKOUT',
    '5',
    '2022-12-22 19:40:30',
    '2022-12-22 07:10:30',
    '2022-12-22 19:40:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1096,
    'CHECKIN',
    '3',
    '2022-12-23 09:10:05',
    '2022-12-22 20:40:05',
    '2022-12-23 09:10:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1097,
    'CHECKIN',
    '4',
    '2022-12-23 09:39:26',
    '2022-12-22 21:09:26',
    '2022-12-23 09:39:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1098,
    'CHECKIN',
    '5',
    '2022-12-23 09:40:33',
    '2022-12-22 21:10:33',
    '2022-12-23 09:40:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1099,
    'CHECKIN',
    '7',
    '2022-12-23 09:42:36',
    '2022-12-22 21:12:36',
    '2022-12-23 09:42:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1100,
    'BREAKIN',
    '4',
    '2022-12-23 12:59:57',
    '2022-12-23 00:29:57',
    '2022-12-23 12:59:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1101,
    'BREAKIN',
    '5',
    '2022-12-23 13:01:35',
    '2022-12-23 00:31:35',
    '2022-12-23 13:01:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1102,
    'BREAKIN',
    '7',
    '2022-12-23 13:02:53',
    '2022-12-23 00:32:53',
    '2022-12-23 13:02:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1103,
    'BREAKIN',
    '3',
    '2022-12-23 13:20:38',
    '2022-12-23 00:50:38',
    '2022-12-23 13:20:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1104,
    'BREAKOUT',
    '4',
    '2022-12-23 13:58:01',
    '2022-12-23 01:28:01',
    '2022-12-23 13:58:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1105,
    'BREAKOUT',
    '5',
    '2022-12-23 14:02:26',
    '2022-12-23 01:32:26',
    '2022-12-23 14:02:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1106,
    'BREAKOUT',
    '3',
    '2022-12-23 14:04:11',
    '2022-12-23 01:34:11',
    '2022-12-23 14:04:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1107,
    'BREAKOUT',
    '7',
    '2022-12-23 14:04:32',
    '2022-12-23 01:34:32',
    '2022-12-23 14:04:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1108,
    'BREAKIN',
    '4',
    '2022-12-23 17:04:57',
    '2022-12-23 04:34:57',
    '2022-12-23 17:04:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1109,
    'BREAKOUT',
    '4',
    '2022-12-23 17:21:39',
    '2022-12-23 04:51:39',
    '2022-12-23 17:21:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1110,
    'CHECKOUT',
    '3',
    '2022-12-23 18:32:27',
    '2022-12-23 06:02:27',
    '2022-12-23 18:32:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1111,
    'CHECKOUT',
    '5',
    '2022-12-23 18:32:57',
    '2022-12-23 06:02:57',
    '2022-12-23 18:32:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1112,
    'CHECKOUT',
    '7',
    '2022-12-23 18:36:44',
    '2022-12-23 06:06:44',
    '2022-12-23 18:36:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1113,
    'CHECKOUT',
    '4',
    '2022-12-23 18:38:26',
    '2022-12-23 06:08:26',
    '2022-12-23 18:38:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1114,
    'CHECKIN',
    '5',
    '2022-12-24 08:57:06',
    '2022-12-23 20:27:06',
    '2022-12-24 08:57:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1115,
    'CHECKIN',
    '7',
    '2022-12-24 09:26:48',
    '2022-12-23 20:56:48',
    '2022-12-24 09:26:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1116,
    'BREAKIN',
    '5',
    '2022-12-24 10:30:15',
    '2022-12-23 22:00:15',
    '2022-12-24 10:30:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1117,
    'BREAKOUT',
    '5',
    '2022-12-24 10:39:31',
    '2022-12-23 22:09:31',
    '2022-12-24 10:39:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1118,
    'CHECKIN',
    '3',
    '2022-12-26 09:18:01',
    '2022-12-25 20:48:01',
    '2022-12-26 09:18:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1119,
    'CHECKIN',
    '5',
    '2022-12-26 09:19:04',
    '2022-12-25 20:49:04',
    '2022-12-26 09:19:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1120,
    'CHECKIN',
    '7',
    '2022-12-26 09:37:15',
    '2022-12-25 21:07:15',
    '2022-12-26 09:37:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1121,
    'CHECKIN',
    '4',
    '2022-12-26 09:51:03',
    '2022-12-25 21:21:03',
    '2022-12-26 09:51:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1122,
    'BREAKIN',
    '4',
    '2022-12-26 12:52:44',
    '2022-12-26 00:22:44',
    '2022-12-26 12:52:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1123,
    'BREAKIN',
    '3',
    '2022-12-26 12:53:52',
    '2022-12-26 00:23:52',
    '2022-12-26 12:53:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1124,
    'BREAKIN',
    '5',
    '2022-12-26 13:04:13',
    '2022-12-26 00:34:13',
    '2022-12-26 13:04:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1125,
    'BREAKOUT',
    '4',
    '2022-12-26 14:03:24',
    '2022-12-26 01:33:24',
    '2022-12-26 14:03:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1126,
    'BREAKOUT',
    '5',
    '2022-12-26 14:05:35',
    '2022-12-26 01:35:35',
    '2022-12-26 14:05:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1127,
    'BREAKOUT',
    '3',
    '2022-12-26 14:07:25',
    '2022-12-26 01:37:25',
    '2022-12-26 14:07:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1128,
    'BREAKIN',
    '4',
    '2022-12-26 17:13:19',
    '2022-12-26 04:43:19',
    '2022-12-26 17:13:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1129,
    'BREAKOUT',
    '4',
    '2022-12-26 17:32:09',
    '2022-12-26 05:02:09',
    '2022-12-26 17:32:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1130,
    'CHECKOUT',
    '4',
    '2022-12-26 19:02:57',
    '2022-12-26 06:32:57',
    '2022-12-26 19:02:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1131,
    'CHECKOUT',
    '3',
    '2022-12-26 19:07:32',
    '2022-12-26 06:37:32',
    '2022-12-26 19:07:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1132,
    'CHECKOUT',
    '5',
    '2022-12-26 19:08:35',
    '2022-12-26 06:38:35',
    '2022-12-26 19:08:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1133,
    'CHECKOUT',
    '7',
    '2022-12-26 19:25:46',
    '2022-12-26 06:55:46',
    '2022-12-26 19:25:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1134,
    'CHECKIN',
    '3',
    '2022-12-27 09:20:21',
    '2022-12-26 20:50:21',
    '2022-12-27 09:20:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1135,
    'CHECKIN',
    '5',
    '2022-12-27 09:20:59',
    '2022-12-26 20:50:59',
    '2022-12-27 09:21:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1136,
    'CHECKIN',
    '7',
    '2022-12-27 09:33:26',
    '2022-12-26 21:03:26',
    '2022-12-27 09:33:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1137,
    'CHECKIN',
    '4',
    '2022-12-27 09:37:46',
    '2022-12-26 21:07:46',
    '2022-12-27 09:37:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1138,
    'BREAKIN',
    '4',
    '2022-12-27 12:55:06',
    '2022-12-27 00:25:06',
    '2022-12-27 12:55:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1139,
    'BREAKIN',
    '5',
    '2022-12-27 12:55:23',
    '2022-12-27 00:25:23',
    '2022-12-27 12:55:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1140,
    'BREAKIN',
    '3',
    '2022-12-27 13:12:35',
    '2022-12-27 00:42:35',
    '2022-12-27 13:12:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1141,
    'BREAKOUT',
    '5',
    '2022-12-27 13:47:10',
    '2022-12-27 01:17:10',
    '2022-12-27 13:47:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1142,
    'BREAKOUT',
    '3',
    '2022-12-27 13:49:06',
    '2022-12-27 01:19:06',
    '2022-12-27 13:49:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1143,
    'BREAKOUT',
    '4',
    '2022-12-27 13:57:16',
    '2022-12-27 01:27:16',
    '2022-12-27 13:57:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1144,
    'BREAKIN',
    '3',
    '2022-12-27 15:53:04',
    '2022-12-27 03:23:04',
    '2022-12-27 15:53:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1145,
    'BREAKOUT',
    '3',
    '2022-12-27 16:47:49',
    '2022-12-27 04:17:49',
    '2022-12-27 16:47:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1146,
    'BREAKIN',
    '4',
    '2022-12-27 17:10:01',
    '2022-12-27 04:40:01',
    '2022-12-27 17:10:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1147,
    'BREAKOUT',
    '4',
    '2022-12-27 17:26:39',
    '2022-12-27 04:56:39',
    '2022-12-27 17:26:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1148,
    'CHECKOUT',
    '5',
    '2022-12-27 18:45:53',
    '2022-12-27 06:15:53',
    '2022-12-27 18:45:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1149,
    'CHECKOUT',
    '3',
    '2022-12-27 19:01:13',
    '2022-12-27 06:31:13',
    '2022-12-27 19:01:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1150,
    'CHECKOUT',
    '7',
    '2022-12-27 19:06:57',
    '2022-12-27 06:36:57',
    '2022-12-27 19:06:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1151,
    'CHECKOUT',
    '4',
    '2022-12-27 19:12:17',
    '2022-12-27 06:42:17',
    '2022-12-27 19:12:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1152,
    'CHECKIN',
    '3',
    '2022-12-28 09:14:32',
    '2022-12-27 20:44:32',
    '2022-12-28 09:14:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1153,
    'CHECKIN',
    '5',
    '2022-12-28 09:15:01',
    '2022-12-27 20:45:01',
    '2022-12-28 09:15:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1154,
    'CHECKIN',
    '4',
    '2022-12-28 09:39:13',
    '2022-12-27 21:09:13',
    '2022-12-28 09:39:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1155,
    'CHECKIN',
    '7',
    '2022-12-28 09:39:52',
    '2022-12-27 21:09:52',
    '2022-12-28 09:39:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1156,
    'BREAKIN',
    '4',
    '2022-12-28 12:42:43',
    '2022-12-28 00:12:43',
    '2022-12-28 12:42:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1157,
    'BREAKIN',
    '3',
    '2022-12-28 12:43:29',
    '2022-12-28 00:13:29',
    '2022-12-28 12:43:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1158,
    'CHECKOUT',
    '5',
    '2022-12-28 13:03:45',
    '2022-12-28 00:33:45',
    '2022-12-28 13:03:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1159,
    'BREAKIN',
    '7',
    '2022-12-28 13:05:20',
    '2022-12-28 00:35:20',
    '2022-12-28 13:05:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1160,
    'BREAKOUT',
    '4',
    '2022-12-28 13:56:45',
    '2022-12-28 01:26:45',
    '2022-12-28 13:56:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1161,
    'BREAKOUT',
    '7',
    '2022-12-28 14:12:14',
    '2022-12-28 01:42:14',
    '2022-12-28 14:12:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1162,
    'BREAKOUT',
    '3',
    '2022-12-28 14:15:04',
    '2022-12-28 01:45:04',
    '2022-12-28 14:15:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1163,
    'CHECKOUT',
    '3',
    '2022-12-28 18:56:54',
    '2022-12-28 06:26:54',
    '2022-12-28 18:56:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1164,
    'CHECKOUT',
    '4',
    '2022-12-28 19:09:57',
    '2022-12-28 06:39:57',
    '2022-12-28 19:09:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1165,
    'CHECKOUT',
    '7',
    '2022-12-28 19:10:15',
    '2022-12-28 06:40:15',
    '2022-12-28 19:10:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1166,
    'CHECKIN',
    '3',
    '2022-12-29 09:15:18',
    '2022-12-28 20:45:18',
    '2022-12-29 09:15:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1167,
    'CHECKIN',
    '5',
    '2022-12-29 09:28:02',
    '2022-12-28 20:58:02',
    '2022-12-29 09:28:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1168,
    'CHECKIN',
    '4',
    '2022-12-29 09:32:43',
    '2022-12-28 21:02:43',
    '2022-12-29 09:32:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1169,
    'CHECKIN',
    '7',
    '2022-12-29 09:41:00',
    '2022-12-28 21:11:00',
    '2022-12-29 09:41:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1170,
    'BREAKIN',
    '4',
    '2022-12-29 13:11:28',
    '2022-12-29 00:41:28',
    '2022-12-29 13:11:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1171,
    'BREAKIN',
    '5',
    '2022-12-29 13:12:49',
    '2022-12-29 00:42:49',
    '2022-12-29 13:12:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1172,
    'BREAKIN',
    '7',
    '2022-12-29 13:12:56',
    '2022-12-29 00:42:56',
    '2022-12-29 13:12:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1173,
    'BREAKIN',
    '3',
    '2022-12-29 13:30:31',
    '2022-12-29 01:00:31',
    '2022-12-29 13:30:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1174,
    'BREAKOUT',
    '7',
    '2022-12-29 13:52:52',
    '2022-12-29 01:22:52',
    '2022-12-29 13:52:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1175,
    'BREAKOUT',
    '5',
    '2022-12-29 14:14:02',
    '2022-12-29 01:44:02',
    '2022-12-29 14:14:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1176,
    'BREAKOUT',
    '3',
    '2022-12-29 14:17:02',
    '2022-12-29 01:47:02',
    '2022-12-29 14:17:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1177,
    'BREAKOUT',
    '4',
    '2022-12-29 14:17:50',
    '2022-12-29 01:47:50',
    '2022-12-29 14:17:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1178,
    'BREAKIN',
    '4',
    '2022-12-29 17:25:42',
    '2022-12-29 04:55:42',
    '2022-12-29 17:25:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1179,
    'BREAKOUT',
    '4',
    '2022-12-29 17:45:04',
    '2022-12-29 05:15:04',
    '2022-12-29 17:45:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1180,
    'CHECKOUT',
    '3',
    '2022-12-29 19:08:30',
    '2022-12-29 06:38:30',
    '2022-12-29 19:08:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1181,
    'CHECKOUT',
    '4',
    '2022-12-29 19:14:10',
    '2022-12-29 06:44:10',
    '2022-12-29 19:14:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1182,
    'CHECKOUT',
    '5',
    '2022-12-29 19:14:27',
    '2022-12-29 06:44:27',
    '2022-12-29 19:14:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1183,
    'CHECKOUT',
    '7',
    '2022-12-29 19:15:17',
    '2022-12-29 06:45:17',
    '2022-12-29 19:15:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1184,
    'CHECKIN',
    '3',
    '2022-12-30 09:27:34',
    '2022-12-29 20:57:34',
    '2022-12-30 09:27:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1185,
    'CHECKIN',
    '7',
    '2022-12-30 09:28:32',
    '2022-12-29 20:58:32',
    '2022-12-30 09:28:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1186,
    'CHECKIN',
    '5',
    '2022-12-30 09:29:06',
    '2022-12-29 20:59:06',
    '2022-12-30 09:29:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1187,
    'CHECKIN',
    '4',
    '2022-12-30 09:43:29',
    '2022-12-29 21:13:29',
    '2022-12-30 09:43:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1188,
    'BREAKIN',
    '4',
    '2022-12-30 12:39:28',
    '2022-12-30 00:09:28',
    '2022-12-30 12:39:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1189,
    'BREAKIN',
    '5',
    '2022-12-30 13:02:56',
    '2022-12-30 00:32:56',
    '2022-12-30 13:02:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1190,
    'BREAKIN',
    '7',
    '2022-12-30 13:03:02',
    '2022-12-30 00:33:02',
    '2022-12-30 13:03:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1191,
    'BREAKIN',
    '3',
    '2022-12-30 13:20:00',
    '2022-12-30 00:50:00',
    '2022-12-30 13:20:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1192,
    'BREAKOUT',
    '4',
    '2022-12-30 13:48:11',
    '2022-12-30 01:18:11',
    '2022-12-30 13:48:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1193,
    'BREAKOUT',
    '5',
    '2022-12-30 13:57:40',
    '2022-12-30 01:27:40',
    '2022-12-30 13:57:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1194,
    'BREAKOUT',
    '7',
    '2022-12-30 13:57:51',
    '2022-12-30 01:27:51',
    '2022-12-30 13:57:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1195,
    'BREAKOUT',
    '3',
    '2022-12-30 14:01:11',
    '2022-12-30 01:31:11',
    '2022-12-30 14:01:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1196,
    'BREAKIN',
    '4',
    '2022-12-30 17:20:38',
    '2022-12-30 04:50:38',
    '2022-12-30 17:20:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1197,
    'BREAKOUT',
    '4',
    '2022-12-30 17:36:16',
    '2022-12-30 05:06:16',
    '2022-12-30 17:36:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1198,
    'CHECKOUT',
    '3',
    '2022-12-30 18:54:26',
    '2022-12-30 06:24:26',
    '2022-12-30 18:54:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1199,
    'CHECKOUT',
    '5',
    '2022-12-30 18:54:52',
    '2022-12-30 06:24:52',
    '2022-12-30 18:54:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1200,
    'CHECKOUT',
    '7',
    '2022-12-30 19:03:41',
    '2022-12-30 06:33:41',
    '2022-12-30 19:03:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1201,
    'CHECKOUT',
    '4',
    '2022-12-30 19:17:27',
    '2022-12-30 06:47:27',
    '2022-12-30 19:17:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1202,
    'CHECKIN',
    '3',
    '2022-12-31 09:17:51',
    '2022-12-30 20:47:51',
    '2022-12-31 09:17:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1203,
    'CHECKIN',
    '7',
    '2022-12-31 09:20:12',
    '2022-12-30 20:50:12',
    '2022-12-31 09:20:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1204,
    'CHECKIN',
    '5',
    '2022-12-31 09:27:10',
    '2022-12-30 20:57:10',
    '2022-12-31 09:27:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1205,
    'CHECKIN',
    '4',
    '2022-12-31 09:52:41',
    '2022-12-30 21:22:41',
    '2022-12-31 09:52:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1206,
    'BREAKIN',
    '5',
    '2022-12-31 13:13:38',
    '2022-12-31 00:43:38',
    '2022-12-31 13:13:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1207,
    'BREAKIN',
    '3',
    '2022-12-31 13:18:45',
    '2022-12-31 00:48:45',
    '2022-12-31 13:18:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1208,
    'BREAKIN',
    '4',
    '2022-12-31 13:18:57',
    '2022-12-31 00:48:57',
    '2022-12-31 13:18:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1209,
    'BREAKIN',
    '7',
    '2022-12-31 13:19:02',
    '2022-12-31 00:49:02',
    '2022-12-31 13:19:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1210,
    'BREAKOUT',
    '7',
    '2022-12-31 14:19:50',
    '2022-12-31 01:49:50',
    '2022-12-31 14:19:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1211,
    'BREAKOUT',
    '5',
    '2022-12-31 14:30:29',
    '2022-12-31 02:00:29',
    '2022-12-31 14:30:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1212,
    'BREAKOUT',
    '5',
    '2022-12-31 14:30:29',
    '2022-12-31 02:00:29',
    '2022-12-31 14:30:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1213,
    'BREAKOUT',
    '4',
    '2022-12-31 14:38:21',
    '2022-12-31 02:08:21',
    '2022-12-31 14:38:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1214,
    'CHECKIN',
    '3',
    '2023-01-02 18:37:22',
    '2023-01-30 06:26:45',
    '2023-01-02 09:37:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1215,
    'CHECKIN',
    '5',
    '2023-01-02 18:53:42',
    '2023-01-30 06:30:28',
    '2023-01-02 09:25:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1216,
    'CHECKOUT',
    '3',
    '2023-01-02 18:58:30',
    '2023-01-02 06:28:30',
    '2023-01-02 18:58:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1217,
    'CHECKOUT',
    '5',
    '2023-01-02 19:03:00',
    '2023-01-02 06:33:00',
    '2023-01-02 19:02:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1218,
    'CHECKIN',
    '7',
    '2023-01-02 19:45:53',
    '2023-01-02 07:15:53',
    '2023-01-02 19:45:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1219,
    'CHECKOUT',
    '7',
    '2023-01-02 19:45:55',
    '2023-01-02 07:15:55',
    '2023-01-02 19:45:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1220,
    'CHECKIN',
    '3',
    '2023-01-03 09:14:08',
    '2023-01-02 20:44:08',
    '2023-01-03 09:14:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1221,
    'CHECKIN',
    '5',
    '2023-01-03 09:23:02',
    '2023-01-02 20:53:02',
    '2023-01-03 09:23:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1222,
    'CHECKIN',
    '7',
    '2023-01-03 09:23:25',
    '2023-01-02 20:53:25',
    '2023-01-03 09:23:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1223,
    'CHECKIN',
    '4',
    '2023-01-03 09:37:57',
    '2023-01-02 21:07:57',
    '2023-01-03 09:37:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1224,
    'BREAKIN',
    '5',
    '2023-01-03 13:04:24',
    '2023-01-03 00:34:24',
    '2023-01-03 13:04:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1225,
    'BREAKIN',
    '4',
    '2023-01-03 13:04:35',
    '2023-01-03 00:34:35',
    '2023-01-03 13:04:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1226,
    'BREAKIN',
    '3',
    '2023-01-03 13:05:20',
    '2023-01-03 00:35:20',
    '2023-01-03 13:05:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1227,
    'BREAKIN',
    '7',
    '2023-01-03 13:06:01',
    '2023-01-03 00:36:01',
    '2023-01-03 13:06:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1228,
    'BREAKOUT',
    '7',
    '2023-01-03 13:54:39',
    '2023-01-03 01:24:39',
    '2023-01-03 13:54:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1229,
    'BREAKOUT',
    '5',
    '2023-01-03 14:10:29',
    '2023-01-03 01:40:29',
    '2023-01-03 14:10:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1230,
    'BREAKIN',
    '5',
    '2023-01-03 14:10:30',
    '2023-01-03 01:40:30',
    '2023-01-03 14:10:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1231,
    'BREAKOUT',
    '5',
    '2023-01-03 14:12:22',
    '2023-01-03 01:42:22',
    '2023-01-03 14:12:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1232,
    'BREAKOUT',
    '4',
    '2023-01-03 14:13:28',
    '2023-01-03 01:43:28',
    '2023-01-03 14:13:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1233,
    'BREAKOUT',
    '3',
    '2023-01-03 14:14:27',
    '2023-01-03 01:44:27',
    '2023-01-03 14:14:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1234,
    'BREAKIN',
    '4',
    '2023-01-03 17:35:59',
    '2023-01-03 05:05:59',
    '2023-01-03 17:35:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1235,
    'BREAKOUT',
    '4',
    '2023-01-03 17:53:18',
    '2023-01-03 05:23:18',
    '2023-01-03 17:53:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1236,
    'CHECKOUT',
    '3',
    '2023-01-03 19:00:59',
    '2023-01-03 06:30:59',
    '2023-01-03 19:00:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1237,
    'CHECKOUT',
    '5',
    '2023-01-03 19:03:16',
    '2023-01-03 06:33:16',
    '2023-01-03 19:03:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1238,
    'CHECKOUT',
    '7',
    '2023-01-03 19:21:51',
    '2023-01-03 06:51:51',
    '2023-01-03 19:21:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1239,
    'CHECKOUT',
    '4',
    '2023-01-03 19:23:18',
    '2023-01-03 06:53:18',
    '2023-01-03 19:23:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1240,
    'CHECKIN',
    '3',
    '2023-01-04 09:10:50',
    '2023-01-03 20:40:50',
    '2023-01-04 09:10:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1241,
    'CHECKIN',
    '5',
    '2023-01-04 09:14:23',
    '2023-01-03 20:44:23',
    '2023-01-04 09:14:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1242,
    'CHECKIN',
    '7',
    '2023-01-04 09:25:54',
    '2023-01-03 20:55:54',
    '2023-01-04 09:25:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1243,
    'CHECKIN',
    '4',
    '2023-01-04 09:47:08',
    '2023-01-03 21:17:08',
    '2023-01-04 09:47:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1244,
    'BREAKIN',
    '4',
    '2023-01-04 13:15:08',
    '2023-01-04 00:45:08',
    '2023-01-04 13:15:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1245,
    'BREAKIN',
    '5',
    '2023-01-04 13:15:15',
    '2023-01-04 00:45:15',
    '2023-01-04 13:15:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1246,
    'BREAKIN',
    '3',
    '2023-01-04 13:15:19',
    '2023-01-04 00:45:19',
    '2023-01-04 13:15:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1247,
    'BREAKOUT',
    '5',
    '2023-01-04 14:07:26',
    '2023-01-04 01:37:26',
    '2023-01-04 14:07:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1248,
    'BREAKIN',
    '5',
    '2023-01-04 14:09:34',
    '2023-01-04 01:39:34',
    '2023-01-04 14:09:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1249,
    'BREAKOUT',
    '5',
    '2023-01-04 14:09:34',
    '2023-01-04 01:39:34',
    '2023-01-04 14:09:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1250,
    'BREAKOUT',
    '4',
    '2023-01-04 14:24:21',
    '2023-01-04 01:54:21',
    '2023-01-04 14:24:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1251,
    'BREAKOUT',
    '3',
    '2023-01-04 16:44:01',
    '2023-01-30 06:25:55',
    '2023-01-04 14:15:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1252,
    'BREAKIN',
    '3',
    '2023-01-04 16:44:02',
    '2023-01-04 04:14:02',
    '2023-01-04 16:44:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1253,
    'BREAKOUT',
    '3',
    '2023-01-04 16:44:03',
    '2023-01-04 04:14:03',
    '2023-01-04 16:44:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1254,
    'CHECKOUT',
    '3',
    '2023-01-04 18:46:29',
    '2023-01-04 06:16:29',
    '2023-01-04 18:46:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1255,
    'CHECKOUT',
    '5',
    '2023-01-04 19:02:48',
    '2023-01-04 06:32:48',
    '2023-01-04 19:02:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1256,
    'CHECKOUT',
    '7',
    '2023-01-04 19:09:14',
    '2023-01-04 06:39:14',
    '2023-01-04 19:09:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1257,
    'CHECKOUT',
    '4',
    '2023-01-04 19:15:50',
    '2023-01-04 06:45:50',
    '2023-01-04 19:15:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1258,
    'CHECKIN',
    '5',
    '2023-01-05 09:16:03',
    '2023-01-04 20:46:03',
    '2023-01-05 09:16:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1259,
    'CHECKIN',
    '3',
    '2023-01-05 09:16:15',
    '2023-01-04 20:46:15',
    '2023-01-05 09:16:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1260,
    'CHECKIN',
    '4',
    '2023-01-05 09:23:33',
    '2023-01-04 20:53:33',
    '2023-01-05 09:23:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1261,
    'CHECKIN',
    '10',
    '2023-01-05 09:36:32',
    '2023-01-04 21:06:32',
    '2023-01-05 09:36:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1262,
    'BREAKIN',
    '5',
    '2023-01-05 09:36:41',
    '2023-01-04 21:06:41',
    '2023-01-05 09:36:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1263,
    'BREAKOUT',
    '5',
    '2023-01-05 09:36:42',
    '2023-01-04 21:06:42',
    '2023-01-05 09:36:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1264,
    'CHECKIN',
    '9',
    '2023-01-05 09:37:02',
    '2023-01-04 21:07:02',
    '2023-01-05 09:37:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1265,
    'CHECKIN',
    '7',
    '2023-01-05 09:50:00',
    '2023-01-04 21:20:00',
    '2023-01-05 09:50:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1266,
    'CHECKIN',
    '12',
    '2023-01-05 09:50:44',
    '2023-01-04 21:20:44',
    '2023-01-05 09:50:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1267,
    'CHECKIN',
    '11',
    '2023-01-05 10:12:05',
    '2023-01-04 21:42:05',
    '2023-01-05 10:12:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1268,
    'BREAKIN',
    '11',
    '2023-01-05 13:13:20',
    '2023-01-05 00:43:20',
    '2023-01-05 13:13:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1269,
    'BREAKIN',
    '5',
    '2023-01-05 13:13:30',
    '2023-01-05 00:43:30',
    '2023-01-05 13:13:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1270,
    'BREAKIN',
    '4',
    '2023-01-05 13:13:38',
    '2023-01-05 00:43:38',
    '2023-01-05 13:13:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1271,
    'BREAKIN',
    '10',
    '2023-01-05 13:13:41',
    '2023-01-05 00:43:41',
    '2023-01-05 13:13:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1272,
    'BREAKIN',
    '9',
    '2023-01-05 13:13:44',
    '2023-01-05 00:43:44',
    '2023-01-05 13:13:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1273,
    'BREAKIN',
    '3',
    '2023-01-05 13:13:56',
    '2023-01-05 00:43:56',
    '2023-01-05 13:13:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1274,
    'BREAKIN',
    '7',
    '2023-01-05 13:14:14',
    '2023-01-05 00:44:14',
    '2023-01-05 13:14:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1275,
    'BREAKIN',
    '12',
    '2023-01-05 13:14:51',
    '2023-01-05 00:44:51',
    '2023-01-05 13:14:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1276,
    'BREAKOUT',
    '7',
    '2023-01-05 13:34:15',
    '2023-01-05 01:04:15',
    '2023-01-05 13:34:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1277,
    'BREAKOUT',
    '5',
    '2023-01-05 14:14:41',
    '2023-01-05 01:44:41',
    '2023-01-05 14:14:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1278,
    'BREAKIN',
    '5',
    '2023-01-05 14:14:41',
    '2023-01-05 01:44:41',
    '2023-01-05 14:14:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1279,
    'BREAKOUT',
    '5',
    '2023-01-05 14:14:42',
    '2023-01-05 01:44:42',
    '2023-01-05 14:14:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1280,
    'BREAKOUT',
    '12',
    '2023-01-05 14:14:45',
    '2023-01-05 01:44:45',
    '2023-01-05 14:14:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1281,
    'BREAKOUT',
    '9',
    '2023-01-05 14:15:22',
    '2023-01-05 01:45:22',
    '2023-01-05 14:15:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1282,
    'BREAKOUT',
    '10',
    '2023-01-05 14:15:25',
    '2023-01-05 01:45:25',
    '2023-01-05 14:15:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1283,
    'BREAKOUT',
    '11',
    '2023-01-05 14:15:32',
    '2023-01-05 01:45:32',
    '2023-01-05 14:15:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1284,
    'BREAKOUT',
    '4',
    '2023-01-05 14:18:13',
    '2023-01-05 01:48:13',
    '2023-01-05 14:18:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1285,
    'BREAKOUT',
    '3',
    '2023-01-05 14:19:40',
    '2023-01-05 01:49:40',
    '2023-01-05 14:19:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1286,
    'BREAKIN',
    '4',
    '2023-01-05 17:21:34',
    '2023-01-05 04:51:34',
    '2023-01-05 17:21:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1287,
    'BREAKIN',
    '7',
    '2023-01-05 17:25:57',
    '2023-01-05 04:55:57',
    '2023-01-05 17:25:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1288,
    'BREAKOUT',
    '7',
    '2023-01-05 17:28:18',
    '2023-01-05 04:58:18',
    '2023-01-05 17:28:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1289,
    'BREAKOUT',
    '4',
    '2023-01-05 17:41:20',
    '2023-01-05 05:11:20',
    '2023-01-05 17:41:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1290,
    'CHECKOUT',
    '4',
    '2023-01-05 18:55:48',
    '2023-01-05 06:25:48',
    '2023-01-05 18:55:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1291,
    'CHECKOUT',
    '5',
    '2023-01-05 19:08:57',
    '2023-01-05 06:38:57',
    '2023-01-05 19:08:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1292,
    'CHECKOUT',
    '10',
    '2023-01-05 19:10:06',
    '2023-01-05 06:40:06',
    '2023-01-05 19:10:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1293,
    'CHECKOUT',
    '12',
    '2023-01-05 19:12:50',
    '2023-01-05 06:42:50',
    '2023-01-05 19:12:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1294,
    'CHECKOUT',
    '3',
    '2023-01-05 19:14:42',
    '2023-01-05 06:44:42',
    '2023-01-05 19:14:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1295,
    'CHECKOUT',
    '11',
    '2023-01-05 19:20:51',
    '2023-01-05 06:50:51',
    '2023-01-05 19:20:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1296,
    'CHECKOUT',
    '7',
    '2023-01-05 19:34:53',
    '2023-01-05 07:04:53',
    '2023-01-05 19:34:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1297,
    'CHECKIN',
    '4',
    '2023-01-06 09:10:28',
    '2023-01-05 20:40:28',
    '2023-01-06 09:10:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1298,
    'CHECKIN',
    '5',
    '2023-01-06 09:22:46',
    '2023-01-05 20:52:46',
    '2023-01-06 09:22:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1299,
    'CHECKIN',
    '10',
    '2023-01-06 09:25:22',
    '2023-01-05 20:55:22',
    '2023-01-06 09:25:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1300,
    'CHECKIN',
    '3',
    '2023-01-06 09:27:29',
    '2023-01-05 20:57:29',
    '2023-01-06 09:27:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1301,
    'CHECKIN',
    '12',
    '2023-01-06 09:36:14',
    '2023-01-05 21:06:14',
    '2023-01-06 09:36:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1302,
    'CHECKIN',
    '7',
    '2023-01-06 09:38:46',
    '2023-01-05 21:08:46',
    '2023-01-06 09:38:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1303,
    'CHECKIN',
    '9',
    '2023-01-06 09:42:48',
    '2023-01-05 21:12:48',
    '2023-01-06 09:42:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1304,
    'BREAKIN',
    '3',
    '2023-01-06 13:00:07',
    '2023-01-06 00:30:07',
    '2023-01-06 13:00:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1305,
    'BREAKOUT',
    '3',
    '2023-01-06 13:16:05',
    '2023-01-06 00:46:05',
    '2023-01-06 13:16:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1306,
    'BREAKIN',
    '4',
    '2023-01-06 13:22:03',
    '2023-01-06 00:52:03',
    '2023-01-06 13:22:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1307,
    'BREAKIN',
    '5',
    '2023-01-06 13:22:25',
    '2023-01-06 00:52:25',
    '2023-01-06 13:22:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1308,
    'BREAKIN',
    '9',
    '2023-01-06 13:22:56',
    '2023-01-06 00:52:56',
    '2023-01-06 13:22:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1309,
    'BREAKIN',
    '12',
    '2023-01-06 13:23:40',
    '2023-01-06 00:53:40',
    '2023-01-06 13:23:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1310,
    'BREAKIN',
    '7',
    '2023-01-06 13:24:32',
    '2023-01-06 00:54:32',
    '2023-01-06 13:24:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1311,
    'BREAKIN',
    '3',
    '2023-01-06 13:37:42',
    '2023-01-06 01:07:42',
    '2023-01-06 13:37:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1312,
    'BREAKIN',
    '3',
    '2023-01-06 13:37:44',
    '2023-01-06 01:07:44',
    '2023-01-06 13:37:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1313,
    'BREAKOUT',
    '9',
    '2023-01-06 13:38:47',
    '2023-01-06 01:08:47',
    '2023-01-06 13:38:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1314,
    'CHECKOUT',
    '9',
    '2023-01-06 13:39:10',
    '2023-01-06 01:09:10',
    '2023-01-06 13:39:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1315,
    'BREAKIN',
    '10',
    '2023-01-06 13:42:25',
    '2023-01-06 01:12:25',
    '2023-01-06 13:42:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1316,
    'BREAKOUT',
    '7',
    '2023-01-06 13:46:45',
    '2023-01-06 01:16:45',
    '2023-01-06 13:46:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1317,
    'BREAKOUT',
    '10',
    '2023-01-06 13:53:26',
    '2023-01-06 01:23:26',
    '2023-01-06 13:53:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1318,
    'BREAKOUT',
    '5',
    '2023-01-06 14:09:07',
    '2023-01-06 01:39:07',
    '2023-01-06 14:09:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1319,
    'BREAKOUT',
    '3',
    '2023-01-06 14:12:28',
    '2023-01-06 01:42:28',
    '2023-01-06 14:12:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1320,
    'BREAKOUT',
    '4',
    '2023-01-06 14:19:05',
    '2023-01-06 01:49:05',
    '2023-01-06 14:19:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1321,
    'BREAKOUT',
    '12',
    '2023-01-06 14:52:42',
    '2023-01-06 02:22:42',
    '2023-01-06 14:52:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1322,
    'CHECKOUT',
    '4',
    '2023-01-06 18:09:27',
    '2023-01-06 05:39:27',
    '2023-01-06 18:09:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1323,
    'CHECKOUT',
    '5',
    '2023-01-06 18:37:45',
    '2023-01-06 06:07:45',
    '2023-01-06 18:37:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1324,
    'CHECKOUT',
    '12',
    '2023-01-06 18:41:31',
    '2023-01-06 06:11:31',
    '2023-01-06 18:41:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1325,
    'CHECKOUT',
    '3',
    '2023-01-06 19:58:34',
    '2023-01-06 07:28:34',
    '2023-01-06 19:58:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1326,
    'CHECKOUT',
    '7',
    '2023-01-06 20:08:39',
    '2023-01-06 07:38:39',
    '2023-01-06 20:08:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1327,
    'CHECKIN',
    '3',
    '2023-01-09 09:15:24',
    '2023-01-08 20:45:24',
    '2023-01-09 09:15:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1328,
    'CHECKIN',
    '5',
    '2023-01-09 09:15:27',
    '2023-01-08 20:45:27',
    '2023-01-09 09:15:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1329,
    'CHECKIN',
    '10',
    '2023-01-09 09:15:30',
    '2023-01-08 20:45:30',
    '2023-01-09 09:15:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1330,
    'CHECKIN',
    '9',
    '2023-01-09 09:15:33',
    '2023-01-08 20:45:33',
    '2023-01-09 09:15:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1331,
    'CHECKIN',
    '4',
    '2023-01-09 09:35:09',
    '2023-01-08 21:05:09',
    '2023-01-09 09:35:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1332,
    'CHECKIN',
    '12',
    '2023-01-09 09:54:11',
    '2023-01-08 21:24:11',
    '2023-01-09 09:54:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1333,
    'CHECKIN',
    '7',
    '2023-01-09 09:54:21',
    '2023-01-08 21:24:21',
    '2023-01-09 09:54:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1334,
    'CHECKIN',
    '11',
    '2023-01-09 10:05:13',
    '2023-01-08 21:35:13',
    '2023-01-09 10:05:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1335,
    'BREAKIN',
    '4',
    '2023-01-09 13:05:49',
    '2023-01-09 00:35:49',
    '2023-01-09 13:05:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1336,
    'BREAKIN',
    '5',
    '2023-01-09 13:06:37',
    '2023-01-09 00:36:37',
    '2023-01-09 13:06:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1337,
    'BREAKIN',
    '10',
    '2023-01-09 13:07:12',
    '2023-01-09 00:37:12',
    '2023-01-09 13:07:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1338,
    'BREAKIN',
    '11',
    '2023-01-09 13:07:27',
    '2023-01-09 00:37:27',
    '2023-01-09 13:07:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1339,
    'BREAKIN',
    '3',
    '2023-01-09 13:07:44',
    '2023-01-09 00:37:44',
    '2023-01-09 13:07:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1340,
    'BREAKIN',
    '9',
    '2023-01-09 13:07:49',
    '2023-01-09 00:37:49',
    '2023-01-09 13:07:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1341,
    'BREAKIN',
    '12',
    '2023-01-09 13:08:46',
    '2023-01-09 00:38:46',
    '2023-01-09 13:08:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1342,
    'BREAKOUT',
    '4',
    '2023-01-09 14:06:21',
    '2023-01-09 01:36:21',
    '2023-01-09 14:06:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1343,
    'BREAKOUT',
    '5',
    '2023-01-09 14:08:09',
    '2023-01-09 01:38:09',
    '2023-01-09 14:08:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1344,
    'BREAKOUT',
    '11',
    '2023-01-09 14:08:28',
    '2023-01-09 01:38:28',
    '2023-01-09 14:08:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1345,
    'BREAKOUT',
    '10',
    '2023-01-09 14:09:16',
    '2023-01-09 01:39:16',
    '2023-01-09 14:09:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1346,
    'BREAKOUT',
    '3',
    '2023-01-09 14:10:21',
    '2023-01-09 01:40:21',
    '2023-01-09 14:10:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1347,
    'BREAKOUT',
    '12',
    '2023-01-09 14:11:36',
    '2023-01-09 01:41:36',
    '2023-01-09 14:11:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1348,
    'BREAKOUT',
    '9',
    '2023-01-09 14:12:36',
    '2023-01-09 01:42:36',
    '2023-01-09 14:12:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1349,
    'BREAKIN',
    '4',
    '2023-01-09 16:51:16',
    '2023-01-09 04:21:16',
    '2023-01-09 16:51:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1350,
    'BREAKOUT',
    '4',
    '2023-01-09 17:09:27',
    '2023-01-09 04:39:27',
    '2023-01-09 17:09:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1351,
    'CHECKOUT',
    '10',
    '2023-01-09 18:59:15',
    '2023-01-09 06:29:15',
    '2023-01-09 18:59:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1352,
    'CHECKOUT',
    '5',
    '2023-01-09 19:02:07',
    '2023-01-09 06:32:07',
    '2023-01-09 19:02:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1353,
    'CHECKOUT',
    '4',
    '2023-01-09 19:02:41',
    '2023-01-09 06:32:41',
    '2023-01-09 19:02:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1354,
    'CHECKOUT',
    '11',
    '2023-01-09 19:07:52',
    '2023-01-09 06:37:52',
    '2023-01-09 19:07:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1355,
    'CHECKOUT',
    '3',
    '2023-01-09 19:22:54',
    '2023-01-09 06:52:54',
    '2023-01-09 19:22:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1356,
    'CHECKOUT',
    '7',
    '2023-01-09 19:27:08',
    '2023-01-09 06:57:08',
    '2023-01-09 19:27:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1357,
    'CHECKIN',
    '3',
    '2023-01-10 09:09:42',
    '2023-01-09 20:39:42',
    '2023-01-10 09:09:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1358,
    'CHECKIN',
    '5',
    '2023-01-10 09:29:14',
    '2023-01-09 20:59:14',
    '2023-01-10 09:29:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1359,
    'CHECKIN',
    '9',
    '2023-01-10 09:30:00',
    '2023-01-09 21:00:00',
    '2023-01-10 09:30:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1360,
    'CHECKIN',
    '10',
    '2023-01-10 09:37:43',
    '2023-01-09 21:07:43',
    '2023-01-10 09:37:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1361,
    'CHECKIN',
    '7',
    '2023-01-10 09:49:59',
    '2023-01-09 21:19:59',
    '2023-01-10 09:50:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1362,
    'CHECKIN',
    '4',
    '2023-01-10 10:02:46',
    '2023-01-09 21:32:46',
    '2023-01-10 10:02:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1363,
    'BREAKIN',
    '5',
    '2023-01-10 10:03:40',
    '2023-01-09 21:33:40',
    '2023-01-10 10:03:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1364,
    'BREAKOUT',
    '5',
    '2023-01-10 10:03:41',
    '2023-01-09 21:33:41',
    '2023-01-10 10:03:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1365,
    'CHECKIN',
    '11',
    '2023-01-10 10:07:00',
    '2023-01-09 21:37:00',
    '2023-01-10 10:07:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1366,
    'BREAKIN',
    '5',
    '2023-01-10 13:17:09',
    '2023-01-10 00:47:09',
    '2023-01-10 13:17:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1367,
    'BREAKIN',
    '4',
    '2023-01-10 13:17:15',
    '2023-01-10 00:47:15',
    '2023-01-10 13:17:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1368,
    'BREAKIN',
    '10',
    '2023-01-10 13:17:21',
    '2023-01-10 00:47:21',
    '2023-01-10 13:17:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1369,
    'BREAKIN',
    '9',
    '2023-01-10 13:17:37',
    '2023-01-10 00:47:37',
    '2023-01-10 13:17:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1370,
    'BREAKIN',
    '3',
    '2023-01-10 13:17:57',
    '2023-01-10 00:47:57',
    '2023-01-10 13:17:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1371,
    'BREAKIN',
    '11',
    '2023-01-10 13:18:08',
    '2023-01-10 00:48:08',
    '2023-01-10 13:18:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1372,
    'BREAKIN',
    '7',
    '2023-01-10 13:39:36',
    '2023-01-10 01:09:36',
    '2023-01-10 13:39:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1373,
    'BREAKOUT',
    '11',
    '2023-01-10 14:16:08',
    '2023-01-10 01:46:08',
    '2023-01-10 14:16:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1374,
    'BREAKOUT',
    '4',
    '2023-01-10 14:16:16',
    '2023-01-10 01:46:16',
    '2023-01-10 14:16:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1375,
    'BREAKOUT',
    '9',
    '2023-01-10 14:16:24',
    '2023-01-10 01:46:24',
    '2023-01-10 14:16:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1376,
    'BREAKOUT',
    '10',
    '2023-01-10 14:16:48',
    '2023-01-10 01:46:48',
    '2023-01-10 14:16:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1377,
    'BREAKOUT',
    '7',
    '2023-01-10 14:17:03',
    '2023-01-10 01:47:03',
    '2023-01-10 14:17:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1378,
    'BREAKOUT',
    '5',
    '2023-01-10 14:17:07',
    '2023-01-10 01:47:07',
    '2023-01-10 14:17:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1379,
    'BREAKOUT',
    '3',
    '2023-01-10 14:19:59',
    '2023-01-10 01:49:59',
    '2023-01-10 14:20:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1380,
    'BREAKIN',
    '4',
    '2023-01-10 16:56:17',
    '2023-01-10 04:26:17',
    '2023-01-10 16:56:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1381,
    'BREAKOUT',
    '4',
    '2023-01-10 17:20:45',
    '2023-01-10 04:50:45',
    '2023-01-10 17:20:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1382,
    'CHECKOUT',
    '5',
    '2023-01-10 19:06:01',
    '2023-01-10 06:36:01',
    '2023-01-10 19:06:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1383,
    'CHECKOUT',
    '3',
    '2023-01-10 19:07:15',
    '2023-01-10 06:37:15',
    '2023-01-10 19:07:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1384,
    'CHECKOUT',
    '11',
    '2023-01-10 19:08:00',
    '2023-01-10 06:38:00',
    '2023-01-10 19:08:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1385,
    'CHECKOUT',
    '9',
    '2023-01-10 19:08:19',
    '2023-01-10 06:38:19',
    '2023-01-10 19:08:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1386,
    'CHECKOUT',
    '10',
    '2023-01-10 19:09:21',
    '2023-01-10 06:39:21',
    '2023-01-10 19:09:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1387,
    'CHECKOUT',
    '7',
    '2023-01-10 19:17:44',
    '2023-01-10 06:47:44',
    '2023-01-10 19:17:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1388,
    'CHECKOUT',
    '4',
    '2023-01-10 19:28:01',
    '2023-01-10 06:58:01',
    '2023-01-10 19:28:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1389,
    'CHECKIN',
    '10',
    '2023-01-11 09:42:03',
    '2023-01-10 21:12:03',
    '2023-01-11 09:42:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1390,
    'CHECKIN',
    '3',
    '2023-01-11 09:42:05',
    '2023-01-10 21:12:05',
    '2023-01-11 09:42:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1391,
    'CHECKIN',
    '9',
    '2023-01-11 09:42:48',
    '2023-01-10 21:12:48',
    '2023-01-11 09:42:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1392,
    'CHECKIN',
    '5',
    '2023-01-11 09:43:27',
    '2023-01-10 21:13:27',
    '2023-01-11 09:43:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1393,
    'CHECKIN',
    '4',
    '2023-01-11 09:46:17',
    '2023-01-10 21:16:17',
    '2023-01-11 09:46:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1394,
    'CHECKIN',
    '11',
    '2023-01-11 10:06:30',
    '2023-01-10 21:36:30',
    '2023-01-11 10:06:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1395,
    'BREAKIN',
    '9',
    '2023-01-11 10:54:04',
    '2023-01-10 22:24:04',
    '2023-01-11 10:54:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1396,
    'BREAKIN',
    '4',
    '2023-01-11 10:55:47',
    '2023-01-10 22:25:47',
    '2023-01-11 10:55:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1397,
    'BREAKOUT',
    '4',
    '2023-01-11 11:10:42',
    '2023-01-10 22:40:42',
    '2023-01-11 11:10:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1398,
    'BREAKIN',
    '11',
    '2023-01-11 13:16:05',
    '2023-01-11 00:46:05',
    '2023-01-11 13:16:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1399,
    'BREAKIN',
    '5',
    '2023-01-11 13:16:29',
    '2023-01-11 00:46:29',
    '2023-01-11 13:16:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1400,
    'BREAKIN',
    '4',
    '2023-01-11 13:16:38',
    '2023-01-11 00:46:38',
    '2023-01-11 13:16:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1401,
    'BREAKIN',
    '10',
    '2023-01-11 13:17:23',
    '2023-01-11 00:47:23',
    '2023-01-11 13:17:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1402,
    'BREAKOUT',
    '11',
    '2023-01-11 13:58:40',
    '2023-01-11 01:28:40',
    '2023-01-11 13:58:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1403,
    'BREAKOUT',
    '5',
    '2023-01-11 14:08:58',
    '2023-01-11 01:38:58',
    '2023-01-11 14:08:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1404,
    'BREAKOUT',
    '4',
    '2023-01-11 14:14:39',
    '2023-01-11 01:44:39',
    '2023-01-11 14:14:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1405,
    'BREAKOUT',
    '10',
    '2023-01-11 14:14:52',
    '2023-01-11 01:44:52',
    '2023-01-11 14:14:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1406,
    'BREAKIN',
    '3',
    '2023-01-11 17:03:46',
    '2023-01-11 04:33:46',
    '2023-01-11 17:03:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1407,
    'BREAKOUT',
    '3',
    '2023-01-11 17:03:47',
    '2023-01-11 04:33:47',
    '2023-01-11 17:03:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1408,
    'CHECKOUT',
    '3',
    '2023-01-11 18:42:20',
    '2023-01-11 06:12:20',
    '2023-01-11 18:42:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1409,
    'CHECKOUT',
    '11',
    '2023-01-11 18:49:48',
    '2023-01-11 06:19:48',
    '2023-01-11 18:49:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1410,
    'CHECKOUT',
    '10',
    '2023-01-11 18:53:52',
    '2023-01-11 06:23:52',
    '2023-01-11 18:53:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1411,
    'CHECKOUT',
    '4',
    '2023-01-11 19:23:36',
    '2023-01-11 06:53:36',
    '2023-01-11 19:23:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1412,
    'CHECKOUT',
    '5',
    '2023-01-11 19:27:39',
    '2023-01-11 06:57:39',
    '2023-01-11 19:27:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1413,
    'CHECKIN',
    '3',
    '2023-01-12 09:18:55',
    '2023-01-11 20:48:55',
    '2023-01-12 09:18:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1414,
    'CHECKIN',
    '5',
    '2023-01-12 09:20:26',
    '2023-01-11 20:50:26',
    '2023-01-12 09:20:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1415,
    'CHECKIN',
    '7',
    '2023-01-12 09:29:42',
    '2023-01-11 20:59:42',
    '2023-01-12 09:29:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1416,
    'CHECKIN',
    '9',
    '2023-01-12 09:31:36',
    '2023-01-11 21:01:36',
    '2023-01-12 09:31:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1417,
    'CHECKIN',
    '10',
    '2023-01-12 09:32:01',
    '2023-01-11 21:02:01',
    '2023-01-12 09:32:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1418,
    'CHECKIN',
    '4',
    '2023-01-12 09:44:40',
    '2023-01-11 21:14:40',
    '2023-01-12 09:44:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1419,
    'CHECKIN',
    '11',
    '2023-01-12 10:02:30',
    '2023-01-11 21:32:30',
    '2023-01-12 10:02:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1420,
    'BREAKIN',
    '4',
    '2023-01-12 13:07:56',
    '2023-01-12 00:37:56',
    '2023-01-12 13:07:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1421,
    'BREAKIN',
    '11',
    '2023-01-12 13:09:34',
    '2023-01-12 00:39:34',
    '2023-01-12 13:09:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1422,
    'BREAKIN',
    '9',
    '2023-01-12 13:09:42',
    '2023-01-12 00:39:42',
    '2023-01-12 13:09:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1423,
    'BREAKIN',
    '7',
    '2023-01-12 13:09:57',
    '2023-01-12 00:39:57',
    '2023-01-12 13:09:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1424,
    'BREAKIN',
    '10',
    '2023-01-12 13:09:57',
    '2023-01-12 00:39:57',
    '2023-01-12 13:09:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1425,
    'BREAKIN',
    '3',
    '2023-01-12 13:25:18',
    '2023-01-12 00:55:18',
    '2023-01-12 13:25:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1426,
    'BREAKOUT',
    '4',
    '2023-01-12 14:07:46',
    '2023-01-12 01:37:46',
    '2023-01-12 14:07:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1427,
    'BREAKOUT',
    '11',
    '2023-01-12 14:17:07',
    '2023-01-12 01:47:07',
    '2023-01-12 14:17:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1428,
    'BREAKOUT',
    '9',
    '2023-01-12 14:17:13',
    '2023-01-12 01:47:13',
    '2023-01-12 14:17:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1429,
    'BREAKOUT',
    '10',
    '2023-01-12 14:17:18',
    '2023-01-12 01:47:18',
    '2023-01-12 14:17:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1430,
    'BREAKOUT',
    '3',
    '2023-01-12 14:18:44',
    '2023-01-12 01:48:44',
    '2023-01-12 14:18:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1431,
    'BREAKOUT',
    '7',
    '2023-01-12 14:19:00',
    '2023-01-12 01:49:00',
    '2023-01-12 14:19:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1432,
    'BREAKIN',
    '4',
    '2023-01-12 17:02:59',
    '2023-01-12 04:32:59',
    '2023-01-12 17:03:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1433,
    'BREAKOUT',
    '4',
    '2023-01-12 17:04:35',
    '2023-01-12 04:34:35',
    '2023-01-12 17:04:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1434,
    'CHECKOUT',
    '4',
    '2023-01-12 18:51:45',
    '2023-01-12 06:21:45',
    '2023-01-12 18:51:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1435,
    'CHECKOUT',
    '10',
    '2023-01-12 19:05:30',
    '2023-01-12 06:35:30',
    '2023-01-12 19:05:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1436,
    'CHECKOUT',
    '3',
    '2023-01-12 19:05:44',
    '2023-01-12 06:35:44',
    '2023-01-12 19:05:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1437,
    'CHECKOUT',
    '5',
    '2023-01-12 19:06:37',
    '2023-01-12 06:36:37',
    '2023-01-12 19:06:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1438,
    'CHECKOUT',
    '11',
    '2023-01-12 19:17:50',
    '2023-01-12 06:47:50',
    '2023-01-12 19:17:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1439,
    'CHECKOUT',
    '7',
    '2023-01-12 19:57:58',
    '2023-01-12 07:27:58',
    '2023-01-12 19:57:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1440,
    'CHECKIN',
    '9',
    '2023-01-13 09:17:04',
    '2023-01-12 20:47:04',
    '2023-01-13 09:17:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1441,
    'CHECKIN',
    '5',
    '2023-01-13 09:18:31',
    '2023-01-12 20:48:31',
    '2023-01-13 09:18:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1442,
    'CHECKIN',
    '10',
    '2023-01-13 09:40:20',
    '2023-01-12 21:10:20',
    '2023-01-13 09:40:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1443,
    'CHECKIN',
    '4',
    '2023-01-13 09:47:58',
    '2023-01-12 21:17:58',
    '2023-01-13 09:47:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1444,
    'CHECKIN',
    '7',
    '2023-01-13 09:48:56',
    '2023-01-12 21:18:56',
    '2023-01-13 09:48:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1445,
    'CHECKIN',
    '11',
    '2023-01-13 10:03:44',
    '2023-01-12 21:33:44',
    '2023-01-13 10:03:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1446,
    'BREAKIN',
    '9',
    '2023-01-13 13:20:05',
    '2023-01-13 00:50:05',
    '2023-01-13 13:20:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1447,
    'BREAKIN',
    '11',
    '2023-01-13 13:20:19',
    '2023-01-13 00:50:19',
    '2023-01-13 13:20:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1448,
    'BREAKIN',
    '4',
    '2023-01-13 13:20:44',
    '2023-01-13 00:50:44',
    '2023-01-13 13:20:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1449,
    'BREAKIN',
    '5',
    '2023-01-13 13:20:48',
    '2023-01-13 00:50:48',
    '2023-01-13 13:20:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1450,
    'BREAKIN',
    '10',
    '2023-01-13 13:21:58',
    '2023-01-13 00:51:58',
    '2023-01-13 13:21:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1451,
    'CHECKIN',
    '3',
    '2023-01-13 13:22:25',
    '2023-01-30 06:25:23',
    '2023-01-13 09:22:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1452,
    'BREAKIN',
    '3',
    '2023-01-13 13:22:27',
    '2023-01-13 00:52:27',
    '2023-01-13 13:22:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1453,
    'BREAKIN',
    '7',
    '2023-01-13 13:32:38',
    '2023-01-13 01:02:38',
    '2023-01-13 13:32:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1454,
    'BREAKOUT',
    '4',
    '2023-01-13 14:15:33',
    '2023-01-13 01:45:33',
    '2023-01-13 14:15:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1455,
    'BREAKOUT',
    '11',
    '2023-01-13 14:17:01',
    '2023-01-13 01:47:01',
    '2023-01-13 14:17:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1456,
    'BREAKOUT',
    '7',
    '2023-01-13 14:17:12',
    '2023-01-13 01:47:12',
    '2023-01-13 14:17:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1457,
    'BREAKOUT',
    '10',
    '2023-01-13 14:17:40',
    '2023-01-13 01:47:40',
    '2023-01-13 14:17:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1458,
    'BREAKOUT',
    '3',
    '2023-01-13 14:18:34',
    '2023-01-13 01:48:34',
    '2023-01-13 14:18:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1459,
    'BREAKOUT',
    '9',
    '2023-01-13 14:31:00',
    '2023-01-13 02:01:00',
    '2023-01-13 14:30:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1460,
    'BREAKIN',
    '4',
    '2023-01-13 17:03:38',
    '2023-01-13 04:33:38',
    '2023-01-13 17:03:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1461,
    'BREAKOUT',
    '4',
    '2023-01-13 17:04:00',
    '2023-01-13 04:34:00',
    '2023-01-13 17:04:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1462,
    'BREAKIN',
    '4',
    '2023-01-13 17:12:32',
    '2023-01-13 04:42:32',
    '2023-01-13 17:12:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1463,
    'BREAKOUT',
    '4',
    '2023-01-13 17:26:10',
    '2023-01-13 04:56:10',
    '2023-01-13 17:26:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1464,
    'BREAKOUT',
    '5',
    '2023-01-13 18:31:21',
    '2023-01-30 06:33:23',
    '2023-01-13 14:31:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1465,
    'CHECKOUT',
    '5',
    '2023-01-13 18:51:30',
    '2023-01-13 06:21:30',
    '2023-01-13 18:51:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1466,
    'CHECKOUT',
    '10',
    '2023-01-13 18:53:22',
    '2023-01-13 06:23:22',
    '2023-01-13 18:53:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1467,
    'CHECKOUT',
    '3',
    '2023-01-13 18:57:36',
    '2023-01-13 06:27:36',
    '2023-01-13 18:57:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1468,
    'CHECKOUT',
    '11',
    '2023-01-13 19:02:30',
    '2023-01-13 06:32:30',
    '2023-01-13 19:02:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1469,
    'CHECKOUT',
    '4',
    '2023-01-13 19:02:37',
    '2023-01-13 06:32:37',
    '2023-01-13 19:02:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1470,
    'CHECKOUT',
    '7',
    '2023-01-13 19:13:04',
    '2023-01-13 06:43:04',
    '2023-01-13 19:13:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1471,
    'CHECKIN',
    '3',
    '2023-01-16 09:19:02',
    '2023-01-15 20:49:02',
    '2023-01-16 09:19:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1472,
    'CHECKIN',
    '5',
    '2023-01-16 09:35:44',
    '2023-01-15 21:05:44',
    '2023-01-16 09:35:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1473,
    'CHECKIN',
    '4',
    '2023-01-16 09:36:52',
    '2023-01-15 21:06:52',
    '2023-01-16 09:36:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1474,
    'CHECKIN',
    '10',
    '2023-01-16 09:36:56',
    '2023-01-15 21:06:56',
    '2023-01-16 09:36:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1475,
    'CHECKIN',
    '9',
    '2023-01-16 09:39:37',
    '2023-01-15 21:09:37',
    '2023-01-16 09:39:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1476,
    'CHECKIN',
    '7',
    '2023-01-16 09:42:18',
    '2023-01-15 21:12:18',
    '2023-01-16 09:42:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1477,
    'CHECKIN',
    '11',
    '2023-01-16 10:05:27',
    '2023-01-15 21:35:27',
    '2023-01-16 10:05:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1478,
    'BREAKIN',
    '4',
    '2023-01-16 13:12:30',
    '2023-01-16 00:42:30',
    '2023-01-16 13:12:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1479,
    'BREAKIN',
    '3',
    '2023-01-16 13:12:58',
    '2023-01-16 00:42:58',
    '2023-01-16 13:13:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1480,
    'BREAKIN',
    '5',
    '2023-01-16 13:13:10',
    '2023-01-16 00:43:10',
    '2023-01-16 13:13:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1481,
    'BREAKIN',
    '9',
    '2023-01-16 13:13:47',
    '2023-01-16 00:43:47',
    '2023-01-16 13:13:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1482,
    'BREAKIN',
    '11',
    '2023-01-16 13:13:49',
    '2023-01-16 00:43:49',
    '2023-01-16 13:13:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1483,
    'BREAKIN',
    '10',
    '2023-01-16 13:13:50',
    '2023-01-16 00:43:50',
    '2023-01-16 13:13:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1484,
    'BREAKIN',
    '7',
    '2023-01-16 13:14:16',
    '2023-01-16 00:44:16',
    '2023-01-16 13:14:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1485,
    'BREAKOUT',
    '11',
    '2023-01-16 13:59:05',
    '2023-01-16 01:29:05',
    '2023-01-16 13:59:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1486,
    'BREAKOUT',
    '10',
    '2023-01-16 14:06:56',
    '2023-01-16 01:36:56',
    '2023-01-16 14:06:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1487,
    'BREAKOUT',
    '9',
    '2023-01-16 14:07:16',
    '2023-01-16 01:37:16',
    '2023-01-16 14:07:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1488,
    'BREAKOUT',
    '7',
    '2023-01-16 14:07:18',
    '2023-01-16 01:37:18',
    '2023-01-16 14:07:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1489,
    'BREAKOUT',
    '5',
    '2023-01-16 14:07:55',
    '2023-01-16 01:37:55',
    '2023-01-16 14:07:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1490,
    'BREAKOUT',
    '4',
    '2023-01-16 14:12:19',
    '2023-01-16 01:42:19',
    '2023-01-16 14:12:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1491,
    'BREAKOUT',
    '3',
    '2023-01-16 14:24:25',
    '2023-01-16 01:54:25',
    '2023-01-16 14:24:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1492,
    'BREAKIN',
    '4',
    '2023-01-16 17:23:49',
    '2023-01-16 04:53:49',
    '2023-01-16 17:23:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1493,
    'BREAKOUT',
    '4',
    '2023-01-16 17:41:30',
    '2023-01-16 05:11:30',
    '2023-01-16 17:41:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1494,
    'CHECKOUT',
    '3',
    '2023-01-16 18:43:54',
    '2023-01-16 06:13:54',
    '2023-01-16 18:43:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1495,
    'CHECKOUT',
    '9',
    '2023-01-16 18:48:38',
    '2023-01-16 06:18:38',
    '2023-01-16 18:48:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1496,
    'CHECKOUT',
    '10',
    '2023-01-16 18:51:33',
    '2023-01-16 06:21:33',
    '2023-01-16 18:51:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1497,
    'CHECKOUT',
    '11',
    '2023-01-16 18:59:04',
    '2023-01-16 06:29:04',
    '2023-01-16 18:59:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1498,
    'CHECKOUT',
    '5',
    '2023-01-16 19:04:08',
    '2023-01-16 06:34:08',
    '2023-01-16 19:04:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1499,
    'CHECKOUT',
    '7',
    '2023-01-16 19:31:38',
    '2023-01-16 07:01:38',
    '2023-01-16 19:31:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1500,
    'CHECKOUT',
    '4',
    '2023-01-16 19:43:46',
    '2023-01-16 07:13:46',
    '2023-01-16 19:43:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1501,
    'CHECKIN',
    '3',
    '2023-01-17 09:15:47',
    '2023-01-16 20:45:47',
    '2023-01-17 09:15:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1502,
    'CHECKIN',
    '10',
    '2023-01-17 09:21:51',
    '2023-01-16 20:51:51',
    '2023-01-17 09:21:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1503,
    'CHECKIN',
    '9',
    '2023-01-17 09:23:53',
    '2023-01-16 20:53:53',
    '2023-01-17 09:23:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1504,
    'CHECKIN',
    '5',
    '2023-01-17 09:24:29',
    '2023-01-16 20:54:29',
    '2023-01-17 09:24:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1505,
    'CHECKIN',
    '7',
    '2023-01-17 09:30:20',
    '2023-01-16 21:00:20',
    '2023-01-17 09:30:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1506,
    'CHECKIN',
    '11',
    '2023-01-17 10:09:16',
    '2023-01-16 21:39:16',
    '2023-01-17 10:09:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1507,
    'CHECKIN',
    '4',
    '2023-01-17 10:27:33',
    '2023-01-16 21:57:33',
    '2023-01-17 10:27:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1508,
    'BREAKIN',
    '4',
    '2023-01-17 12:28:58',
    '2023-01-16 23:58:58',
    '2023-01-17 12:28:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1509,
    'BREAKOUT',
    '4',
    '2023-01-17 12:32:53',
    '2023-01-17 00:02:53',
    '2023-01-17 12:32:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1510,
    'BREAKIN',
    '4',
    '2023-01-17 13:08:28',
    '2023-01-17 00:38:28',
    '2023-01-17 13:08:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1511,
    'BREAKIN',
    '9',
    '2023-01-17 13:09:14',
    '2023-01-17 00:39:14',
    '2023-01-17 13:09:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1512,
    'BREAKIN',
    '3',
    '2023-01-17 13:09:41',
    '2023-01-17 00:39:41',
    '2023-01-17 13:09:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1513,
    'BREAKIN',
    '11',
    '2023-01-17 13:09:46',
    '2023-01-17 00:39:46',
    '2023-01-17 13:09:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1514,
    'BREAKIN',
    '5',
    '2023-01-17 13:10:19',
    '2023-01-17 00:40:19',
    '2023-01-17 13:10:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1515,
    'BREAKIN',
    '10',
    '2023-01-17 13:28:08',
    '2023-01-17 00:58:08',
    '2023-01-17 13:28:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1516,
    'BREAKOUT',
    '5',
    '2023-01-17 13:28:46',
    '2023-01-17 00:58:46',
    '2023-01-17 13:28:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1517,
    'BREAKIN',
    '7',
    '2023-01-17 13:28:55',
    '2023-01-17 00:58:55',
    '2023-01-17 13:28:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1518,
    'BREAKOUT',
    '10',
    '2023-01-17 13:53:11',
    '2023-01-17 01:23:11',
    '2023-01-17 13:53:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1519,
    'BREAKIN',
    '10',
    '2023-01-17 13:53:19',
    '2023-01-17 01:24:44',
    '2023-01-17 13:53:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1520,
    'BREAKOUT',
    '10',
    '2023-01-17 13:54:54',
    '2023-01-17 01:24:54',
    '2023-01-17 13:54:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1521,
    'BREAKOUT',
    '11',
    '2023-01-17 14:02:24',
    '2023-01-17 01:32:24',
    '2023-01-17 14:02:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1522,
    'BREAKOUT',
    '9',
    '2023-01-17 14:04:39',
    '2023-01-17 01:34:39',
    '2023-01-17 14:04:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1523,
    'BREAKIN',
    '9',
    '2023-01-17 14:04:42',
    '2023-01-17 01:34:42',
    '2023-01-17 14:04:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1524,
    'BREAKOUT',
    '9',
    '2023-01-17 14:04:43',
    '2023-01-17 01:34:43',
    '2023-01-17 14:04:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1525,
    'BREAKOUT',
    '4',
    '2023-01-17 14:04:58',
    '2023-01-17 01:34:58',
    '2023-01-17 14:04:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1526,
    'BREAKOUT',
    '7',
    '2023-01-17 14:06:06',
    '2023-01-17 01:36:06',
    '2023-01-17 14:06:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1527,
    'BREAKOUT',
    '3',
    '2023-01-17 14:08:12',
    '2023-01-17 01:38:12',
    '2023-01-17 14:08:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1528,
    'BREAKIN',
    '3',
    '2023-01-17 17:00:57',
    '2023-01-17 04:30:57',
    '2023-01-17 17:01:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1529,
    'BREAKOUT',
    '3',
    '2023-01-17 17:12:22',
    '2023-01-17 04:42:22',
    '2023-01-17 17:12:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1530,
    'CHECKOUT',
    '9',
    '2023-01-17 18:57:18',
    '2023-01-17 06:27:18',
    '2023-01-17 18:57:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1531,
    'CHECKOUT',
    '5',
    '2023-01-17 18:59:29',
    '2023-01-17 06:29:29',
    '2023-01-17 18:59:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1532,
    'CHECKOUT',
    '3',
    '2023-01-17 19:02:44',
    '2023-01-17 06:32:44',
    '2023-01-17 19:02:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1533,
    'CHECKOUT',
    '11',
    '2023-01-17 19:08:16',
    '2023-01-17 06:38:16',
    '2023-01-17 19:08:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1534,
    'CHECKOUT',
    '4',
    '2023-01-17 19:40:48',
    '2023-01-17 07:10:48',
    '2023-01-17 19:40:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1535,
    'CHECKOUT',
    '7',
    '2023-01-17 20:15:34',
    '2023-01-17 07:45:34',
    '2023-01-17 20:15:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1536,
    'CHECKIN',
    '9',
    '2023-01-18 09:29:46',
    '2023-01-17 20:59:46',
    '2023-01-18 09:29:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1537,
    'CHECKIN',
    '5',
    '2023-01-18 09:30:15',
    '2023-01-17 21:00:15',
    '2023-01-18 09:30:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1538,
    'CHECKIN',
    '3',
    '2023-01-18 09:31:20',
    '2023-01-17 21:01:20',
    '2023-01-18 09:31:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1539,
    'CHECKIN',
    '10',
    '2023-01-18 09:31:20',
    '2023-01-17 21:01:20',
    '2023-01-18 09:31:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1540,
    'CHECKIN',
    '7',
    '2023-01-18 09:34:08',
    '2023-01-17 21:04:08',
    '2023-01-18 09:34:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1541,
    'CHECKIN',
    '4',
    '2023-01-18 09:40:05',
    '2023-01-17 21:10:05',
    '2023-01-18 09:40:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1542,
    'CHECKIN',
    '11',
    '2023-01-18 10:17:52',
    '2023-01-17 21:47:52',
    '2023-01-18 10:17:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1543,
    'BREAKIN',
    '5',
    '2023-01-18 13:04:20',
    '2023-01-18 00:34:20',
    '2023-01-18 13:04:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1544,
    'BREAKIN',
    '4',
    '2023-01-18 13:04:26',
    '2023-01-18 00:34:26',
    '2023-01-18 13:04:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1545,
    'BREAKIN',
    '9',
    '2023-01-18 13:04:47',
    '2023-01-18 00:34:47',
    '2023-01-18 13:04:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1546,
    'BREAKIN',
    '11',
    '2023-01-18 13:04:52',
    '2023-01-18 00:34:52',
    '2023-01-18 13:04:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1547,
    'BREAKIN',
    '10',
    '2023-01-18 13:05:36',
    '2023-01-18 00:35:36',
    '2023-01-18 13:05:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1548,
    'BREAKIN',
    '3',
    '2023-01-18 13:13:36',
    '2023-01-18 00:43:36',
    '2023-01-18 13:13:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1549,
    'BREAKIN',
    '7',
    '2023-01-18 13:44:01',
    '2023-01-18 01:14:01',
    '2023-01-18 13:44:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1550,
    'BREAKOUT',
    '11',
    '2023-01-18 13:47:07',
    '2023-01-18 01:17:07',
    '2023-01-18 13:47:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1551,
    'BREAKOUT',
    '9',
    '2023-01-18 13:53:34',
    '2023-01-18 01:23:34',
    '2023-01-18 13:53:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1552,
    'BREAKOUT',
    '10',
    '2023-01-18 14:04:43',
    '2023-01-18 01:34:43',
    '2023-01-18 14:04:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1553,
    'BREAKOUT',
    '5',
    '2023-01-18 14:04:48',
    '2023-01-18 01:34:48',
    '2023-01-18 14:04:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1554,
    'BREAKOUT',
    '7',
    '2023-01-18 14:05:14',
    '2023-01-18 01:35:14',
    '2023-01-18 14:05:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1555,
    'BREAKOUT',
    '4',
    '2023-01-18 14:11:45',
    '2023-01-18 01:41:45',
    '2023-01-18 14:11:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1556,
    'BREAKOUT',
    '3',
    '2023-01-18 18:54:10',
    '2023-01-30 06:25:04',
    '2023-01-18 13:54:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1557,
    'CHECKOUT',
    '3',
    '2023-01-18 18:54:11',
    '2023-01-18 06:24:11',
    '2023-01-18 18:54:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1558,
    'CHECKOUT',
    '10',
    '2023-01-18 18:54:52',
    '2023-01-18 06:24:52',
    '2023-01-18 18:54:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1559,
    'CHECKOUT',
    '9',
    '2023-01-18 18:57:05',
    '2023-01-18 06:27:05',
    '2023-01-18 18:57:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1560,
    'CHECKOUT',
    '4',
    '2023-01-18 19:02:33',
    '2023-01-18 06:32:33',
    '2023-01-18 19:02:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1561,
    'CHECKOUT',
    '5',
    '2023-01-18 19:03:05',
    '2023-01-18 06:33:05',
    '2023-01-18 19:03:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1562,
    'CHECKOUT',
    '11',
    '2023-01-18 19:08:56',
    '2023-01-18 06:38:56',
    '2023-01-18 19:08:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1563,
    'CHECKIN',
    '3',
    '2023-01-19 09:13:16',
    '2023-01-18 20:43:16',
    '2023-01-19 09:13:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1564,
    'CHECKIN',
    '9',
    '2023-01-19 09:15:41',
    '2023-01-18 20:45:41',
    '2023-01-19 09:15:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1565,
    'CHECKIN',
    '4',
    '2023-01-19 09:25:22',
    '2023-01-18 20:55:22',
    '2023-01-19 09:25:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1566,
    'CHECKIN',
    '10',
    '2023-01-19 09:29:56',
    '2023-01-18 20:59:56',
    '2023-01-19 09:29:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1567,
    'CHECKIN',
    '5',
    '2023-01-19 09:29:58',
    '2023-01-18 20:59:58',
    '2023-01-19 09:29:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1568,
    'CHECKIN',
    '7',
    '2023-01-19 10:07:33',
    '2023-01-18 21:37:33',
    '2023-01-19 10:07:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1569,
    'CHECKIN',
    '11',
    '2023-01-19 10:07:37',
    '2023-01-30 06:35:18',
    '2023-01-19 09:25:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1570,
    'BREAKIN',
    '5',
    '2023-01-19 13:18:58',
    '2023-01-19 00:48:58',
    '2023-01-19 13:18:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1571,
    'BREAKOUT',
    '5',
    '2023-01-19 13:19:03',
    '2023-01-19 00:49:03',
    '2023-01-19 13:19:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1572,
    'BREAKIN',
    '4',
    '2023-01-19 13:20:13',
    '2023-01-19 00:50:13',
    '2023-01-19 13:20:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1573,
    'BREAKIN',
    '9',
    '2023-01-19 13:20:22',
    '2023-01-19 00:50:22',
    '2023-01-19 13:20:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1574,
    'BREAKIN',
    '10',
    '2023-01-19 13:20:29',
    '2023-01-19 00:50:29',
    '2023-01-19 13:20:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1575,
    'BREAKIN',
    '5',
    '2023-01-19 13:20:37',
    '2023-01-19 00:50:37',
    '2023-01-19 13:20:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1576,
    'BREAKIN',
    '11',
    '2023-01-19 13:20:53',
    '2023-01-19 00:50:53',
    '2023-01-19 13:20:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1577,
    'BREAKIN',
    '3',
    '2023-01-19 13:40:15',
    '2023-01-19 01:10:15',
    '2023-01-19 13:40:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1578,
    'BREAKOUT',
    '10',
    '2023-01-19 13:54:10',
    '2023-01-19 01:24:10',
    '2023-01-19 13:54:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1579,
    'BREAKOUT',
    '9',
    '2023-01-19 14:14:40',
    '2023-01-19 01:44:40',
    '2023-01-19 14:14:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1580,
    'BREAKOUT',
    '5',
    '2023-01-19 14:15:49',
    '2023-01-19 01:45:49',
    '2023-01-19 14:15:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1581,
    'BREAKOUT',
    '11',
    '2023-01-19 14:16:37',
    '2023-01-19 01:46:37',
    '2023-01-19 14:16:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1582,
    'BREAKOUT',
    '4',
    '2023-01-19 14:17:11',
    '2023-01-19 01:47:11',
    '2023-01-19 14:17:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1583,
    'BREAKOUT',
    '3',
    '2023-01-19 14:20:14',
    '2023-01-19 01:50:14',
    '2023-01-19 14:20:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1584,
    'CHECKOUT',
    '3',
    '2023-01-19 18:23:36',
    '2023-01-19 05:53:36',
    '2023-01-19 18:23:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1585,
    'CHECKOUT',
    '9',
    '2023-01-19 18:24:20',
    '2023-01-19 05:54:20',
    '2023-01-19 18:24:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1586,
    'CHECKOUT',
    '7',
    '2023-01-19 18:25:01',
    '2023-01-19 05:55:01',
    '2023-01-19 18:25:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1587,
    'CHECKOUT',
    '10',
    '2023-01-19 18:26:09',
    '2023-01-19 05:56:09',
    '2023-01-19 18:26:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1588,
    'CHECKOUT',
    '5',
    '2023-01-19 18:26:16',
    '2023-01-19 05:56:16',
    '2023-01-19 18:26:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1589,
    'CHECKOUT',
    '11',
    '2023-01-19 18:26:23',
    '2023-01-19 05:56:23',
    '2023-01-19 18:26:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1590,
    'CHECKOUT',
    '4',
    '2023-01-19 18:26:58',
    '2023-01-19 05:56:58',
    '2023-01-19 18:26:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1591,
    'CHECKIN',
    '3',
    '2023-01-20 09:16:43',
    '2023-01-19 20:46:43',
    '2023-01-20 09:16:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1592,
    'CHECKIN',
    '5',
    '2023-01-20 09:20:33',
    '2023-01-19 20:50:33',
    '2023-01-20 09:20:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1593,
    'CHECKIN',
    '4',
    '2023-01-20 09:20:41',
    '2023-01-19 20:50:41',
    '2023-01-20 09:20:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1594,
    'CHECKIN',
    '10',
    '2023-01-20 09:37:14',
    '2023-01-19 21:07:14',
    '2023-01-20 09:37:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1595,
    'CHECKIN',
    '9',
    '2023-01-20 09:37:23',
    '2023-01-19 21:07:23',
    '2023-01-20 09:37:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1596,
    'CHECKIN',
    '7',
    '2023-01-20 09:57:53',
    '2023-01-19 21:27:53',
    '2023-01-20 09:57:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1597,
    'CHECKIN',
    '11',
    '2023-01-20 10:00:08',
    '2023-01-19 21:30:08',
    '2023-01-20 10:00:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1598,
    'BREAKIN',
    '9',
    '2023-01-20 13:03:36',
    '2023-01-20 00:33:36',
    '2023-01-20 13:03:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1599,
    'BREAKIN',
    '11',
    '2023-01-20 13:04:01',
    '2023-01-20 00:34:01',
    '2023-01-20 13:04:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1600,
    'BREAKIN',
    '10',
    '2023-01-20 13:04:28',
    '2023-01-20 00:34:28',
    '2023-01-20 13:04:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1601,
    'BREAKIN',
    '4',
    '2023-01-20 13:04:39',
    '2023-01-20 00:34:39',
    '2023-01-20 13:04:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1602,
    'BREAKIN',
    '5',
    '2023-01-20 13:04:47',
    '2023-01-20 00:34:47',
    '2023-01-20 13:04:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1603,
    'BREAKIN',
    '3',
    '2023-01-20 13:10:15',
    '2023-01-20 00:40:15',
    '2023-01-20 13:10:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1604,
    'BREAKIN',
    '7',
    '2023-01-20 13:33:08',
    '2023-01-20 01:03:08',
    '2023-01-20 13:33:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1605,
    'BREAKOUT',
    '4',
    '2023-01-20 14:00:15',
    '2023-01-20 01:30:15',
    '2023-01-20 14:00:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1606,
    'BREAKOUT',
    '9',
    '2023-01-20 14:00:52',
    '2023-01-20 01:30:52',
    '2023-01-20 14:00:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1607,
    'BREAKOUT',
    '11',
    '2023-01-20 14:00:52',
    '2023-01-20 01:30:52',
    '2023-01-20 14:00:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1608,
    'BREAKOUT',
    '10',
    '2023-01-20 14:01:32',
    '2023-01-20 01:31:32',
    '2023-01-20 14:01:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1609,
    'BREAKOUT',
    '7',
    '2023-01-20 14:06:17',
    '2023-01-20 01:36:17',
    '2023-01-20 14:06:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1610,
    'BREAKOUT',
    '5',
    '2023-01-20 14:06:34',
    '2023-01-20 01:36:34',
    '2023-01-20 14:06:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1611,
    'BREAKOUT',
    '3',
    '2023-01-20 14:09:41',
    '2023-01-20 01:39:41',
    '2023-01-20 14:09:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1612,
    'BREAKIN',
    '4',
    '2023-01-20 17:21:05',
    '2023-01-20 04:51:05',
    '2023-01-20 17:21:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1613,
    'BREAKOUT',
    '4',
    '2023-01-20 17:32:41',
    '2023-01-20 05:02:41',
    '2023-01-20 17:32:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1614,
    'CHECKOUT',
    '10',
    '2023-01-20 18:58:45',
    '2023-01-20 06:28:45',
    '2023-01-20 18:58:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1615,
    'CHECKOUT',
    '4',
    '2023-01-20 19:01:12',
    '2023-01-20 06:31:12',
    '2023-01-20 19:01:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1616,
    'CHECKOUT',
    '3',
    '2023-01-20 19:08:18',
    '2023-01-20 06:38:18',
    '2023-01-20 19:08:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1617,
    'CHECKOUT',
    '5',
    '2023-01-20 19:08:23',
    '2023-01-20 06:38:23',
    '2023-01-20 19:08:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1618,
    'CHECKOUT',
    '5',
    '2023-01-20 19:08:25',
    '2023-01-20 06:38:25',
    '2023-01-20 19:08:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1619,
    'CHECKOUT',
    '11',
    '2023-01-20 19:10:44',
    '2023-01-20 06:40:44',
    '2023-01-20 19:10:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1620,
    'CHECKOUT',
    '7',
    '2023-01-20 19:43:26',
    '2023-01-20 07:13:26',
    '2023-01-20 19:43:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1621,
    'CHECKIN',
    '3',
    '2023-01-23 09:17:24',
    '2023-01-22 20:47:24',
    '2023-01-23 09:17:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1622,
    'CHECKIN',
    '5',
    '2023-01-23 09:25:42',
    '2023-01-22 20:55:42',
    '2023-01-23 09:25:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1623,
    'BREAKIN',
    '3',
    '2023-01-23 09:33:39',
    '2023-01-22 21:03:39',
    '2023-01-23 09:33:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1624,
    'CHECKIN',
    '10',
    '2023-01-23 09:40:19',
    '2023-01-22 21:10:19',
    '2023-01-23 09:40:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1625,
    'CHECKIN',
    '9',
    '2023-01-23 10:04:24',
    '2023-01-22 21:34:24',
    '2023-01-23 10:04:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1626,
    'BREAKOUT',
    '3',
    '2023-01-23 10:04:44',
    '2023-01-22 21:34:44',
    '2023-01-23 10:04:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1627,
    'CHECKIN',
    '7',
    '2023-01-23 10:06:02',
    '2023-01-22 21:36:02',
    '2023-01-23 10:06:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1628,
    'CHECKIN',
    '11',
    '2023-01-23 10:09:30',
    '2023-01-22 21:39:30',
    '2023-01-23 10:09:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1629,
    'CHECKIN',
    '4',
    '2023-01-23 10:51:00',
    '2023-01-22 22:21:00',
    '2023-01-23 10:51:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1630,
    'BREAKIN',
    '3',
    '2023-01-23 13:07:29',
    '2023-01-23 00:37:29',
    '2023-01-23 13:07:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1631,
    'BREAKIN',
    '4',
    '2023-01-23 13:08:48',
    '2023-01-23 00:38:48',
    '2023-01-23 13:08:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1632,
    'BREAKIN',
    '9',
    '2023-01-23 13:08:51',
    '2023-01-23 00:38:51',
    '2023-01-23 13:08:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1633,
    'BREAKIN',
    '11',
    '2023-01-23 13:08:51',
    '2023-01-23 00:38:51',
    '2023-01-23 13:08:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1634,
    'BREAKIN',
    '5',
    '2023-01-23 13:10:45',
    '2023-01-23 00:40:45',
    '2023-01-23 13:10:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1635,
    'BREAKIN',
    '7',
    '2023-01-23 13:29:02',
    '2023-01-23 00:59:02',
    '2023-01-23 13:29:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1636,
    'BREAKIN',
    '10',
    '2023-01-23 13:30:15',
    '2023-01-23 01:00:15',
    '2023-01-23 13:30:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1637,
    'BREAKOUT',
    '4',
    '2023-01-23 13:53:46',
    '2023-01-23 01:23:46',
    '2023-01-23 13:53:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1638,
    'BREAKOUT',
    '9',
    '2023-01-23 13:57:53',
    '2023-01-23 01:27:53',
    '2023-01-23 13:57:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1639,
    'BREAKOUT',
    '11',
    '2023-01-23 13:59:07',
    '2023-01-23 01:29:07',
    '2023-01-23 13:59:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1640,
    'BREAKOUT',
    '5',
    '2023-01-23 14:01:59',
    '2023-01-23 01:31:59',
    '2023-01-23 14:02:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1641,
    'BREAKOUT',
    '7',
    '2023-01-23 14:02:48',
    '2023-01-23 01:32:48',
    '2023-01-23 14:02:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1642,
    'BREAKOUT',
    '10',
    '2023-01-23 14:02:59',
    '2023-01-23 01:32:59',
    '2023-01-23 14:02:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1643,
    'BREAKIN',
    '4',
    '2023-01-23 17:22:16',
    '2023-01-23 04:52:16',
    '2023-01-23 17:22:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1644,
    'BREAKOUT',
    '4',
    '2023-01-23 17:45:46',
    '2023-01-23 05:15:46',
    '2023-01-23 17:45:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1645,
    'CHECKOUT',
    '10',
    '2023-01-23 19:15:27',
    '2023-01-23 06:45:27',
    '2023-01-23 19:15:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1646,
    'CHECKOUT',
    '11',
    '2023-01-23 19:17:21',
    '2023-01-23 06:47:21',
    '2023-01-23 19:17:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1647,
    'CHECKOUT',
    '5',
    '2023-01-23 19:22:30',
    '2023-01-23 06:52:30',
    '2023-01-23 19:22:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1648,
    'CHECKOUT',
    '7',
    '2023-01-23 19:28:21',
    '2023-01-23 06:58:21',
    '2023-01-23 19:28:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1649,
    'BREAKOUT',
    '3',
    '2023-01-23 20:08:12',
    '2023-01-30 06:24:19',
    '2023-01-23 14:08:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1650,
    'CHECKOUT',
    '3',
    '2023-01-23 20:08:12',
    '2023-01-23 07:38:12',
    '2023-01-23 20:08:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1651,
    'CHECKOUT',
    '4',
    '2023-01-23 20:15:12',
    '2023-01-23 07:45:12',
    '2023-01-23 20:15:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1652,
    'CHECKIN',
    '3',
    '2023-01-24 09:11:10',
    '2023-01-23 20:41:10',
    '2023-01-24 09:11:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1653,
    'CHECKIN',
    '5',
    '2023-01-24 09:19:06',
    '2023-01-23 20:49:06',
    '2023-01-24 09:19:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1654,
    'CHECKIN',
    '10',
    '2023-01-24 09:28:10',
    '2023-01-23 20:58:10',
    '2023-01-24 09:28:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1655,
    'CHECKIN',
    '9',
    '2023-01-24 09:42:57',
    '2023-01-23 21:12:57',
    '2023-01-24 09:43:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1656,
    'CHECKIN',
    '7',
    '2023-01-24 10:05:07',
    '2023-01-23 21:35:07',
    '2023-01-24 10:05:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1657,
    'CHECKIN',
    '11',
    '2023-01-24 10:07:11',
    '2023-01-23 21:37:11',
    '2023-01-24 10:07:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1658,
    'CHECKIN',
    '4',
    '2023-01-24 10:21:02',
    '2023-01-23 21:51:02',
    '2023-01-24 10:21:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1659,
    'BREAKIN',
    '3',
    '2023-01-24 13:09:26',
    '2023-01-24 00:39:26',
    '2023-01-24 13:09:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1660,
    'BREAKIN',
    '4',
    '2023-01-24 13:09:53',
    '2023-01-24 00:39:53',
    '2023-01-24 13:10:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1661,
    'BREAKIN',
    '9',
    '2023-01-24 13:10:23',
    '2023-01-24 00:40:23',
    '2023-01-24 13:10:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1662,
    'BREAKIN',
    '11',
    '2023-01-24 13:10:52',
    '2023-01-24 00:40:52',
    '2023-01-24 13:10:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1663,
    'BREAKIN',
    '10',
    '2023-01-24 13:11:04',
    '2023-01-24 00:41:04',
    '2023-01-24 13:11:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1664,
    'BREAKIN',
    '5',
    '2023-01-24 13:12:58',
    '2023-01-24 00:42:58',
    '2023-01-24 13:13:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1665,
    'BREAKIN',
    '7',
    '2023-01-24 13:31:05',
    '2023-01-24 01:01:05',
    '2023-01-24 13:31:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1666,
    'BREAKOUT',
    '5',
    '2023-01-24 14:07:04',
    '2023-01-24 01:37:04',
    '2023-01-24 14:07:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1667,
    'BREAKOUT',
    '9',
    '2023-01-24 14:07:35',
    '2023-01-24 01:37:35',
    '2023-01-24 14:07:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1668,
    'BREAKOUT',
    '11',
    '2023-01-24 14:07:39',
    '2023-01-24 01:37:39',
    '2023-01-24 14:07:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1669,
    'BREAKOUT',
    '4',
    '2023-01-24 14:07:58',
    '2023-01-24 01:37:58',
    '2023-01-24 14:08:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1670,
    'BREAKOUT',
    '10',
    '2023-01-24 14:10:16',
    '2023-01-24 01:40:16',
    '2023-01-24 14:10:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1671,
    'BREAKOUT',
    '7',
    '2023-01-24 14:11:32',
    '2023-01-24 01:41:32',
    '2023-01-24 14:11:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1672,
    'BREAKOUT',
    '3',
    '2023-01-24 14:11:41',
    '2023-01-24 01:41:41',
    '2023-01-24 14:11:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1673,
    'BREAKIN',
    '4',
    '2023-01-24 17:00:03',
    '2023-01-24 04:30:03',
    '2023-01-24 17:00:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1674,
    'BREAKOUT',
    '4',
    '2023-01-24 17:19:37',
    '2023-01-24 04:49:37',
    '2023-01-24 17:19:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1675,
    'CHECKOUT',
    '10',
    '2023-01-24 19:00:23',
    '2023-01-24 06:30:23',
    '2023-01-24 19:00:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1676,
    'CHECKOUT',
    '11',
    '2023-01-24 19:08:08',
    '2023-01-24 06:38:08',
    '2023-01-24 19:08:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1677,
    'CHECKOUT',
    '9',
    '2023-01-24 19:08:14',
    '2023-01-24 06:38:14',
    '2023-01-24 19:08:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1678,
    'BREAKIN',
    '4',
    '2023-01-24 19:13:31',
    '2023-01-24 06:43:31',
    '2023-01-24 19:13:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1679,
    'CHECKOUT',
    '5',
    '2023-01-24 19:13:38',
    '2023-01-24 06:43:38',
    '2023-01-24 19:13:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1680,
    'BREAKOUT',
    '4',
    '2023-01-24 19:50:15',
    '2023-01-24 07:20:15',
    '2023-01-24 19:50:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1681,
    'CHECKOUT',
    '7',
    '2023-01-24 19:58:16',
    '2023-01-24 07:28:16',
    '2023-01-24 19:58:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1682,
    'CHECKOUT',
    '4',
    '2023-01-24 20:51:56',
    '2023-01-24 08:21:56',
    '2023-01-24 20:52:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1683,
    'CHECKIN',
    '3',
    '2023-01-25 08:49:40',
    '2023-01-24 20:19:40',
    '2023-01-25 08:49:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1684,
    'CHECKIN',
    '5',
    '2023-01-25 08:50:59',
    '2023-01-24 20:20:59',
    '2023-01-25 08:51:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1685,
    'CHECKIN',
    '9',
    '2023-01-25 08:51:08',
    '2023-01-24 20:21:08',
    '2023-01-25 08:51:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1686,
    'CHECKIN',
    '10',
    '2023-01-25 08:55:53',
    '2023-01-24 20:25:53',
    '2023-01-25 08:55:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1687,
    'CHECKIN',
    '11',
    '2023-01-25 09:56:03',
    '2023-01-24 21:26:03',
    '2023-01-25 09:56:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1688,
    'CHECKIN',
    '7',
    '2023-01-25 10:00:41',
    '2023-01-24 21:30:41',
    '2023-01-25 10:00:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1689,
    'CHECKIN',
    '4',
    '2023-01-25 10:23:20',
    '2023-01-24 21:53:20',
    '2023-01-25 10:23:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1690,
    'BREAKIN',
    '4',
    '2023-01-25 13:09:41',
    '2023-01-25 00:39:41',
    '2023-01-25 13:09:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1691,
    'BREAKIN',
    '9',
    '2023-01-25 13:10:07',
    '2023-01-25 00:40:07',
    '2023-01-25 13:10:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1692,
    'BREAKIN',
    '10',
    '2023-01-25 13:10:12',
    '2023-01-25 00:40:12',
    '2023-01-25 13:10:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1693,
    'BREAKIN',
    '3',
    '2023-01-25 13:10:22',
    '2023-01-25 00:40:22',
    '2023-01-25 13:10:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1694,
    'BREAKIN',
    '11',
    '2023-01-25 13:10:23',
    '2023-01-25 00:40:23',
    '2023-01-25 13:10:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1695,
    'BREAKIN',
    '5',
    '2023-01-25 13:10:28',
    '2023-01-25 00:40:28',
    '2023-01-25 13:10:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1696,
    'BREAKIN',
    '7',
    '2023-01-25 13:10:30',
    '2023-01-25 00:40:30',
    '2023-01-25 13:10:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1697,
    'BREAKOUT',
    '11',
    '2023-01-25 14:07:02',
    '2023-01-25 01:37:02',
    '2023-01-25 14:07:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1698,
    'BREAKOUT',
    '4',
    '2023-01-25 14:07:25',
    '2023-01-25 01:37:25',
    '2023-01-25 14:07:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1699,
    'BREAKOUT',
    '10',
    '2023-01-25 14:09:56',
    '2023-01-25 01:39:56',
    '2023-01-25 14:09:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1700,
    'BREAKOUT',
    '5',
    '2023-01-25 14:13:03',
    '2023-01-25 01:43:03',
    '2023-01-25 14:13:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1701,
    'BREAKOUT',
    '3',
    '2023-01-25 14:13:18',
    '2023-01-25 01:43:18',
    '2023-01-25 14:13:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1702,
    'BREAKOUT',
    '7',
    '2023-01-25 14:13:33',
    '2023-01-25 01:43:33',
    '2023-01-25 14:13:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1703,
    'BREAKOUT',
    '9',
    '2023-01-25 14:46:04',
    '2023-01-25 02:16:04',
    '2023-01-25 14:46:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1704,
    'BREAKIN',
    '4',
    '2023-01-25 16:53:16',
    '2023-01-25 04:23:16',
    '2023-01-25 16:53:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1705,
    'BREAKOUT',
    '4',
    '2023-01-25 17:14:23',
    '2023-01-25 04:44:23',
    '2023-01-25 17:14:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1706,
    'CHECKOUT',
    '10',
    '2023-01-25 18:57:45',
    '2023-01-25 06:27:45',
    '2023-01-25 18:57:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1707,
    'CHECKOUT',
    '5',
    '2023-01-25 19:00:48',
    '2023-01-25 06:30:48',
    '2023-01-25 19:00:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1708,
    'CHECKOUT',
    '3',
    '2023-01-25 19:00:51',
    '2023-01-25 06:30:51',
    '2023-01-25 19:00:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1709,
    'CHECKOUT',
    '11',
    '2023-01-25 19:02:38',
    '2023-01-25 06:32:38',
    '2023-01-25 19:02:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1710,
    'CHECKOUT',
    '7',
    '2023-01-25 19:36:19',
    '2023-01-25 07:06:19',
    '2023-01-25 19:36:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1711,
    'CHECKOUT',
    '4',
    '2023-01-25 19:51:37',
    '2023-01-25 07:21:37',
    '2023-01-25 19:51:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1712,
    'CHECKIN',
    '3',
    '2023-01-27 09:11:29',
    '2023-01-26 20:41:29',
    '2023-01-27 09:11:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1713,
    'CHECKIN',
    '4',
    '2023-01-27 09:23:52',
    '2023-01-26 20:53:52',
    '2023-01-27 09:24:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1714,
    'CHECKIN',
    '5',
    '2023-01-27 09:31:19',
    '2023-01-26 21:01:19',
    '2023-01-27 09:31:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1715,
    'CHECKIN',
    '10',
    '2023-01-27 09:38:44',
    '2023-01-26 21:08:44',
    '2023-01-27 09:38:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1716,
    'CHECKIN',
    '9',
    '2023-01-27 09:38:50',
    '2023-01-26 21:08:50',
    '2023-01-27 09:38:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1717,
    'CHECKIN',
    '7',
    '2023-01-27 09:48:21',
    '2023-01-26 21:18:21',
    '2023-01-27 09:48:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1718,
    'CHECKIN',
    '11',
    '2023-01-27 10:10:14',
    '2023-01-26 21:40:14',
    '2023-01-27 10:10:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1719,
    'BREAKIN',
    '9',
    '2023-01-27 13:16:40',
    '2023-01-27 00:46:40',
    '2023-01-27 13:16:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1720,
    'BREAKIN',
    '7',
    '2023-01-27 13:17:04',
    '2023-01-27 00:47:04',
    '2023-01-27 13:17:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1721,
    'BREAKIN',
    '5',
    '2023-01-27 13:17:13',
    '2023-01-27 00:47:13',
    '2023-01-27 13:17:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1722,
    'BREAKIN',
    '10',
    '2023-01-27 13:17:14',
    '2023-01-27 00:47:14',
    '2023-01-27 13:17:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1723,
    'BREAKIN',
    '4',
    '2023-01-27 13:17:33',
    '2023-01-27 00:47:33',
    '2023-01-27 13:17:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1724,
    'BREAKIN',
    '11',
    '2023-01-27 13:17:52',
    '2023-01-27 00:47:52',
    '2023-01-27 13:17:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1725,
    'BREAKOUT',
    '9',
    '2023-01-27 14:16:15',
    '2023-01-27 01:46:15',
    '2023-01-27 14:16:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1726,
    'BREAKOUT',
    '11',
    '2023-01-27 14:16:19',
    '2023-01-27 01:46:19',
    '2023-01-27 14:16:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1727,
    'BREAKOUT',
    '5',
    '2023-01-27 14:26:24',
    '2023-01-27 01:56:24',
    '2023-01-27 14:26:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1728,
    'BREAKOUT',
    '10',
    '2023-01-27 14:28:49',
    '2023-01-27 01:58:49',
    '2023-01-27 14:28:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1729,
    'BREAKOUT',
    '4',
    '2023-01-27 14:30:41',
    '2023-01-27 02:00:41',
    '2023-01-27 14:30:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1730,
    'BREAKOUT',
    '7',
    '2023-01-27 14:31:13',
    '2023-01-27 02:01:13',
    '2023-01-27 14:31:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1731,
    'BREAKIN',
    '4',
    '2023-01-27 17:43:49',
    '2023-01-27 05:13:49',
    '2023-01-27 17:44:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1732,
    'BREAKOUT',
    '4',
    '2023-01-27 17:58:30',
    '2023-01-27 05:28:30',
    '2023-01-27 17:58:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1733,
    'CHECKOUT',
    '9',
    '2023-01-27 18:57:25',
    '2023-01-27 06:27:25',
    '2023-01-27 18:57:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1734,
    'CHECKOUT',
    '10',
    '2023-01-27 18:58:14',
    '2023-01-27 06:28:14',
    '2023-01-27 18:58:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1735,
    'CHECKOUT',
    '11',
    '2023-01-27 19:11:09',
    '2023-01-27 06:41:09',
    '2023-01-27 19:11:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1736,
    'CHECKOUT',
    '3',
    '2023-01-27 19:33:53',
    '2023-01-27 07:03:53',
    '2023-01-27 19:33:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1737,
    'CHECKOUT',
    '4',
    '2023-01-27 19:35:45',
    '2023-01-27 07:05:45',
    '2023-01-27 19:35:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1738,
    'CHECKOUT',
    '7',
    '2023-01-27 19:38:17',
    '2023-01-27 07:08:17',
    '2023-01-27 19:38:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1739,
    'CHECKOUT',
    '5',
    '2023-01-27 19:39:01',
    '2023-01-27 07:09:01',
    '2023-01-27 19:39:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1740,
    'CHECKIN',
    '3',
    '2023-01-28 09:13:53',
    '2023-01-27 20:43:53',
    '2023-01-28 09:13:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1741,
    'CHECKIN',
    '5',
    '2023-01-28 09:21:42',
    '2023-01-27 20:51:42',
    '2023-01-28 09:21:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1742,
    'CHECKIN',
    '9',
    '2023-01-28 09:35:25',
    '2023-01-27 21:05:25',
    '2023-01-28 09:35:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1743,
    'CHECKIN',
    '7',
    '2023-01-28 09:43:38',
    '2023-01-27 21:13:38',
    '2023-01-28 09:43:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1744,
    'CHECKIN',
    '10',
    '2023-01-28 09:56:13',
    '2023-01-27 21:26:13',
    '2023-01-28 09:56:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1745,
    'CHECKIN',
    '4',
    '2023-01-28 10:03:48',
    '2023-01-27 21:33:48',
    '2023-01-28 10:04:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1746,
    'CHECKIN',
    '11',
    '2023-01-28 10:05:47',
    '2023-01-27 21:35:47',
    '2023-01-28 10:05:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1747,
    'BREAKIN',
    '3',
    '2023-01-28 13:12:40',
    '2023-01-28 00:42:40',
    '2023-01-28 13:12:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1748,
    'BREAKIN',
    '9',
    '2023-01-28 13:13:31',
    '2023-01-28 00:43:31',
    '2023-01-28 13:13:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1749,
    'BREAKIN',
    '4',
    '2023-01-28 13:13:45',
    '2023-01-28 00:43:45',
    '2023-01-28 13:14:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1750,
    'BREAKIN',
    '11',
    '2023-01-28 13:13:48',
    '2023-01-28 00:43:48',
    '2023-01-28 13:13:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1751,
    'BREAKIN',
    '5',
    '2023-01-28 13:13:54',
    '2023-01-28 00:43:54',
    '2023-01-28 13:13:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1752,
    'BREAKIN',
    '10',
    '2023-01-28 13:14:28',
    '2023-01-28 00:44:28',
    '2023-01-28 13:14:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1753,
    'BREAKIN',
    '7',
    '2023-01-28 13:15:40',
    '2023-01-28 00:45:40',
    '2023-01-28 13:15:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1754,
    'BREAKOUT',
    '10',
    '2023-01-28 14:01:44',
    '2023-01-28 01:31:44',
    '2023-01-28 14:01:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1755,
    'BREAKOUT',
    '9',
    '2023-01-28 14:02:06',
    '2023-01-28 01:32:06',
    '2023-01-28 14:02:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1756,
    'BREAKOUT',
    '11',
    '2023-01-28 14:02:11',
    '2023-01-28 01:32:11',
    '2023-01-28 14:02:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1757,
    'BREAKOUT',
    '4',
    '2023-01-28 14:02:38',
    '2023-01-28 01:32:38',
    '2023-01-28 14:02:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1758,
    'BREAKOUT',
    '3',
    '2023-01-28 14:04:44',
    '2023-01-28 01:34:44',
    '2023-01-28 14:04:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1759,
    'BREAKOUT',
    '7',
    '2023-01-28 14:04:59',
    '2023-01-28 01:34:59',
    '2023-01-28 14:05:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1760,
    'BREAKOUT',
    '5',
    '2023-01-28 16:38:12',
    '2023-01-30 06:33:08',
    '2023-01-28 14:38:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1761,
    'BREAKIN',
    '4',
    '2023-01-28 16:39:15',
    '2023-01-28 04:09:15',
    '2023-01-28 16:39:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1762,
    'BREAKOUT',
    '4',
    '2023-01-28 16:47:23',
    '2023-01-28 04:17:23',
    '2023-01-28 16:47:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1763,
    'CHECKOUT',
    '5',
    '2023-01-28 18:50:47',
    '2023-01-28 06:20:47',
    '2023-01-28 18:50:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1764,
    'CHECKOUT',
    '7',
    '2023-01-28 18:50:51',
    '2023-01-28 06:20:51',
    '2023-01-28 18:50:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1765,
    'CHECKOUT',
    '11',
    '2023-01-28 18:51:04',
    '2023-01-30 06:34:45',
    '2023-01-28 18:59:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1766,
    'CHECKOUT',
    '10',
    '2023-01-28 18:51:47',
    '2023-01-28 06:21:47',
    '2023-01-28 18:51:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1767,
    'CHECKOUT',
    '4',
    '2023-01-28 19:55:32',
    '2023-01-28 07:25:32',
    '2023-01-28 19:55:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1768,
    'CHECKIN',
    '3',
    '2023-01-30 09:11:11',
    '2023-01-29 20:41:11',
    '2023-01-30 09:11:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1769,
    'CHECKIN',
    '5',
    '2023-01-30 09:15:47',
    '2023-01-29 20:45:47',
    '2023-01-30 09:15:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1770,
    'CHECKIN',
    '9',
    '2023-01-30 09:39:36',
    '2023-01-29 21:09:36',
    '2023-01-30 09:39:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1771,
    'CHECKIN',
    '7',
    '2023-01-30 09:43:12',
    '2023-01-29 21:13:12',
    '2023-01-30 09:43:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1772,
    'CHECKIN',
    '11',
    '2023-01-30 09:48:13',
    '2023-01-29 21:18:13',
    '2023-01-30 09:48:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1773,
    'CHECKIN',
    '10',
    '2023-01-30 09:48:31',
    '2023-01-29 21:18:31',
    '2023-01-30 09:48:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1774,
    'CHECKIN',
    '4',
    '2023-01-30 10:14:51',
    '2023-01-29 21:44:51',
    '2023-01-30 10:15:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1775,
    'BREAKIN',
    '4',
    '2023-01-30 13:01:17',
    '2023-01-30 00:31:17',
    '2023-01-30 13:01:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1776,
    'BREAKIN',
    '5',
    '2023-01-30 13:01:21',
    '2023-01-30 00:31:21',
    '2023-01-30 13:01:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1777,
    'BREAKIN',
    '9',
    '2023-01-30 13:01:23',
    '2023-01-30 00:31:23',
    '2023-01-30 13:01:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1778,
    'BREAKIN',
    '10',
    '2023-01-30 13:01:45',
    '2023-01-30 00:31:45',
    '2023-01-30 13:01:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1779,
    'BREAKIN',
    '11',
    '2023-01-30 13:01:52',
    '2023-01-30 00:31:52',
    '2023-01-30 13:01:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1780,
    'BREAKIN',
    '7',
    '2023-01-30 13:04:00',
    '2023-01-30 00:34:00',
    '2023-01-30 13:04:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1781,
    'BREAKIN',
    '3',
    '2023-01-30 13:04:54',
    '2023-01-30 00:34:54',
    '2023-01-30 13:04:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1782,
    'CHECKIN',
    '1',
    '2023-01-30 17:45:27',
    '2023-01-30 05:15:27',
    '2023-01-30 17:45:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1783,
    'BREAKIN',
    '1',
    '2023-01-30 17:45:29',
    '2023-01-30 05:15:29',
    '2023-01-30 17:45:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1784,
    'BREAKOUT',
    '1',
    '2023-01-30 17:45:30',
    '2023-01-30 05:15:30',
    '2023-01-30 17:45:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1785,
    'BREAKOUT',
    '11',
    '2023-01-30 17:45:48',
    '2023-01-30 05:16:38',
    '2023-01-30 13:55:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1786,
    'BREAKOUT',
    '5',
    '2023-01-30 17:47:31',
    '2023-01-30 05:17:31',
    '2023-01-30 13:50:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1787,
    'BREAKOUT',
    '7',
    '2023-01-30 17:47:58',
    '2023-01-30 05:17:58',
    '2023-01-30 13:50:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1788,
    'BREAKOUT',
    '3',
    '2023-01-30 17:48:18',
    '2023-01-30 05:18:18',
    '2023-01-30 13:50:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1789,
    'BREAKOUT',
    '9',
    '2023-01-30 17:48:37',
    '2023-01-30 05:18:37',
    '2023-01-30 13:50:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1790,
    'BREAKOUT',
    '4',
    '2023-01-30 17:48:57',
    '2023-01-30 05:18:57',
    '2023-01-30 13:50:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1791,
    'BREAKOUT',
    '10',
    '2023-01-30 17:49:22',
    '2023-01-30 05:19:22',
    '2023-01-30 13:50:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1792,
    'BREAKIN',
    '4',
    '2023-01-30 17:49:45',
    '2023-01-30 05:19:45',
    '2023-01-30 17:50:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1793,
    'BREAKIN',
    '3',
    '2023-01-30 17:49:46',
    '2023-01-30 05:19:46',
    '2023-01-30 17:49:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1794,
    'BREAKOUT',
    '3',
    '2023-01-30 17:49:48',
    '2023-01-30 05:19:48',
    '2023-01-30 17:49:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1795,
    'CHECKOUT',
    '3',
    '2023-01-30 18:49:29',
    '2023-01-30 06:19:29',
    '2023-01-30 18:49:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1796,
    'BREAKOUT',
    '4',
    '2023-01-30 18:52:20',
    '2023-01-30 06:22:20',
    '2023-01-30 18:05:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1797,
    'CHECKOUT',
    '3',
    '2023-01-30 18:53:13',
    '2023-01-30 06:23:13',
    '2023-01-28 17:04:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1798,
    'CHECKOUT',
    '3',
    '2023-01-30 18:53:22',
    '2023-01-30 06:23:22',
    '2023-01-28 17:04:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1799,
    'CHECKOUT',
    '3',
    '2023-01-30 18:53:47',
    '2023-01-30 06:24:43',
    '2023-01-24 19:04:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1800,
    'CHECKOUT',
    '10',
    '2023-01-30 18:58:23',
    '2023-01-30 06:28:23',
    '2023-01-30 18:58:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1801,
    'CHECKOUT',
    '5',
    '2023-01-30 19:00:59',
    '2023-01-30 06:30:59',
    '2023-01-30 19:01:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1802,
    'CHECKOUT',
    '10',
    '2023-01-30 19:01:17',
    '2023-01-30 06:31:17',
    '2023-01-06 19:00:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1803,
    'CHECKOUT',
    '10',
    '2023-01-30 19:01:50',
    '2023-01-30 06:31:50',
    '2023-01-17 19:00:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1804,
    'CHECKOUT',
    '11',
    '2023-01-30 19:03:41',
    '2023-01-30 06:33:41',
    '2023-01-30 19:03:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1805,
    'CHECKOUT',
    '9',
    '2023-01-30 19:06:33',
    '2023-01-30 06:36:33',
    '2023-01-05 19:15:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1806,
    'CHECKOUT',
    '9',
    '2023-01-30 19:07:36',
    '2023-01-30 06:37:36',
    '2023-01-09 19:00:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1807,
    'BREAKOUT',
    '9',
    '2023-01-30 19:08:13',
    '2023-01-30 06:38:13',
    '2023-01-11 12:00:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1808,
    'CHECKOUT',
    '9',
    '2023-01-30 19:08:41',
    '2023-01-30 06:39:04',
    '2023-01-09 19:15:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1809,
    'CHECKOUT',
    '9',
    '2023-01-30 19:09:28',
    '2023-01-30 06:39:28',
    '2023-01-11 15:15:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1810,
    'CHECKOUT',
    '9',
    '2023-01-30 19:09:41',
    '2023-01-30 06:39:41',
    '2023-01-12 19:00:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1811,
    'CHECKOUT',
    '9',
    '2023-01-30 19:09:57',
    '2023-01-30 06:39:57',
    '2023-01-13 19:00:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1812,
    'CHECKOUT',
    '9',
    '2023-01-30 19:10:14',
    '2023-01-30 06:40:14',
    '2023-01-20 19:00:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1813,
    'CHECKOUT',
    '9',
    '2023-01-30 19:10:35',
    '2023-01-30 06:40:35',
    '2023-01-23 19:00:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1814,
    'CHECKOUT',
    '9',
    '2023-01-30 19:10:53',
    '2023-01-30 06:40:53',
    '2023-01-25 19:00:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1815,
    'CHECKOUT',
    '9',
    '2023-01-30 19:11:06',
    '2023-01-30 06:41:06',
    '2023-01-28 19:00:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1816,
    'CHECKOUT',
    '9',
    '2023-01-30 19:11:19',
    '2023-01-30 06:41:19',
    '2023-01-30 19:11:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1817,
    'CHECKOUT',
    '7',
    '2023-01-30 19:11:48',
    '2023-01-30 06:41:48',
    '2023-01-18 19:00:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1818,
    'CHECKOUT',
    '4',
    '2023-01-30 19:20:55',
    '2023-01-30 06:50:55',
    '2023-01-30 19:21:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1819,
    'CHECKOUT',
    '7',
    '2023-01-30 20:00:10',
    '2023-01-30 07:30:10',
    '2023-01-30 20:00:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1820,
    'CHECKIN',
    '3',
    '2023-01-31 09:12:17',
    '2023-01-30 20:42:17',
    '2023-01-31 09:12:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1821,
    'CHECKIN',
    '4',
    '2023-01-31 09:24:42',
    '2023-01-30 20:54:42',
    '2023-01-31 09:25:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1822,
    'CHECKIN',
    '5',
    '2023-01-31 09:26:20',
    '2023-01-30 20:56:20',
    '2023-01-31 09:26:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1823,
    'CHECKIN',
    '9',
    '2023-01-31 09:27:48',
    '2023-01-30 20:57:48',
    '2023-01-31 09:27:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1824,
    'CHECKIN',
    '10',
    '2023-01-31 09:29:44',
    '2023-01-30 20:59:44',
    '2023-01-31 09:29:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1825,
    'CHECKIN',
    '7',
    '2023-01-31 09:30:57',
    '2023-01-30 21:00:57',
    '2023-01-31 09:31:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1826,
    'CHECKIN',
    '11',
    '2023-01-31 09:47:01',
    '2023-01-30 21:17:01',
    '2023-01-31 09:46:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1827,
    'BREAKIN',
    '4',
    '2023-01-31 13:00:57',
    '2023-01-31 00:30:57',
    '2023-01-31 13:01:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1828,
    'BREAKIN',
    '5',
    '2023-01-31 13:01:21',
    '2023-01-31 00:31:21',
    '2023-01-31 13:01:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1829,
    'BREAKIN',
    '3',
    '2023-01-31 13:01:29',
    '2023-01-31 00:31:29',
    '2023-01-31 13:01:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1830,
    'BREAKIN',
    '10',
    '2023-01-31 13:01:31',
    '2023-01-31 00:31:31',
    '2023-01-31 13:01:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1831,
    'BREAKIN',
    '7',
    '2023-01-31 13:14:00',
    '2023-01-31 00:44:00',
    '2023-01-31 13:14:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1832,
    'BREAKIN',
    '11',
    '2023-01-31 13:18:24',
    '2023-01-31 00:48:24',
    '2023-01-31 13:18:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1833,
    'BREAKOUT',
    '10',
    '2023-01-31 14:02:17',
    '2023-01-31 01:32:17',
    '2023-01-31 14:02:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1834,
    'BREAKOUT',
    '11',
    '2023-01-31 14:02:41',
    '2023-01-31 01:32:41',
    '2023-01-31 14:02:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1835,
    'BREAKOUT',
    '5',
    '2023-01-31 14:03:09',
    '2023-01-31 01:33:09',
    '2023-01-31 14:03:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1836,
    'BREAKOUT',
    '3',
    '2023-01-31 14:03:10',
    '2023-01-31 01:33:10',
    '2023-01-31 14:03:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1837,
    'BREAKOUT',
    '4',
    '2023-01-31 14:04:28',
    '2023-01-31 01:34:28',
    '2023-01-31 14:04:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1838,
    'BREAKOUT',
    '7',
    '2023-01-31 14:05:49',
    '2023-01-31 01:35:49',
    '2023-01-31 14:05:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1839,
    'BREAKIN',
    '7',
    '2023-01-31 17:25:24',
    '2023-01-31 04:55:24',
    '2023-01-31 17:25:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1840,
    'BREAKOUT',
    '7',
    '2023-01-31 17:25:25',
    '2023-01-31 04:55:25',
    '2023-01-31 17:25:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1841,
    'CHECKOUT',
    '4',
    '2023-01-31 18:50:13',
    '2023-01-31 06:20:13',
    '2023-01-31 18:50:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1842,
    'CHECKOUT',
    '11',
    '2023-01-31 18:51:27',
    '2023-01-31 06:21:27',
    '2023-01-31 18:51:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1843,
    'CHECKOUT',
    '10',
    '2023-01-31 18:56:21',
    '2023-01-31 06:26:21',
    '2023-01-31 18:56:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1844,
    'CHECKOUT',
    '5',
    '2023-01-31 18:59:22',
    '2023-01-31 06:29:22',
    '2023-01-31 18:59:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1845,
    'CHECKOUT',
    '3',
    '2023-01-31 19:15:39',
    '2023-01-31 06:45:39',
    '2023-01-31 19:15:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1846,
    'CHECKOUT',
    '7',
    '2023-01-31 19:16:12',
    '2023-01-31 06:46:12',
    '2023-01-31 19:16:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1847,
    'CHECKIN',
    '3',
    '2023-02-01 09:06:48',
    '2023-01-31 20:36:48',
    '2023-02-01 09:06:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1848,
    'CHECKIN',
    '5',
    '2023-02-01 09:19:25',
    '2023-01-31 20:49:25',
    '2023-02-01 09:19:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1849,
    'CHECKIN',
    '7',
    '2023-02-01 09:21:19',
    '2023-01-31 20:51:19',
    '2023-02-01 09:21:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1850,
    'CHECKIN',
    '9',
    '2023-02-01 09:50:15',
    '2023-01-31 21:20:15',
    '2023-02-01 09:50:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1851,
    'CHECKIN',
    '10',
    '2023-02-01 09:52:06',
    '2023-01-31 21:22:06',
    '2023-02-01 09:52:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1852,
    'CHECKIN',
    '11',
    '2023-02-01 09:55:30',
    '2023-01-31 21:25:30',
    '2023-02-01 09:55:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1853,
    'CHECKIN',
    '4',
    '2023-02-01 09:55:51',
    '2023-01-31 21:25:51',
    '2023-02-01 09:56:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1854,
    'BREAKIN',
    '4',
    '2023-02-01 13:08:45',
    '2023-02-01 00:38:45',
    '2023-02-01 13:09:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1855,
    'BREAKIN',
    '11',
    '2023-02-01 13:08:52',
    '2023-02-01 00:38:52',
    '2023-02-01 13:08:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1856,
    'BREAKIN',
    '9',
    '2023-02-01 13:08:59',
    '2023-02-01 00:38:59',
    '2023-02-01 13:09:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1857,
    'BREAKIN',
    '3',
    '2023-02-01 13:10:17',
    '2023-02-01 00:40:17',
    '2023-02-01 13:10:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1858,
    'BREAKIN',
    '5',
    '2023-02-01 13:10:28',
    '2023-02-01 00:40:28',
    '2023-02-01 13:10:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1859,
    'BREAKIN',
    '7',
    '2023-02-01 13:11:04',
    '2023-02-01 00:41:04',
    '2023-02-01 13:11:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1860,
    'BREAKIN',
    '10',
    '2023-02-01 13:11:36',
    '2023-02-01 00:41:36',
    '2023-02-01 13:11:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1861,
    'BREAKOUT',
    '10',
    '2023-02-01 13:55:26',
    '2023-02-01 01:25:26',
    '2023-02-01 13:55:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1862,
    'BREAKIN',
    '10',
    '2023-02-01 13:55:31',
    '2023-02-01 01:25:31',
    '2023-02-01 13:55:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1863,
    'BREAKOUT',
    '10',
    '2023-02-01 13:55:36',
    '2023-02-01 01:25:36',
    '2023-02-01 13:55:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1864,
    'BREAKOUT',
    '9',
    '2023-02-01 13:55:45',
    '2023-02-01 01:25:45',
    '2023-02-01 13:55:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1865,
    'BREAKOUT',
    '11',
    '2023-02-01 14:02:07',
    '2023-02-01 01:32:07',
    '2023-02-01 14:02:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1866,
    'BREAKOUT',
    '4',
    '2023-02-01 14:03:12',
    '2023-02-01 01:33:12',
    '2023-02-01 14:03:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1867,
    'BREAKOUT',
    '5',
    '2023-02-01 14:15:14',
    '2023-02-01 01:45:14',
    '2023-02-01 14:15:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1868,
    'BREAKOUT',
    '7',
    '2023-02-01 14:15:56',
    '2023-02-01 01:45:56',
    '2023-02-01 14:16:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1869,
    'BREAKOUT',
    '3',
    '2023-02-01 14:15:58',
    '2023-02-01 01:45:58',
    '2023-02-01 14:16:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1870,
    'BREAKIN',
    '10',
    '2023-02-01 17:42:14',
    '2023-02-01 05:12:14',
    '2023-02-01 17:42:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1871,
    'BREAKOUT',
    '10',
    '2023-02-01 17:42:15',
    '2023-02-01 05:12:15',
    '2023-02-01 17:42:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1872,
    'BREAKIN',
    '11',
    '2023-02-01 17:42:22',
    '2023-02-01 05:12:22',
    '2023-02-01 17:42:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1873,
    'BREAKOUT',
    '11',
    '2023-02-01 17:42:24',
    '2023-02-01 05:12:24',
    '2023-02-01 17:42:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1874,
    'BREAKIN',
    '9',
    '2023-02-01 17:43:08',
    '2023-02-01 05:13:08',
    '2023-02-01 17:43:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1875,
    'BREAKOUT',
    '9',
    '2023-02-01 17:43:09',
    '2023-02-01 05:13:09',
    '2023-02-01 17:43:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1876,
    'CHECKOUT',
    '10',
    '2023-02-01 19:19:01',
    '2023-02-01 06:49:01',
    '2023-02-01 19:19:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1877,
    'CHECKOUT',
    '5',
    '2023-02-01 19:19:42',
    '2023-02-01 06:49:42',
    '2023-02-01 19:19:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1878,
    'CHECKOUT',
    '3',
    '2023-02-01 19:20:18',
    '2023-02-01 06:50:18',
    '2023-02-01 19:20:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1879,
    'CHECKOUT',
    '7',
    '2023-02-01 19:21:08',
    '2023-02-01 06:51:08',
    '2023-02-01 19:21:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1880,
    'CHECKOUT',
    '9',
    '2023-02-01 19:21:33',
    '2023-02-01 06:51:33',
    '2023-02-01 19:21:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1881,
    'CHECKOUT',
    '11',
    '2023-02-01 19:23:15',
    '2023-02-01 06:53:15',
    '2023-02-01 19:23:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1882,
    'CHECKOUT',
    '4',
    '2023-02-01 19:25:47',
    '2023-02-01 06:55:47',
    '2023-02-01 19:26:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1883,
    'CHECKIN',
    '4',
    '2023-02-02 09:06:48',
    '2023-02-01 20:36:48',
    '2023-02-02 09:07:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1884,
    'CHECKIN',
    '5',
    '2023-02-02 09:22:34',
    '2023-02-01 20:52:34',
    '2023-02-02 09:22:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1885,
    'CHECKIN',
    '3',
    '2023-02-02 09:23:15',
    '2023-02-01 20:53:15',
    '2023-02-02 09:23:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1886,
    'CHECKIN',
    '9',
    '2023-02-02 09:29:47',
    '2023-02-01 20:59:47',
    '2023-02-02 09:29:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1887,
    'CHECKIN',
    '10',
    '2023-02-02 09:30:14',
    '2023-02-01 21:00:14',
    '2023-02-02 09:30:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1888,
    'CHECKIN',
    '7',
    '2023-02-02 09:46:17',
    '2023-02-01 21:16:17',
    '2023-02-02 09:46:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1889,
    'CHECKIN',
    '11',
    '2023-02-02 09:50:13',
    '2023-02-01 21:20:13',
    '2023-02-02 09:50:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1890,
    'BREAKIN',
    '7',
    '2023-02-02 12:43:00',
    '2023-02-02 00:13:00',
    '2023-02-02 12:43:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1891,
    'BREAKIN',
    '4',
    '2023-02-02 12:43:00',
    '2023-02-02 00:13:00',
    '2023-02-02 12:43:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1892,
    'BREAKOUT',
    '7',
    '2023-02-02 13:05:57',
    '2023-02-02 00:35:57',
    '2023-02-02 13:06:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1893,
    'BREAKIN',
    '7',
    '2023-02-02 13:05:59',
    '2023-02-02 00:35:59',
    '2023-02-02 13:06:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1894,
    'BREAKIN',
    '9',
    '2023-02-02 13:06:04',
    '2023-02-02 00:36:04',
    '2023-02-02 13:06:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1895,
    'BREAKIN',
    '11',
    '2023-02-02 13:06:05',
    '2023-02-02 00:36:05',
    '2023-02-02 13:06:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1896,
    'BREAKIN',
    '3',
    '2023-02-02 13:06:22',
    '2023-02-02 00:36:22',
    '2023-02-02 13:06:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1897,
    'BREAKIN',
    '5',
    '2023-02-02 13:07:51',
    '2023-02-02 00:37:51',
    '2023-02-02 13:07:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1898,
    'BREAKIN',
    '10',
    '2023-02-02 13:18:02',
    '2023-02-02 00:48:02',
    '2023-02-02 13:18:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1899,
    'BREAKOUT',
    '4',
    '2023-02-02 13:52:04',
    '2023-02-02 01:22:04',
    '2023-02-02 13:52:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1900,
    'BREAKOUT',
    '9',
    '2023-02-02 13:56:02',
    '2023-02-02 01:26:02',
    '2023-02-02 13:56:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1901,
    'BREAKOUT',
    '11',
    '2023-02-02 13:56:11',
    '2023-02-02 01:26:11',
    '2023-02-02 13:56:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1902,
    'BREAKOUT',
    '10',
    '2023-02-02 14:04:27',
    '2023-02-02 01:34:27',
    '2023-02-02 14:04:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1903,
    'BREAKOUT',
    '5',
    '2023-02-02 14:09:03',
    '2023-02-02 01:39:03',
    '2023-02-02 14:09:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1904,
    'BREAKOUT',
    '7',
    '2023-02-02 14:12:05',
    '2023-02-02 01:42:05',
    '2023-02-02 14:12:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1905,
    'BREAKOUT',
    '3',
    '2023-02-02 14:13:01',
    '2023-02-02 01:43:01',
    '2023-02-02 14:13:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1906,
    'BREAKIN',
    '4',
    '2023-02-02 17:17:23',
    '2023-02-02 04:47:23',
    '2023-02-02 17:17:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1907,
    'BREAKIN',
    '11',
    '2023-02-02 17:23:08',
    '2023-02-02 04:53:08',
    '2023-02-02 17:23:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1908,
    'BREAKIN',
    '9',
    '2023-02-02 17:23:08',
    '2023-02-02 04:53:08',
    '2023-02-02 17:23:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1909,
    'BREAKIN',
    '10',
    '2023-02-02 17:23:10',
    '2023-02-02 04:53:10',
    '2023-02-02 17:23:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1910,
    'BREAKOUT',
    '4',
    '2023-02-02 17:33:33',
    '2023-02-02 05:03:33',
    '2023-02-02 17:33:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1911,
    'BREAKOUT',
    '10',
    '2023-02-02 17:37:36',
    '2023-02-02 05:07:36',
    '2023-02-02 17:37:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1912,
    'BREAKOUT',
    '11',
    '2023-02-02 17:37:53',
    '2023-02-02 05:07:53',
    '2023-02-02 17:37:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1913,
    'BREAKOUT',
    '9',
    '2023-02-02 17:38:07',
    '2023-02-02 05:08:07',
    '2023-02-02 17:38:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1914,
    'CHECKOUT',
    '3',
    '2023-02-02 18:40:45',
    '2023-02-02 06:10:45',
    '2023-02-02 18:40:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1915,
    'CHECKOUT',
    '10',
    '2023-02-02 18:44:10',
    '2023-02-02 06:14:10',
    '2023-02-02 18:44:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1916,
    'CHECKOUT',
    '9',
    '2023-02-02 18:47:04',
    '2023-02-02 06:17:04',
    '2023-02-02 18:47:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1917,
    'CHECKOUT',
    '4',
    '2023-02-02 18:50:18',
    '2023-02-02 06:20:18',
    '2023-02-02 18:50:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1918,
    'BREAKIN',
    '5',
    '2023-02-02 18:54:43',
    '2023-02-02 06:24:43',
    '2023-02-02 18:54:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1919,
    'BREAKOUT',
    '5',
    '2023-02-02 18:54:45',
    '2023-02-02 06:24:45',
    '2023-02-02 18:54:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1920,
    'CHECKOUT',
    '5',
    '2023-02-02 18:54:46',
    '2023-02-02 06:24:46',
    '2023-02-02 18:54:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1921,
    'CHECKOUT',
    '7',
    '2023-02-02 18:55:20',
    '2023-02-02 06:25:20',
    '2023-02-02 18:55:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1922,
    'CHECKOUT',
    '11',
    '2023-02-02 19:14:59',
    '2023-02-02 06:44:59',
    '2023-02-02 19:14:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1923,
    'CHECKIN',
    '3',
    '2023-02-03 09:08:09',
    '2023-02-02 20:38:09',
    '2023-02-03 09:08:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1924,
    'CHECKIN',
    '5',
    '2023-02-03 09:12:25',
    '2023-02-02 20:42:25',
    '2023-02-03 09:12:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1925,
    'BREAKIN',
    '5',
    '2023-02-03 09:12:25',
    '2023-02-02 20:42:25',
    '2023-02-03 09:12:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1926,
    'BREAKOUT',
    '5',
    '2023-02-03 09:12:26',
    '2023-02-02 20:42:26',
    '2023-02-03 09:12:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1927,
    'BREAKIN',
    '5',
    '2023-02-03 09:12:27',
    '2023-02-02 20:42:27',
    '2023-02-03 09:12:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1928,
    'BREAKOUT',
    '5',
    '2023-02-03 09:12:28',
    '2023-02-02 20:42:28',
    '2023-02-03 09:12:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1929,
    'CHECKIN',
    '7',
    '2023-02-03 09:38:30',
    '2023-02-02 21:08:30',
    '2023-02-03 09:38:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1930,
    'CHECKIN',
    '9',
    '2023-02-03 09:38:52',
    '2023-02-02 21:08:52',
    '2023-02-03 09:38:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1931,
    'CHECKIN',
    '10',
    '2023-02-03 09:40:22',
    '2023-02-02 21:10:22',
    '2023-02-03 09:40:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1932,
    'CHECKIN',
    '11',
    '2023-02-03 09:44:38',
    '2023-02-02 21:14:38',
    '2023-02-03 09:44:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1933,
    'CHECKIN',
    '4',
    '2023-02-03 10:10:40',
    '2023-02-02 21:40:40',
    '2023-02-03 10:11:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1934,
    'BREAKIN',
    '7',
    '2023-02-03 11:25:54',
    '2023-02-02 22:55:54',
    '2023-02-03 11:26:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1935,
    'BREAKOUT',
    '7',
    '2023-02-03 11:29:02',
    '2023-02-02 22:59:02',
    '2023-02-03 11:29:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1936,
    'BREAKIN',
    '7',
    '2023-02-03 12:30:13',
    '2023-02-03 00:00:13',
    '2023-02-03 12:30:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1937,
    'BREAKIN',
    '10',
    '2023-02-03 12:33:25',
    '2023-02-03 00:03:25',
    '2023-02-03 12:33:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1938,
    'BREAKOUT',
    '7',
    '2023-02-03 12:34:46',
    '2023-02-03 00:04:46',
    '2023-02-03 12:34:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1939,
    'BREAKIN',
    '9',
    '2023-02-03 13:02:45',
    '2023-02-03 00:32:45',
    '2023-02-03 13:02:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1940,
    'BREAKIN',
    '4',
    '2023-02-03 13:03:23',
    '2023-02-03 00:33:23',
    '2023-02-03 13:03:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1941,
    'BREAKIN',
    '11',
    '2023-02-03 13:03:48',
    '2023-02-03 00:33:48',
    '2023-02-03 13:03:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1942,
    'BREAKIN',
    '7',
    '2023-02-03 13:04:14',
    '2023-02-03 00:34:14',
    '2023-02-03 13:04:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1943,
    'BREAKIN',
    '3',
    '2023-02-03 13:04:27',
    '2023-02-03 00:34:27',
    '2023-02-03 13:04:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1944,
    'BREAKIN',
    '5',
    '2023-02-03 13:05:54',
    '2023-02-03 00:35:54',
    '2023-02-03 13:06:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1945,
    'BREAKOUT',
    '10',
    '2023-02-03 13:48:38',
    '2023-02-03 01:18:38',
    '2023-02-03 13:48:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1946,
    'BREAKOUT',
    '11',
    '2023-02-03 13:51:44',
    '2023-02-03 01:21:44',
    '2023-02-03 13:51:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1947,
    'BREAKOUT',
    '9',
    '2023-02-03 13:53:30',
    '2023-02-03 01:23:30',
    '2023-02-03 13:53:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1948,
    'BREAKOUT',
    '4',
    '2023-02-03 13:57:54',
    '2023-02-03 01:27:54',
    '2023-02-03 13:58:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1949,
    'BREAKOUT',
    '3',
    '2023-02-03 14:08:26',
    '2023-02-03 01:38:26',
    '2023-02-03 14:08:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1950,
    'BREAKOUT',
    '5',
    '2023-02-03 14:08:29',
    '2023-02-03 01:38:29',
    '2023-02-03 14:08:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1951,
    'BREAKOUT',
    '7',
    '2023-02-03 14:11:14',
    '2023-02-03 01:41:14',
    '2023-02-03 14:11:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1952,
    'BREAKIN',
    '10',
    '2023-02-03 17:22:23',
    '2023-02-03 04:52:23',
    '2023-02-03 17:22:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1953,
    'BREAKIN',
    '11',
    '2023-02-03 17:22:23',
    '2023-02-03 04:52:23',
    '2023-02-03 17:22:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1954,
    'BREAKIN',
    '4',
    '2023-02-03 17:25:39',
    '2023-02-03 04:55:39',
    '2023-02-03 17:26:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1955,
    'BREAKOUT',
    '10',
    '2023-02-03 17:50:01',
    '2023-02-03 05:20:01',
    '2023-02-03 17:50:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1956,
    'BREAKOUT',
    '11',
    '2023-02-03 17:50:02',
    '2023-02-03 05:20:02',
    '2023-02-03 17:50:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1957,
    'BREAKOUT',
    '4',
    '2023-02-03 18:26:03',
    '2023-02-03 05:56:03',
    '2023-02-03 18:26:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1958,
    'CHECKOUT',
    '3',
    '2023-02-03 18:58:11',
    '2023-02-03 06:28:11',
    '2023-02-03 18:58:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1959,
    'CHECKOUT',
    '10',
    '2023-02-03 19:15:43',
    '2023-02-03 06:45:43',
    '2023-02-03 19:15:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1960,
    'CHECKOUT',
    '5',
    '2023-02-03 19:16:03',
    '2023-02-03 06:46:03',
    '2023-02-03 19:16:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1961,
    'CHECKOUT',
    '7',
    '2023-02-03 19:16:41',
    '2023-02-03 06:46:41',
    '2023-02-03 19:16:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1962,
    'CHECKOUT',
    '9',
    '2023-02-03 19:16:43',
    '2023-02-03 06:46:43',
    '2023-02-03 19:16:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1963,
    'CHECKOUT',
    '11',
    '2023-02-03 19:28:48',
    '2023-02-03 06:58:48',
    '2023-02-03 19:28:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1964,
    'CHECKOUT',
    '4',
    '2023-02-03 20:17:20',
    '2023-02-03 07:47:20',
    '2023-02-03 20:17:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1965,
    'CHECKIN',
    '5',
    '2023-02-06 09:18:32',
    '2023-02-05 20:48:32',
    '2023-02-06 09:18:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1966,
    'CHECKIN',
    '3',
    '2023-02-06 09:18:36',
    '2023-02-05 20:48:36',
    '2023-02-06 09:18:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1967,
    'CHECKIN',
    '10',
    '2023-02-06 09:24:30',
    '2023-02-05 20:54:30',
    '2023-02-06 09:24:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1968,
    'CHECKIN',
    '7',
    '2023-02-06 09:35:35',
    '2023-02-05 21:05:35',
    '2023-02-06 09:35:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1969,
    'CHECKIN',
    '4',
    '2023-02-06 09:36:29',
    '2023-02-05 21:06:29',
    '2023-02-06 09:36:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1970,
    'CHECKIN',
    '11',
    '2023-02-06 09:52:29',
    '2023-02-05 21:22:29',
    '2023-02-06 09:52:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1971,
    'BREAKIN',
    '7',
    '2023-02-06 11:31:39',
    '2023-02-05 23:01:39',
    '2023-02-06 11:31:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1972,
    'BREAKOUT',
    '7',
    '2023-02-06 11:35:30',
    '2023-02-05 23:05:30',
    '2023-02-06 11:35:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1973,
    'BREAKIN',
    '4',
    '2023-02-06 13:12:44',
    '2023-02-06 00:42:44',
    '2023-02-06 13:12:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1974,
    'BREAKIN',
    '5',
    '2023-02-06 13:13:06',
    '2023-02-06 00:43:06',
    '2023-02-06 13:13:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1975,
    'BREAKIN',
    '10',
    '2023-02-06 13:14:01',
    '2023-02-06 00:44:01',
    '2023-02-06 13:14:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1976,
    'BREAKIN',
    '7',
    '2023-02-06 13:14:03',
    '2023-02-06 00:44:03',
    '2023-02-06 13:14:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1977,
    'BREAKIN',
    '11',
    '2023-02-06 13:14:20',
    '2023-02-06 00:44:20',
    '2023-02-06 13:14:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1978,
    'BREAKIN',
    '3',
    '2023-02-06 13:22:02',
    '2023-02-06 00:52:02',
    '2023-02-06 13:22:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1979,
    'BREAKOUT',
    '10',
    '2023-02-06 13:57:26',
    '2023-02-06 01:27:26',
    '2023-02-06 13:57:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1980,
    'BREAKOUT',
    '11',
    '2023-02-06 13:57:32',
    '2023-02-06 01:27:32',
    '2023-02-06 13:57:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1981,
    'BREAKOUT',
    '4',
    '2023-02-06 14:08:55',
    '2023-02-06 01:38:55',
    '2023-02-06 14:08:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1982,
    'BREAKOUT',
    '5',
    '2023-02-06 14:09:07',
    '2023-02-06 01:39:07',
    '2023-02-06 14:09:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1983,
    'BREAKOUT',
    '3',
    '2023-02-06 14:11:27',
    '2023-02-06 01:41:27',
    '2023-02-06 14:11:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1984,
    'BREAKOUT',
    '7',
    '2023-02-06 14:13:01',
    '2023-02-06 01:43:01',
    '2023-02-06 14:13:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1985,
    'BREAKIN',
    '4',
    '2023-02-06 17:15:00',
    '2023-02-06 04:45:00',
    '2023-02-06 17:15:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1986,
    'BREAKOUT',
    '4',
    '2023-02-06 17:29:58',
    '2023-02-06 04:59:58',
    '2023-02-06 17:29:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1987,
    'CHECKOUT',
    '4',
    '2023-02-06 18:51:12',
    '2023-02-06 06:21:12',
    '2023-02-06 18:51:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1988,
    'CHECKOUT',
    '3',
    '2023-02-06 18:52:06',
    '2023-02-06 06:22:06',
    '2023-02-06 18:52:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1989,
    'CHECKOUT',
    '5',
    '2023-02-06 18:52:21',
    '2023-02-06 06:22:21',
    '2023-02-06 18:52:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1990,
    'CHECKOUT',
    '10',
    '2023-02-06 18:57:10',
    '2023-02-06 06:27:10',
    '2023-02-06 18:57:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1991,
    'CHECKOUT',
    '11',
    '2023-02-06 19:00:56',
    '2023-02-06 06:30:56',
    '2023-02-06 19:00:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1992,
    'CHECKOUT',
    '7',
    '2023-02-06 19:25:06',
    '2023-02-06 06:55:06',
    '2023-02-06 19:25:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1993,
    'CHECKIN',
    '3',
    '2023-02-07 09:15:43',
    '2023-02-06 20:45:43',
    '2023-02-07 09:15:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1994,
    'CHECKIN',
    '10',
    '2023-02-07 09:41:01',
    '2023-02-06 21:11:01',
    '2023-02-07 09:41:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1995,
    'CHECKIN',
    '5',
    '2023-02-07 09:41:49',
    '2023-02-06 21:11:49',
    '2023-02-07 09:41:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1996,
    'CHECKIN',
    '9',
    '2023-02-07 09:45:13',
    '2023-02-06 21:15:13',
    '2023-02-07 09:45:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1997,
    'CHECKIN',
    '11',
    '2023-02-07 09:51:18',
    '2023-02-06 21:21:18',
    '2023-02-07 09:51:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1998,
    'CHECKIN',
    '7',
    '2023-02-07 09:52:58',
    '2023-02-06 21:22:58',
    '2023-02-07 09:52:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    1999,
    'CHECKIN',
    '4',
    '2023-02-07 10:05:34',
    '2023-02-06 21:35:34',
    '2023-02-07 10:05:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2000,
    'BREAKIN',
    '9',
    '2023-02-07 13:15:17',
    '2023-02-07 00:45:17',
    '2023-02-07 13:15:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2001,
    'BREAKIN',
    '4',
    '2023-02-07 13:15:28',
    '2023-02-07 00:45:28',
    '2023-02-07 13:15:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2002,
    'BREAKIN',
    '11',
    '2023-02-07 13:16:19',
    '2023-02-07 00:46:19',
    '2023-02-07 13:16:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2003,
    'BREAKIN',
    '5',
    '2023-02-07 13:16:25',
    '2023-02-07 00:46:25',
    '2023-02-07 13:16:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2004,
    'BREAKIN',
    '7',
    '2023-02-07 13:17:19',
    '2023-02-07 00:47:19',
    '2023-02-07 13:17:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2005,
    'BREAKIN',
    '3',
    '2023-02-07 13:18:19',
    '2023-02-07 00:48:19',
    '2023-02-07 13:18:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2006,
    'BREAKIN',
    '10',
    '2023-02-07 13:34:13',
    '2023-02-07 01:04:13',
    '2023-02-07 13:34:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2007,
    'BREAKOUT',
    '9',
    '2023-02-07 14:04:45',
    '2023-02-07 01:34:45',
    '2023-02-07 14:04:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2008,
    'BREAKOUT',
    '11',
    '2023-02-07 14:05:39',
    '2023-02-07 01:35:39',
    '2023-02-07 14:05:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2009,
    'BREAKOUT',
    '10',
    '2023-02-07 14:06:04',
    '2023-02-07 01:36:04',
    '2023-02-07 14:06:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2010,
    'BREAKOUT',
    '7',
    '2023-02-07 14:07:13',
    '2023-02-07 01:37:13',
    '2023-02-07 14:07:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2011,
    'BREAKOUT',
    '3',
    '2023-02-07 14:08:16',
    '2023-02-07 01:38:16',
    '2023-02-07 14:08:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2012,
    'BREAKOUT',
    '5',
    '2023-02-07 14:10:32',
    '2023-02-07 01:40:32',
    '2023-02-07 14:10:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2013,
    'BREAKOUT',
    '4',
    '2023-02-07 14:13:03',
    '2023-02-07 01:43:03',
    '2023-02-07 14:13:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2014,
    'BREAKIN',
    '4',
    '2023-02-07 17:16:47',
    '2023-02-07 04:46:47',
    '2023-02-07 17:16:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2015,
    'BREAKOUT',
    '4',
    '2023-02-07 17:27:48',
    '2023-02-07 04:57:48',
    '2023-02-07 17:27:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2016,
    'CHECKOUT',
    '3',
    '2023-02-07 18:53:19',
    '2023-02-07 06:23:19',
    '2023-02-07 18:53:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2017,
    'CHECKOUT',
    '10',
    '2023-02-07 18:55:38',
    '2023-02-07 06:25:38',
    '2023-02-07 18:55:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2018,
    'CHECKOUT',
    '5',
    '2023-02-07 18:56:02',
    '2023-02-07 06:26:02',
    '2023-02-07 18:56:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2019,
    'CHECKOUT',
    '9',
    '2023-02-07 18:56:49',
    '2023-02-07 06:26:49',
    '2023-02-07 18:56:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2020,
    'CHECKOUT',
    '11',
    '2023-02-07 19:04:10',
    '2023-02-07 06:34:10',
    '2023-02-07 19:04:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2021,
    'CHECKOUT',
    '7',
    '2023-02-07 19:07:32',
    '2023-02-07 06:37:32',
    '2023-02-07 19:07:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2022,
    'CHECKOUT',
    '4',
    '2023-02-07 19:12:15',
    '2023-02-07 06:42:15',
    '2023-02-07 19:12:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2023,
    'CHECKIN',
    '3',
    '2023-02-08 09:17:18',
    '2023-02-07 20:47:18',
    '2023-02-08 09:17:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2024,
    'CHECKIN',
    '5',
    '2023-02-08 09:17:25',
    '2023-02-07 20:47:25',
    '2023-02-08 09:17:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2025,
    'CHECKIN',
    '9',
    '2023-02-08 09:31:09',
    '2023-02-07 21:01:09',
    '2023-02-08 09:31:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2026,
    'CHECKIN',
    '10',
    '2023-02-08 09:31:36',
    '2023-02-07 21:01:36',
    '2023-02-08 09:31:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2027,
    'CHECKIN',
    '11',
    '2023-02-08 10:00:02',
    '2023-02-07 21:30:02',
    '2023-02-08 10:00:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2028,
    'CHECKIN',
    '4',
    '2023-02-08 10:00:09',
    '2023-02-07 21:30:09',
    '2023-02-08 10:00:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2029,
    'CHECKIN',
    '7',
    '2023-02-08 10:03:52',
    '2023-02-07 21:33:52',
    '2023-02-08 10:03:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2030,
    'BREAKIN',
    '11',
    '2023-02-08 13:18:39',
    '2023-02-08 00:48:39',
    '2023-02-08 13:18:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2031,
    'BREAKIN',
    '7',
    '2023-02-08 13:18:50',
    '2023-02-08 00:48:50',
    '2023-02-08 13:18:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2032,
    'BREAKIN',
    '9',
    '2023-02-08 13:18:53',
    '2023-02-08 00:48:53',
    '2023-02-08 13:18:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2033,
    'BREAKIN',
    '4',
    '2023-02-08 13:18:59',
    '2023-02-08 00:48:59',
    '2023-02-08 13:18:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2034,
    'BREAKIN',
    '5',
    '2023-02-08 13:19:55',
    '2023-02-08 00:49:55',
    '2023-02-08 13:19:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2035,
    'BREAKIN',
    '3',
    '2023-02-08 13:22:14',
    '2023-02-08 00:52:14',
    '2023-02-08 13:22:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2036,
    'BREAKIN',
    '10',
    '2023-02-08 13:25:58',
    '2023-02-08 00:55:58',
    '2023-02-08 13:25:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2037,
    'BREAKOUT',
    '5',
    '2023-02-08 14:01:39',
    '2023-02-08 01:31:39',
    '2023-02-08 14:01:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2038,
    'BREAKOUT',
    '9',
    '2023-02-08 14:02:48',
    '2023-02-08 01:32:48',
    '2023-02-08 14:02:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2039,
    'BREAKOUT',
    '4',
    '2023-02-08 14:02:54',
    '2023-02-08 01:32:54',
    '2023-02-08 14:02:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2040,
    'BREAKOUT',
    '11',
    '2023-02-08 14:03:31',
    '2023-02-08 01:33:31',
    '2023-02-08 14:03:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2041,
    'BREAKOUT',
    '7',
    '2023-02-08 14:03:36',
    '2023-02-08 01:33:36',
    '2023-02-08 14:03:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2042,
    'BREAKOUT',
    '3',
    '2023-02-08 14:05:26',
    '2023-02-08 01:35:26',
    '2023-02-08 14:05:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2043,
    'BREAKOUT',
    '10',
    '2023-02-08 14:36:09',
    '2023-02-08 02:06:09',
    '2023-02-08 14:36:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2044,
    'CHECKOUT',
    '11',
    '2023-02-08 18:55:23',
    '2023-02-08 06:25:23',
    '2023-02-08 18:55:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2045,
    'CHECKOUT',
    '10',
    '2023-02-08 18:56:10',
    '2023-02-08 06:26:10',
    '2023-02-08 18:56:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2046,
    'CHECKOUT',
    '9',
    '2023-02-08 18:57:59',
    '2023-02-08 06:27:59',
    '2023-02-08 18:57:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2047,
    'CHECKOUT',
    '3',
    '2023-02-08 19:06:46',
    '2023-02-08 06:36:46',
    '2023-02-08 19:06:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2048,
    'CHECKOUT',
    '7',
    '2023-02-08 19:23:23',
    '2023-02-08 06:53:23',
    '2023-02-08 19:23:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2049,
    'CHECKOUT',
    '5',
    '2023-02-08 19:31:44',
    '2023-02-08 07:01:44',
    '2023-02-08 19:31:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2050,
    'CHECKIN',
    '3',
    '2023-02-09 09:14:03',
    '2023-02-08 20:44:03',
    '2023-02-09 09:14:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2051,
    'CHECKIN',
    '9',
    '2023-02-09 09:27:48',
    '2023-02-08 20:57:48',
    '2023-02-09 09:27:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2052,
    'CHECKIN',
    '10',
    '2023-02-09 09:28:00',
    '2023-02-08 20:58:00',
    '2023-02-09 09:28:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2053,
    'CHECKIN',
    '11',
    '2023-02-09 09:38:48',
    '2023-02-08 21:08:48',
    '2023-02-09 09:38:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2054,
    'CHECKIN',
    '5',
    '2023-02-09 09:41:52',
    '2023-02-08 21:11:52',
    '2023-02-09 09:41:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2055,
    'CHECKIN',
    '4',
    '2023-02-09 10:02:11',
    '2023-02-08 21:32:11',
    '2023-02-09 10:02:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2056,
    'CHECKIN',
    '4',
    '2023-02-09 10:02:11',
    '2023-02-08 21:32:11',
    '2023-02-09 10:02:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2057,
    'CHECKIN',
    '7',
    '2023-02-09 10:02:55',
    '2023-02-08 21:32:55',
    '2023-02-09 10:02:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2058,
    'BREAKIN',
    '4',
    '2023-02-09 12:43:28',
    '2023-02-09 00:13:28',
    '2023-02-09 12:43:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2059,
    'BREAKIN',
    '9',
    '2023-02-09 12:50:40',
    '2023-02-09 00:20:40',
    '2023-02-09 12:50:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2060,
    'BREAKIN',
    '11',
    '2023-02-09 12:50:44',
    '2023-02-09 00:20:44',
    '2023-02-09 12:50:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2061,
    'BREAKIN',
    '3',
    '2023-02-09 13:05:05',
    '2023-02-09 00:35:05',
    '2023-02-09 13:05:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2062,
    'BREAKOUT',
    '3',
    '2023-02-09 13:07:06',
    '2023-02-09 00:37:06',
    '2023-02-09 13:07:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2063,
    'BREAKIN',
    '5',
    '2023-02-09 13:12:23',
    '2023-02-09 00:42:23',
    '2023-02-09 13:12:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2064,
    'BREAKOUT',
    '11',
    '2023-02-09 13:13:24',
    '2023-02-09 00:43:24',
    '2023-02-09 13:13:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2065,
    'BREAKIN',
    '7',
    '2023-02-09 13:13:43',
    '2023-02-09 00:43:43',
    '2023-02-09 13:13:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2066,
    'BREAKIN',
    '10',
    '2023-02-09 13:14:08',
    '2023-02-09 00:44:08',
    '2023-02-09 13:14:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2067,
    'BREAKIN',
    '11',
    '2023-02-09 13:20:45',
    '2023-02-09 00:50:45',
    '2023-02-09 13:20:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2068,
    'BREAKOUT',
    '11',
    '2023-02-09 13:37:11',
    '2023-02-09 01:07:11',
    '2023-02-09 13:37:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2069,
    'BREAKOUT',
    '10',
    '2023-02-09 13:55:12',
    '2023-02-09 01:25:12',
    '2023-02-09 13:55:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2070,
    'BREAKOUT',
    '5',
    '2023-02-09 14:07:26',
    '2023-02-09 01:37:26',
    '2023-02-09 14:07:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2071,
    'BREAKOUT',
    '4',
    '2023-02-09 14:08:29',
    '2023-02-09 01:38:29',
    '2023-02-09 14:08:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2072,
    'BREAKOUT',
    '7',
    '2023-02-09 14:08:33',
    '2023-02-09 01:38:33',
    '2023-02-09 14:08:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2073,
    'BREAKOUT',
    '9',
    '2023-02-09 16:11:49',
    '2023-02-09 03:41:49',
    '2023-02-09 16:11:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2074,
    'BREAKIN',
    '4',
    '2023-02-09 17:07:46',
    '2023-02-09 04:37:46',
    '2023-02-09 17:07:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2075,
    'BREAKOUT',
    '4',
    '2023-02-09 17:25:18',
    '2023-02-09 04:55:18',
    '2023-02-09 17:25:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2076,
    'CHECKOUT',
    '11',
    '2023-02-09 18:20:13',
    '2023-02-09 05:50:13',
    '2023-02-09 18:20:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2077,
    'CHECKOUT',
    '10',
    '2023-02-09 18:40:28',
    '2023-02-09 06:10:28',
    '2023-02-09 18:40:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2078,
    'CHECKOUT',
    '9',
    '2023-02-09 18:42:42',
    '2023-02-09 06:12:42',
    '2023-02-09 18:42:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2079,
    'CHECKOUT',
    '3',
    '2023-02-09 19:00:04',
    '2023-02-09 06:30:04',
    '2023-02-09 19:00:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2080,
    'CHECKOUT',
    '4',
    '2023-02-09 19:40:41',
    '2023-02-09 07:10:41',
    '2023-02-09 19:40:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2081,
    'CHECKOUT',
    '5',
    '2023-02-09 19:40:56',
    '2023-02-09 07:10:56',
    '2023-02-09 19:40:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2082,
    'CHECKOUT',
    '7',
    '2023-02-09 19:41:26',
    '2023-02-09 07:11:26',
    '2023-02-09 19:41:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2083,
    'CHECKIN',
    '3',
    '2023-02-10 09:12:40',
    '2023-02-09 20:42:40',
    '2023-02-10 09:12:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2084,
    'CHECKIN',
    '5',
    '2023-02-10 09:21:25',
    '2023-02-09 20:51:25',
    '2023-02-10 09:21:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2085,
    'CHECKIN',
    '9',
    '2023-02-10 10:00:00',
    '2023-02-09 21:30:00',
    '2023-02-10 10:00:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2086,
    'CHECKIN',
    '10',
    '2023-02-10 10:00:37',
    '2023-02-09 21:30:37',
    '2023-02-10 10:00:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2087,
    'CHECKIN',
    '7',
    '2023-02-10 10:01:39',
    '2023-02-09 21:31:39',
    '2023-02-10 10:01:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2088,
    'BREAKIN',
    '3',
    '2023-02-10 13:02:10',
    '2023-02-10 00:32:10',
    '2023-02-10 13:02:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2089,
    'BREAKIN',
    '7',
    '2023-02-10 13:11:20',
    '2023-02-10 00:41:20',
    '2023-02-10 13:11:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2090,
    'BREAKIN',
    '9',
    '2023-02-10 13:12:09',
    '2023-02-10 00:42:09',
    '2023-02-10 13:12:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2091,
    'BREAKIN',
    '5',
    '2023-02-10 13:18:21',
    '2023-02-10 00:48:21',
    '2023-02-10 13:18:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2092,
    'BREAKIN',
    '10',
    '2023-02-10 13:20:28',
    '2023-02-10 00:50:28',
    '2023-02-10 13:20:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2093,
    'BREAKOUT',
    '10',
    '2023-02-10 14:07:19',
    '2023-02-10 01:37:19',
    '2023-02-10 14:07:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2094,
    'BREAKOUT',
    '5',
    '2023-02-10 14:07:21',
    '2023-02-10 01:37:21',
    '2023-02-10 14:07:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2095,
    'BREAKOUT',
    '5',
    '2023-02-10 14:07:21',
    '2023-02-10 01:37:21',
    '2023-02-10 14:07:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2096,
    'BREAKOUT',
    '9',
    '2023-02-10 14:07:38',
    '2023-02-10 01:37:38',
    '2023-02-10 14:07:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2097,
    'BREAKOUT',
    '7',
    '2023-02-10 14:10:44',
    '2023-02-10 01:40:44',
    '2023-02-10 14:10:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2098,
    'BREAKOUT',
    '3',
    '2023-02-10 14:12:12',
    '2023-02-10 01:42:12',
    '2023-02-10 14:12:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2099,
    'CHECKOUT',
    '10',
    '2023-02-10 18:49:30',
    '2023-02-10 06:19:30',
    '2023-02-10 18:49:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2100,
    'CHECKOUT',
    '9',
    '2023-02-10 18:49:42',
    '2023-02-10 06:19:42',
    '2023-02-10 18:49:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2101,
    'CHECKOUT',
    '3',
    '2023-02-10 19:08:05',
    '2023-02-10 06:38:05',
    '2023-02-10 19:08:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2102,
    'CHECKOUT',
    '5',
    '2023-02-10 19:09:08',
    '2023-02-10 06:39:08',
    '2023-02-10 19:09:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2103,
    'CHECKOUT',
    '7',
    '2023-02-10 19:23:57',
    '2023-02-10 06:53:57',
    '2023-02-10 19:23:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2104,
    'CHECKIN',
    '3',
    '2023-02-11 08:59:10',
    '2023-02-10 20:29:10',
    '2023-02-11 08:59:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2105,
    'CHECKIN',
    '5',
    '2023-02-11 09:19:30',
    '2023-02-10 20:49:30',
    '2023-02-11 09:19:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2106,
    'CHECKIN',
    '9',
    '2023-02-11 09:24:46',
    '2023-02-10 20:54:46',
    '2023-02-11 09:24:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2107,
    'CHECKIN',
    '10',
    '2023-02-11 09:25:06',
    '2023-02-10 20:55:06',
    '2023-02-11 09:25:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2108,
    'CHECKIN',
    '7',
    '2023-02-11 10:03:49',
    '2023-02-10 21:33:49',
    '2023-02-11 10:03:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2109,
    'BREAKIN',
    '3',
    '2023-02-11 12:36:34',
    '2023-02-11 00:06:34',
    '2023-02-11 12:36:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2110,
    'BREAKIN',
    '5',
    '2023-02-11 13:11:56',
    '2023-02-11 00:41:56',
    '2023-02-11 13:11:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2111,
    'BREAKIN',
    '9',
    '2023-02-11 13:12:02',
    '2023-02-11 00:42:02',
    '2023-02-11 13:12:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2112,
    'BREAKIN',
    '7',
    '2023-02-11 13:12:26',
    '2023-02-11 00:42:26',
    '2023-02-11 13:12:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2113,
    'BREAKIN',
    '10',
    '2023-02-11 13:12:45',
    '2023-02-11 00:42:45',
    '2023-02-11 13:12:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2114,
    'BREAKOUT',
    '3',
    '2023-02-11 13:37:31',
    '2023-02-11 01:07:31',
    '2023-02-11 13:37:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2115,
    'BREAKOUT',
    '5',
    '2023-02-11 13:44:51',
    '2023-02-11 01:14:51',
    '2023-02-11 13:44:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2116,
    'BREAKOUT',
    '10',
    '2023-02-11 13:47:10',
    '2023-02-11 01:17:10',
    '2023-02-11 13:47:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2117,
    'BREAKOUT',
    '9',
    '2023-02-11 13:48:41',
    '2023-02-11 01:18:41',
    '2023-02-11 13:48:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2118,
    'BREAKOUT',
    '7',
    '2023-02-11 13:51:34',
    '2023-02-11 01:21:34',
    '2023-02-11 13:51:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2119,
    'CHECKOUT',
    '3',
    '2023-02-11 18:26:43',
    '2023-02-11 05:56:43',
    '2023-02-11 18:26:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2120,
    'CHECKOUT',
    '9',
    '2023-02-11 18:35:49',
    '2023-02-11 06:05:49',
    '2023-02-11 18:35:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2121,
    'CHECKOUT',
    '7',
    '2023-02-11 18:39:50',
    '2023-02-11 06:09:50',
    '2023-02-11 18:39:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2122,
    'CHECKOUT',
    '10',
    '2023-02-11 18:40:00',
    '2023-02-11 06:10:00',
    '2023-02-11 18:40:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2123,
    'CHECKOUT',
    '5',
    '2023-02-11 18:40:04',
    '2023-02-11 06:10:04',
    '2023-02-11 18:40:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2124,
    'CHECKIN',
    '5',
    '2023-02-13 09:13:46',
    '2023-02-12 20:43:46',
    '2023-02-13 09:13:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2125,
    'CHECKIN',
    '3',
    '2023-02-13 09:14:10',
    '2023-02-12 20:44:10',
    '2023-02-13 09:14:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2126,
    'CHECKIN',
    '10',
    '2023-02-13 09:38:45',
    '2023-02-12 21:08:45',
    '2023-02-13 09:38:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2127,
    'CHECKIN',
    '7',
    '2023-02-13 09:40:38',
    '2023-02-12 21:10:38',
    '2023-02-13 09:40:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2128,
    'CHECKIN',
    '4',
    '2023-02-13 09:57:29',
    '2023-02-12 21:27:29',
    '2023-02-13 09:57:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2129,
    'CHECKIN',
    '11',
    '2023-02-13 10:04:35',
    '2023-02-12 21:34:35',
    '2023-02-13 10:04:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2130,
    'BREAKIN',
    '10',
    '2023-02-13 12:38:42',
    '2023-02-13 00:08:42',
    '2023-02-13 12:38:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2131,
    'BREAKIN',
    '4',
    '2023-02-13 13:03:40',
    '2023-02-13 00:33:40',
    '2023-02-13 13:03:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2132,
    'BREAKIN',
    '5',
    '2023-02-13 13:03:50',
    '2023-02-13 00:33:50',
    '2023-02-13 13:03:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2133,
    'BREAKIN',
    '11',
    '2023-02-13 13:03:58',
    '2023-02-13 00:33:58',
    '2023-02-13 13:03:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2134,
    'BREAKIN',
    '7',
    '2023-02-13 13:04:01',
    '2023-02-13 00:34:01',
    '2023-02-13 13:04:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2135,
    'BREAKIN',
    '3',
    '2023-02-13 13:17:41',
    '2023-02-13 00:47:41',
    '2023-02-13 13:17:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2136,
    'BREAKOUT',
    '11',
    '2023-02-13 13:38:38',
    '2023-02-13 01:08:38',
    '2023-02-13 13:38:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2137,
    'BREAKOUT',
    '10',
    '2023-02-13 13:48:41',
    '2023-02-13 01:18:41',
    '2023-02-13 13:48:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2138,
    'BREAKOUT',
    '5',
    '2023-02-13 14:01:44',
    '2023-02-13 01:31:44',
    '2023-02-13 14:01:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2139,
    'BREAKOUT',
    '7',
    '2023-02-13 14:02:57',
    '2023-02-13 01:32:57',
    '2023-02-13 14:02:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2140,
    'BREAKOUT',
    '3',
    '2023-02-13 14:05:02',
    '2023-02-13 01:35:02',
    '2023-02-13 14:05:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2141,
    'BREAKOUT',
    '4',
    '2023-02-13 14:08:23',
    '2023-02-13 01:38:23',
    '2023-02-13 14:08:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2142,
    'BREAKIN',
    '4',
    '2023-02-13 17:13:37',
    '2023-02-13 04:43:37',
    '2023-02-13 17:13:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2143,
    'BREAKOUT',
    '4',
    '2023-02-13 17:28:08',
    '2023-02-13 04:58:08',
    '2023-02-13 17:28:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2144,
    'CHECKOUT',
    '11',
    '2023-02-13 18:50:30',
    '2023-02-13 06:20:30',
    '2023-02-13 18:50:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2145,
    'CHECKOUT',
    '3',
    '2023-02-13 19:14:36',
    '2023-02-13 06:44:36',
    '2023-02-13 19:14:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2146,
    'CHECKOUT',
    '10',
    '2023-02-13 19:17:10',
    '2023-02-13 06:47:10',
    '2023-02-13 19:17:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2147,
    'CHECKOUT',
    '4',
    '2023-02-13 19:21:28',
    '2023-02-13 06:51:28',
    '2023-02-13 19:21:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2148,
    'CHECKOUT',
    '7',
    '2023-02-13 19:21:58',
    '2023-02-13 06:51:58',
    '2023-02-13 19:21:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2149,
    'CHECKIN',
    '5',
    '2023-02-14 09:12:47',
    '2023-02-13 20:42:47',
    '2023-02-14 09:12:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2150,
    'CHECKIN',
    '3',
    '2023-02-14 09:12:58',
    '2023-02-13 20:42:58',
    '2023-02-14 09:12:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2151,
    'CHECKIN',
    '10',
    '2023-02-14 09:37:56',
    '2023-02-13 21:07:56',
    '2023-02-14 09:37:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2152,
    'CHECKIN',
    '9',
    '2023-02-14 09:37:58',
    '2023-02-13 21:07:58',
    '2023-02-14 09:37:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2153,
    'CHECKIN',
    '11',
    '2023-02-14 09:45:44',
    '2023-02-13 21:15:44',
    '2023-02-14 09:45:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2154,
    'CHECKIN',
    '4',
    '2023-02-14 09:58:10',
    '2023-02-13 21:28:10',
    '2023-02-14 09:58:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2155,
    'BREAKIN',
    '10',
    '2023-02-14 12:44:39',
    '2023-02-14 00:14:39',
    '2023-02-14 12:44:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2156,
    'BREAKIN',
    '9',
    '2023-02-14 12:57:59',
    '2023-02-14 00:27:59',
    '2023-02-14 12:57:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2157,
    'BREAKIN',
    '5',
    '2023-02-14 12:58:00',
    '2023-02-14 00:28:00',
    '2023-02-14 12:58:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2158,
    'BREAKIN',
    '11',
    '2023-02-14 12:58:10',
    '2023-02-14 00:28:10',
    '2023-02-14 12:58:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2159,
    'BREAKIN',
    '4',
    '2023-02-14 12:58:30',
    '2023-02-14 00:28:30',
    '2023-02-14 12:58:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2160,
    'BREAKOUT',
    '10',
    '2023-02-14 13:13:46',
    '2023-02-14 00:43:46',
    '2023-02-14 13:13:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2161,
    'BREAKIN',
    '3',
    '2023-02-14 13:14:21',
    '2023-02-14 01:37:48',
    '2023-02-14 13:14:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2162,
    'BREAKOUT',
    '11',
    '2023-02-14 13:49:02',
    '2023-02-14 01:19:02',
    '2023-02-14 13:48:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2163,
    'BREAKOUT',
    '9',
    '2023-02-14 13:53:29',
    '2023-02-14 01:23:29',
    '2023-02-14 13:53:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2164,
    'BREAKOUT',
    '4',
    '2023-02-14 14:07:30',
    '2023-02-14 01:37:30',
    '2023-02-14 14:07:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2165,
    'BREAKOUT',
    '3',
    '2023-02-14 14:10:01',
    '2023-02-14 01:40:01',
    '2023-02-14 14:10:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2166,
    'BREAKIN',
    '4',
    '2023-02-14 16:51:39',
    '2023-02-14 04:21:39',
    '2023-02-14 16:51:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2167,
    'BREAKOUT',
    '4',
    '2023-02-14 17:09:14',
    '2023-02-14 04:39:14',
    '2023-02-14 17:09:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2168,
    'CHECKOUT',
    '10',
    '2023-02-14 18:39:48',
    '2023-02-14 06:09:48',
    '2023-02-14 18:39:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2169,
    'CHECKOUT',
    '11',
    '2023-02-14 18:44:36',
    '2023-02-14 06:14:36',
    '2023-02-14 18:44:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2170,
    'CHECKOUT',
    '9',
    '2023-02-14 18:53:26',
    '2023-02-14 06:23:26',
    '2023-02-14 18:53:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2171,
    'CHECKOUT',
    '3',
    '2023-02-14 18:59:01',
    '2023-02-14 06:29:01',
    '2023-02-14 18:59:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2172,
    'BREAKOUT',
    '5',
    '2023-02-14 19:00:01',
    '2023-02-14 06:30:01',
    '2023-02-14 19:00:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2173,
    'CHECKOUT',
    '5',
    '2023-02-14 19:00:05',
    '2023-02-14 06:30:05',
    '2023-02-14 19:00:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2174,
    'CHECKOUT',
    '4',
    '2023-02-14 19:33:37',
    '2023-02-14 07:03:37',
    '2023-02-14 19:33:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2175,
    'CHECKIN',
    '4',
    '2023-02-15 09:30:51',
    '2023-02-14 21:00:51',
    '2023-02-15 09:30:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2176,
    'CHECKIN',
    '5',
    '2023-02-15 09:31:08',
    '2023-02-14 21:01:08',
    '2023-02-15 09:31:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2177,
    'CHECKIN',
    '10',
    '2023-02-15 09:31:12',
    '2023-02-14 21:01:12',
    '2023-02-15 09:31:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2178,
    'CHECKIN',
    '9',
    '2023-02-15 09:31:24',
    '2023-02-14 21:01:24',
    '2023-02-15 09:31:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2179,
    'BREAKIN',
    '5',
    '2023-02-15 09:44:46',
    '2023-02-14 21:14:46',
    '2023-02-15 09:44:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2180,
    'BREAKOUT',
    '5',
    '2023-02-15 09:44:48',
    '2023-02-14 21:14:48',
    '2023-02-15 09:44:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2181,
    'CHECKIN',
    '3',
    '2023-02-15 09:45:05',
    '2023-02-14 21:15:05',
    '2023-02-15 09:45:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2182,
    'CHECKIN',
    '11',
    '2023-02-15 09:45:09',
    '2023-02-14 21:15:09',
    '2023-02-15 09:45:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2183,
    'BREAKIN',
    '10',
    '2023-02-15 12:56:59',
    '2023-02-15 00:26:59',
    '2023-02-15 12:56:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2184,
    'BREAKIN',
    '11',
    '2023-02-15 13:07:25',
    '2023-02-15 00:37:25',
    '2023-02-15 13:07:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2185,
    'BREAKIN',
    '9',
    '2023-02-15 13:07:43',
    '2023-02-15 00:37:43',
    '2023-02-15 13:07:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2186,
    'BREAKIN',
    '4',
    '2023-02-15 13:08:12',
    '2023-02-15 00:38:12',
    '2023-02-15 13:08:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2187,
    'BREAKIN',
    '5',
    '2023-02-15 13:08:33',
    '2023-02-15 00:38:33',
    '2023-02-15 13:08:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2188,
    'BREAKOUT',
    '5',
    '2023-02-15 13:11:49',
    '2023-02-15 00:41:49',
    '2023-02-15 13:11:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2189,
    'BREAKIN',
    '5',
    '2023-02-15 13:11:50',
    '2023-02-15 00:41:50',
    '2023-02-15 13:11:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2190,
    'BREAKIN',
    '3',
    '2023-02-15 13:22:20',
    '2023-02-15 00:54:02',
    '2023-02-15 13:22:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2191,
    'BREAKOUT',
    '10',
    '2023-02-15 13:55:31',
    '2023-02-15 01:25:31',
    '2023-02-15 13:55:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2192,
    'BREAKOUT',
    '11',
    '2023-02-15 13:59:16',
    '2023-02-15 01:29:16',
    '2023-02-15 13:59:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2193,
    'BREAKOUT',
    '9',
    '2023-02-15 13:59:18',
    '2023-02-15 01:29:18',
    '2023-02-15 13:59:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2194,
    'BREAKOUT',
    '3',
    '2023-02-15 14:07:58',
    '2023-02-15 01:37:58',
    '2023-02-15 14:07:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2195,
    'BREAKOUT',
    '5',
    '2023-02-15 14:09:01',
    '2023-02-15 01:39:01',
    '2023-02-15 14:09:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2196,
    'BREAKOUT',
    '4',
    '2023-02-15 14:10:08',
    '2023-02-15 01:40:08',
    '2023-02-15 14:10:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2197,
    'BREAKIN',
    '4',
    '2023-02-15 16:42:54',
    '2023-02-15 04:12:54',
    '2023-02-15 16:42:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2198,
    'BREAKIN',
    '5',
    '2023-02-15 16:43:15',
    '2023-02-15 04:13:15',
    '2023-02-15 16:43:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2199,
    'BREAKOUT',
    '4',
    '2023-02-15 17:00:09',
    '2023-02-15 04:30:09',
    '2023-02-15 17:00:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2200,
    'BREAKOUT',
    '5',
    '2023-02-15 17:05:57',
    '2023-02-15 04:35:57',
    '2023-02-15 17:05:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2201,
    'CHECKOUT',
    '10',
    '2023-02-15 18:49:15',
    '2023-02-15 06:19:15',
    '2023-02-15 18:49:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2202,
    'CHECKOUT',
    '9',
    '2023-02-15 18:50:08',
    '2023-02-15 06:20:08',
    '2023-02-15 18:50:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2203,
    'CHECKOUT',
    '11',
    '2023-02-15 19:06:34',
    '2023-02-15 06:36:34',
    '2023-02-15 19:06:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2204,
    'CHECKOUT',
    '4',
    '2023-02-15 19:08:11',
    '2023-02-15 06:38:11',
    '2023-02-15 19:08:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2205,
    'CHECKOUT',
    '3',
    '2023-02-15 19:13:16',
    '2023-02-15 06:43:16',
    '2023-02-15 19:13:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2206,
    'CHECKOUT',
    '5',
    '2023-02-15 19:15:33',
    '2023-02-15 06:45:33',
    '2023-02-15 19:15:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2207,
    'CHECKIN',
    '3',
    '2023-02-16 09:14:49',
    '2023-02-15 20:44:49',
    '2023-02-16 09:14:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2208,
    'CHECKIN',
    '10',
    '2023-02-16 09:38:25',
    '2023-02-15 21:08:25',
    '2023-02-16 09:38:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2209,
    'CHECKIN',
    '5',
    '2023-02-16 09:38:31',
    '2023-02-15 21:08:31',
    '2023-02-16 09:38:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2210,
    'CHECKIN',
    '11',
    '2023-02-16 09:50:19',
    '2023-02-15 21:20:19',
    '2023-02-16 09:50:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2211,
    'BREAKIN',
    '5',
    '2023-02-16 13:27:15',
    '2023-02-16 00:57:15',
    '2023-02-16 13:27:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2212,
    'BREAKIN',
    '10',
    '2023-02-16 13:27:16',
    '2023-02-16 00:57:16',
    '2023-02-16 13:27:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2213,
    'BREAKIN',
    '11',
    '2023-02-16 13:27:20',
    '2023-02-16 00:57:20',
    '2023-02-16 13:27:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2214,
    'BREAKOUT',
    '5',
    '2023-02-16 14:11:00',
    '2023-02-16 01:41:00',
    '2023-02-16 14:10:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2215,
    'BREAKOUT',
    '10',
    '2023-02-16 14:11:40',
    '2023-02-16 01:41:40',
    '2023-02-16 14:11:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2216,
    'BREAKOUT',
    '11',
    '2023-02-16 14:23:19',
    '2023-02-16 01:53:19',
    '2023-02-16 14:23:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2217,
    'CHECKOUT',
    '11',
    '2023-02-16 18:59:40',
    '2023-02-16 06:29:40',
    '2023-02-16 18:59:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2218,
    'CHECKOUT',
    '10',
    '2023-02-16 19:28:34',
    '2023-02-16 06:58:34',
    '2023-02-16 19:28:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2219,
    'CHECKOUT',
    '5',
    '2023-02-16 19:30:29',
    '2023-02-16 07:00:29',
    '2023-02-16 19:30:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2220,
    'CHECKOUT',
    '3',
    '2023-02-16 20:03:32',
    '2023-02-16 07:33:32',
    '2023-02-16 20:03:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2221,
    'CHECKIN',
    '3',
    '2023-02-17 09:20:15',
    '2023-02-16 20:50:15',
    '2023-02-17 09:20:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2222,
    'CHECKIN',
    '10',
    '2023-02-17 09:22:23',
    '2023-02-16 20:52:23',
    '2023-02-17 09:22:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2223,
    'CHECKIN',
    '5',
    '2023-02-17 09:35:27',
    '2023-02-16 21:05:27',
    '2023-02-17 09:35:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2224,
    'CHECKIN',
    '11',
    '2023-02-17 09:55:19',
    '2023-02-16 21:25:19',
    '2023-02-17 09:55:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2225,
    'BREAKIN',
    '5',
    '2023-02-17 13:06:50',
    '2023-02-17 00:36:50',
    '2023-02-17 13:06:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2226,
    'BREAKIN',
    '11',
    '2023-02-17 13:08:18',
    '2023-02-17 00:38:18',
    '2023-02-17 13:08:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2227,
    'BREAKIN',
    '3',
    '2023-02-17 13:09:42',
    '2023-02-17 00:39:42',
    '2023-02-17 13:09:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2228,
    'BREAKOUT',
    '3',
    '2023-02-17 13:36:53',
    '2023-02-17 01:06:53',
    '2023-02-17 13:36:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2229,
    'BREAKOUT',
    '5',
    '2023-02-17 13:58:19',
    '2023-02-17 01:28:19',
    '2023-02-17 13:58:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2230,
    'BREAKOUT',
    '11',
    '2023-02-17 13:59:47',
    '2023-02-17 01:29:47',
    '2023-02-17 13:59:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2231,
    'BREAKIN',
    '10',
    '2023-02-17 14:00:05',
    '2023-02-17 01:30:05',
    '2023-02-17 14:00:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2232,
    'BREAKOUT',
    '10',
    '2023-02-17 14:00:28',
    '2023-02-17 01:30:28',
    '2023-02-17 14:00:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2233,
    'CHECKOUT',
    '10',
    '2023-02-17 18:45:54',
    '2023-02-17 06:15:54',
    '2023-02-17 18:45:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2234,
    'CHECKOUT',
    '11',
    '2023-02-17 18:50:49',
    '2023-02-17 06:20:49',
    '2023-02-17 18:50:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2235,
    'CHECKOUT',
    '3',
    '2023-02-17 19:14:35',
    '2023-02-17 06:44:35',
    '2023-02-17 19:14:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2236,
    'CHECKOUT',
    '5',
    '2023-02-17 19:16:13',
    '2023-02-17 06:46:13',
    '2023-02-17 19:16:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2237,
    'CHECKIN',
    '3',
    '2023-02-20 09:18:44',
    '2023-02-19 20:48:44',
    '2023-02-20 09:18:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2238,
    'CHECKIN',
    '5',
    '2023-02-20 09:24:50',
    '2023-02-19 20:54:50',
    '2023-02-20 09:24:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2239,
    'CHECKIN',
    '10',
    '2023-02-20 09:36:20',
    '2023-02-19 21:06:20',
    '2023-02-20 09:36:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2240,
    'CHECKIN',
    '9',
    '2023-02-20 09:37:42',
    '2023-02-19 21:07:42',
    '2023-02-20 09:37:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2241,
    'CHECKIN',
    '7',
    '2023-02-20 09:52:16',
    '2023-02-19 21:22:16',
    '2023-02-20 09:52:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2242,
    'CHECKIN',
    '11',
    '2023-02-20 09:55:33',
    '2023-02-19 21:25:33',
    '2023-02-20 09:55:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2243,
    'CHECKIN',
    '4',
    '2023-02-20 10:09:51',
    '2023-02-19 21:39:51',
    '2023-02-20 10:10:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2244,
    'BREAKIN',
    '10',
    '2023-02-20 12:47:43',
    '2023-02-20 00:17:43',
    '2023-02-20 12:47:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2245,
    'BREAKIN',
    '5',
    '2023-02-20 13:07:28',
    '2023-02-20 00:37:28',
    '2023-02-20 13:07:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2246,
    'BREAKIN',
    '9',
    '2023-02-20 13:07:36',
    '2023-02-20 00:37:36',
    '2023-02-20 13:07:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2247,
    'BREAKIN',
    '4',
    '2023-02-20 13:07:42',
    '2023-02-20 00:37:42',
    '2023-02-20 13:07:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2248,
    'BREAKIN',
    '11',
    '2023-02-20 13:08:22',
    '2023-02-20 00:38:22',
    '2023-02-20 13:08:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2249,
    'BREAKIN',
    '7',
    '2023-02-20 13:08:37',
    '2023-02-20 00:38:37',
    '2023-02-20 13:08:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2250,
    'BREAKIN',
    '3',
    '2023-02-20 13:14:27',
    '2023-02-20 00:44:27',
    '2023-02-20 13:14:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2251,
    'BREAKOUT',
    '10',
    '2023-02-20 13:43:09',
    '2023-02-20 01:13:09',
    '2023-02-20 13:43:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2252,
    'BREAKOUT',
    '5',
    '2023-02-20 13:56:31',
    '2023-02-20 01:26:31',
    '2023-02-20 13:56:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2253,
    'BREAKIN',
    '5',
    '2023-02-20 13:58:36',
    '2023-02-20 01:28:36',
    '2023-02-20 13:58:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2254,
    'BREAKOUT',
    '5',
    '2023-02-20 14:01:43',
    '2023-02-20 01:31:43',
    '2023-02-20 14:01:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2255,
    'BREAKOUT',
    '11',
    '2023-02-20 14:02:44',
    '2023-02-20 01:32:44',
    '2023-02-20 14:02:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2256,
    'BREAKOUT',
    '4',
    '2023-02-20 14:03:55',
    '2023-02-20 01:33:55',
    '2023-02-20 14:04:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2257,
    'BREAKOUT',
    '3',
    '2023-02-20 14:13:37',
    '2023-02-20 01:43:37',
    '2023-02-20 14:13:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2258,
    'BREAKOUT',
    '9',
    '2023-02-20 14:51:55',
    '2023-02-20 02:21:55',
    '2023-02-20 14:51:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2259,
    'BREAKIN',
    '9',
    '2023-02-20 16:57:02',
    '2023-02-20 04:27:02',
    '2023-02-20 16:57:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2260,
    'BREAKIN',
    '11',
    '2023-02-20 16:57:03',
    '2023-02-20 04:27:03',
    '2023-02-20 16:57:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2261,
    'BREAKIN',
    '10',
    '2023-02-20 16:57:11',
    '2023-02-20 04:27:11',
    '2023-02-20 16:57:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2262,
    'BREAKOUT',
    '9',
    '2023-02-20 17:14:30',
    '2023-02-20 04:44:30',
    '2023-02-20 17:14:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2263,
    'BREAKOUT',
    '11',
    '2023-02-20 17:14:30',
    '2023-02-20 04:44:30',
    '2023-02-20 17:14:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2264,
    'BREAKOUT',
    '10',
    '2023-02-20 17:14:32',
    '2023-02-20 04:44:32',
    '2023-02-20 17:14:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2265,
    'BREAKIN',
    '4',
    '2023-02-20 17:25:27',
    '2023-02-20 04:55:27',
    '2023-02-20 17:25:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2266,
    'BREAKOUT',
    '4',
    '2023-02-20 17:35:15',
    '2023-02-20 05:05:15',
    '2023-02-20 17:35:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2267,
    'BREAKIN',
    '3',
    '2023-02-20 17:51:16',
    '2023-02-20 05:21:16',
    '2023-02-20 17:51:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2268,
    'BREAKOUT',
    '3',
    '2023-02-20 18:06:42',
    '2023-02-20 05:36:42',
    '2023-02-20 18:06:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2269,
    'CHECKOUT',
    '3',
    '2023-02-20 18:44:51',
    '2023-02-20 06:14:51',
    '2023-02-20 18:44:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2270,
    'CHECKOUT',
    '5',
    '2023-02-20 18:54:02',
    '2023-02-20 06:24:02',
    '2023-02-20 18:54:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2271,
    'CHECKOUT',
    '10',
    '2023-02-20 18:56:07',
    '2023-02-20 06:26:07',
    '2023-02-20 18:56:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2272,
    'CHECKOUT',
    '9',
    '2023-02-20 18:57:21',
    '2023-02-20 06:27:21',
    '2023-02-20 18:57:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2273,
    'BREAKOUT',
    '7',
    '2023-02-20 19:24:12',
    '2023-02-20 06:54:12',
    '2023-02-20 19:24:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2274,
    'CHECKOUT',
    '7',
    '2023-02-20 19:24:27',
    '2023-02-20 06:54:27',
    '2023-02-20 19:24:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2275,
    'CHECKOUT',
    '4',
    '2023-02-20 19:32:27',
    '2023-02-20 07:02:27',
    '2023-02-20 19:32:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2276,
    'CHECKIN',
    '3',
    '2023-02-21 09:13:52',
    '2023-02-20 20:43:52',
    '2023-02-21 09:13:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2277,
    'CHECKIN',
    '5',
    '2023-02-21 09:17:59',
    '2023-02-20 20:47:59',
    '2023-02-21 09:17:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2278,
    'CHECKIN',
    '10',
    '2023-02-21 09:21:07',
    '2023-02-20 20:51:07',
    '2023-02-21 09:21:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2279,
    'CHECKIN',
    '9',
    '2023-02-21 09:23:11',
    '2023-02-20 20:53:11',
    '2023-02-21 09:23:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2280,
    'CHECKIN',
    '4',
    '2023-02-21 09:40:41',
    '2023-02-20 21:10:41',
    '2023-02-21 09:40:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2281,
    'CHECKIN',
    '7',
    '2023-02-21 09:55:09',
    '2023-02-20 21:25:09',
    '2023-02-21 09:55:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2282,
    'CHECKIN',
    '11',
    '2023-02-21 09:58:04',
    '2023-02-20 21:28:04',
    '2023-02-21 09:57:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2283,
    'BREAKIN',
    '9',
    '2023-02-21 13:16:22',
    '2023-02-21 00:46:22',
    '2023-02-21 13:16:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2284,
    'BREAKIN',
    '4',
    '2023-02-21 13:16:40',
    '2023-02-21 00:46:40',
    '2023-02-21 13:16:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2285,
    'BREAKIN',
    '5',
    '2023-02-21 13:16:43',
    '2023-02-21 00:46:43',
    '2023-02-21 13:16:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2286,
    'BREAKIN',
    '11',
    '2023-02-21 13:17:05',
    '2023-02-21 00:47:05',
    '2023-02-21 13:17:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2287,
    'BREAKIN',
    '10',
    '2023-02-21 13:17:54',
    '2023-02-21 00:47:54',
    '2023-02-21 13:17:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2288,
    'BREAKIN',
    '7',
    '2023-02-21 13:17:58',
    '2023-02-21 00:47:58',
    '2023-02-21 13:17:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2289,
    'BREAKIN',
    '3',
    '2023-02-21 13:33:03',
    '2023-02-21 01:03:03',
    '2023-02-21 13:33:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2290,
    'BREAKOUT',
    '3',
    '2023-02-21 14:08:35',
    '2023-02-21 01:38:35',
    '2023-02-21 14:08:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2291,
    'BREAKOUT',
    '5',
    '2023-02-21 14:10:25',
    '2023-02-21 01:40:25',
    '2023-02-21 14:10:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2292,
    'BREAKOUT',
    '9',
    '2023-02-21 14:12:39',
    '2023-02-21 01:42:39',
    '2023-02-21 14:12:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2293,
    'BREAKOUT',
    '10',
    '2023-02-21 14:12:48',
    '2023-02-21 01:42:48',
    '2023-02-21 14:12:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2294,
    'BREAKOUT',
    '11',
    '2023-02-21 14:13:16',
    '2023-02-21 01:43:16',
    '2023-02-21 14:13:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2295,
    'BREAKOUT',
    '7',
    '2023-02-21 14:17:02',
    '2023-02-21 01:47:02',
    '2023-02-21 14:17:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2296,
    'BREAKOUT',
    '4',
    '2023-02-21 14:20:03',
    '2023-02-21 01:50:03',
    '2023-02-21 14:20:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2297,
    'BREAKIN',
    '4',
    '2023-02-21 17:00:18',
    '2023-02-21 04:30:18',
    '2023-02-21 17:00:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2298,
    'BREAKOUT',
    '4',
    '2023-02-21 17:12:02',
    '2023-02-21 04:42:02',
    '2023-02-21 17:12:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2299,
    'BREAKIN',
    '11',
    '2023-02-21 17:34:10',
    '2023-02-21 05:04:10',
    '2023-02-21 17:34:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2300,
    'BREAKIN',
    '9',
    '2023-02-21 17:34:11',
    '2023-02-21 05:04:11',
    '2023-02-21 17:34:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2301,
    'BREAKIN',
    '10',
    '2023-02-21 17:34:16',
    '2023-02-21 05:04:16',
    '2023-02-21 17:34:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2302,
    'BREAKOUT',
    '11',
    '2023-02-21 17:44:40',
    '2023-02-21 05:14:40',
    '2023-02-21 17:44:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2303,
    'BREAKOUT',
    '10',
    '2023-02-21 17:44:42',
    '2023-02-21 05:14:42',
    '2023-02-21 17:44:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2304,
    'BREAKOUT',
    '9',
    '2023-02-21 17:45:05',
    '2023-02-21 05:15:05',
    '2023-02-21 17:45:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2305,
    'CHECKOUT',
    '5',
    '2023-02-21 18:26:27',
    '2023-02-21 05:56:27',
    '2023-02-21 18:26:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2306,
    'CHECKOUT',
    '10',
    '2023-02-21 18:46:01',
    '2023-02-21 06:16:01',
    '2023-02-21 18:46:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2307,
    'CHECKOUT',
    '9',
    '2023-02-21 18:47:14',
    '2023-02-21 06:17:14',
    '2023-02-21 18:47:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2308,
    'CHECKOUT',
    '4',
    '2023-02-21 18:57:50',
    '2023-02-21 06:27:50',
    '2023-02-21 18:57:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2309,
    'CHECKOUT',
    '11',
    '2023-02-21 19:05:24',
    '2023-02-21 06:35:24',
    '2023-02-21 19:05:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2310,
    'CHECKOUT',
    '7',
    '2023-02-21 19:32:51',
    '2023-02-21 07:02:51',
    '2023-02-21 19:32:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2311,
    'CHECKIN',
    '3',
    '2023-02-22 09:12:49',
    '2023-02-21 20:42:49',
    '2023-02-22 09:12:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2312,
    'CHECKIN',
    '4',
    '2023-02-22 09:18:07',
    '2023-02-21 20:48:07',
    '2023-02-22 09:18:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2313,
    'CHECKIN',
    '7',
    '2023-02-22 09:34:52',
    '2023-02-21 21:04:52',
    '2023-02-22 09:34:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2314,
    'CHECKIN',
    '10',
    '2023-02-22 09:48:24',
    '2023-02-21 21:18:24',
    '2023-02-22 09:48:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2315,
    'CHECKIN',
    '11',
    '2023-02-22 09:53:17',
    '2023-02-21 21:23:17',
    '2023-02-22 09:53:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2316,
    'BREAKIN',
    '7',
    '2023-02-22 13:10:52',
    '2023-02-22 00:40:52',
    '2023-02-22 13:10:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2317,
    'BREAKIN',
    '3',
    '2023-02-22 13:21:30',
    '2023-02-22 00:51:30',
    '2023-02-22 13:21:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2318,
    'BREAKIN',
    '11',
    '2023-02-22 13:21:42',
    '2023-02-22 00:51:42',
    '2023-02-22 13:21:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2319,
    'BREAKIN',
    '10',
    '2023-02-22 13:21:51',
    '2023-02-22 00:51:51',
    '2023-02-22 13:21:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2320,
    'BREAKIN',
    '4',
    '2023-02-22 13:22:08',
    '2023-02-22 00:52:08',
    '2023-02-22 13:22:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2321,
    'BREAKOUT',
    '7',
    '2023-02-22 14:03:03',
    '2023-02-22 01:33:03',
    '2023-02-22 14:03:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2322,
    'BREAKOUT',
    '10',
    '2023-02-22 14:17:14',
    '2023-02-22 01:47:14',
    '2023-02-22 14:17:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2323,
    'BREAKOUT',
    '4',
    '2023-02-22 14:17:20',
    '2023-02-22 01:47:20',
    '2023-02-22 14:17:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2324,
    'BREAKOUT',
    '11',
    '2023-02-22 14:17:47',
    '2023-02-22 01:47:47',
    '2023-02-22 14:17:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2325,
    'BREAKOUT',
    '3',
    '2023-02-22 14:19:14',
    '2023-02-22 01:49:14',
    '2023-02-22 14:19:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2326,
    'CHECKIN',
    '9',
    '2023-02-22 14:30:32',
    '2023-02-22 02:00:32',
    '2023-02-22 14:30:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2327,
    'BREAKIN',
    '7',
    '2023-02-22 16:19:09',
    '2023-02-22 03:49:09',
    '2023-02-22 16:19:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2328,
    'BREAKOUT',
    '7',
    '2023-02-22 16:19:11',
    '2023-02-22 03:49:11',
    '2023-02-22 16:19:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2329,
    'BREAKIN',
    '11',
    '2023-02-22 17:41:18',
    '2023-02-22 05:11:18',
    '2023-02-22 17:41:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2330,
    'BREAKIN',
    '10',
    '2023-02-22 17:43:02',
    '2023-02-22 05:13:02',
    '2023-02-22 17:43:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2331,
    'BREAKOUT',
    '10',
    '2023-02-22 17:49:14',
    '2023-02-22 05:19:14',
    '2023-02-22 17:49:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2332,
    'BREAKOUT',
    '11',
    '2023-02-22 17:49:18',
    '2023-02-22 05:19:18',
    '2023-02-22 17:49:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2333,
    'CHECKOUT',
    '10',
    '2023-02-22 18:54:32',
    '2023-02-22 06:24:32',
    '2023-02-22 18:54:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2334,
    'CHECKOUT',
    '4',
    '2023-02-22 19:02:57',
    '2023-02-22 06:32:57',
    '2023-02-22 19:02:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2335,
    'CHECKOUT',
    '11',
    '2023-02-22 19:02:58',
    '2023-02-22 06:32:58',
    '2023-02-22 19:02:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2336,
    'CHECKOUT',
    '9',
    '2023-02-22 19:03:19',
    '2023-02-22 06:33:19',
    '2023-02-22 19:03:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2337,
    'CHECKOUT',
    '7',
    '2023-02-22 19:21:40',
    '2023-02-22 06:51:40',
    '2023-02-22 19:21:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2338,
    'CHECKIN',
    '3',
    '2023-02-23 09:12:58',
    '2023-02-22 20:42:58',
    '2023-02-23 09:12:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2339,
    'CHECKIN',
    '7',
    '2023-02-23 09:25:21',
    '2023-02-22 20:55:21',
    '2023-02-23 09:25:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2340,
    'CHECKIN',
    '9',
    '2023-02-23 09:36:58',
    '2023-02-22 21:06:58',
    '2023-02-23 09:36:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2341,
    'CHECKIN',
    '10',
    '2023-02-23 09:37:49',
    '2023-02-22 21:07:49',
    '2023-02-23 09:37:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2342,
    'CHECKIN',
    '11',
    '2023-02-23 09:52:35',
    '2023-02-22 21:22:35',
    '2023-02-23 09:52:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2343,
    'CHECKIN',
    '4',
    '2023-02-23 10:45:13',
    '2023-02-22 22:15:13',
    '2023-02-23 10:45:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2344,
    'BREAKIN',
    '3',
    '2023-02-23 12:59:55',
    '2023-02-23 00:29:55',
    '2023-02-23 12:59:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2345,
    'BREAKIN',
    '7',
    '2023-02-23 13:00:45',
    '2023-02-23 00:30:45',
    '2023-02-23 13:00:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2346,
    'BREAKIN',
    '9',
    '2023-02-23 13:01:55',
    '2023-02-23 00:31:55',
    '2023-02-23 13:01:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2347,
    'BREAKIN',
    '10',
    '2023-02-23 13:03:50',
    '2023-02-23 00:33:50',
    '2023-02-23 13:03:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2348,
    'BREAKIN',
    '4',
    '2023-02-23 13:29:24',
    '2023-02-23 00:59:24',
    '2023-02-23 13:29:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2349,
    'BREAKOUT',
    '10',
    '2023-02-23 13:48:57',
    '2023-02-23 01:18:57',
    '2023-02-23 13:48:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2350,
    'BREAKIN',
    '11',
    '2023-02-23 13:49:16',
    '2023-02-23 01:19:16',
    '2023-02-23 13:49:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2351,
    'BREAKOUT',
    '9',
    '2023-02-23 13:50:40',
    '2023-02-23 01:20:40',
    '2023-02-23 13:50:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2352,
    'BREAKOUT',
    '4',
    '2023-02-23 14:00:13',
    '2023-02-23 01:30:13',
    '2023-02-23 14:00:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2353,
    'BREAKOUT',
    '7',
    '2023-02-23 14:06:07',
    '2023-02-23 01:36:07',
    '2023-02-23 14:06:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2354,
    'BREAKOUT',
    '3',
    '2023-02-23 14:08:09',
    '2023-02-23 01:38:09',
    '2023-02-23 14:08:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2355,
    'BREAKOUT',
    '11',
    '2023-02-23 14:39:23',
    '2023-02-23 02:09:23',
    '2023-02-23 14:39:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2356,
    'BREAKIN',
    '4',
    '2023-02-23 16:56:53',
    '2023-02-23 04:26:53',
    '2023-02-23 16:56:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2357,
    'BREAKOUT',
    '4',
    '2023-02-23 17:09:44',
    '2023-02-23 04:39:44',
    '2023-02-23 17:09:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2358,
    'BREAKIN',
    '11',
    '2023-02-23 17:15:04',
    '2023-02-23 04:45:04',
    '2023-02-23 17:15:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2359,
    'BREAKIN',
    '9',
    '2023-02-23 17:15:06',
    '2023-02-23 04:45:06',
    '2023-02-23 17:15:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2360,
    'BREAKOUT',
    '11',
    '2023-02-23 17:33:41',
    '2023-02-23 05:03:41',
    '2023-02-23 17:33:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2361,
    'BREAKOUT',
    '9',
    '2023-02-23 17:34:08',
    '2023-02-23 05:04:08',
    '2023-02-23 17:34:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2362,
    'CHECKOUT',
    '10',
    '2023-02-23 18:47:26',
    '2023-02-23 06:17:26',
    '2023-02-23 18:47:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2363,
    'CHECKOUT',
    '9',
    '2023-02-23 18:53:16',
    '2023-02-23 06:23:16',
    '2023-02-23 18:53:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2364,
    'CHECKOUT',
    '11',
    '2023-02-23 18:58:29',
    '2023-02-23 06:28:29',
    '2023-02-23 18:58:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2365,
    'CHECKOUT',
    '3',
    '2023-02-23 19:02:01',
    '2023-02-23 06:32:01',
    '2023-02-23 19:02:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2366,
    'CHECKOUT',
    '4',
    '2023-02-23 19:09:04',
    '2023-02-23 06:39:04',
    '2023-02-23 19:09:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2367,
    'CHECKOUT',
    '7',
    '2023-02-23 19:49:09',
    '2023-02-23 07:19:09',
    '2023-02-23 19:49:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2368,
    'CHECKIN',
    '3',
    '2023-02-24 09:14:15',
    '2023-02-23 20:44:15',
    '2023-02-24 09:14:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2369,
    'CHECKIN',
    '5',
    '2023-02-24 09:22:16',
    '2023-02-23 20:52:16',
    '2023-02-24 09:22:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2370,
    'CHECKIN',
    '9',
    '2023-02-24 09:28:39',
    '2023-02-23 20:58:39',
    '2023-02-24 09:28:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2371,
    'CHECKIN',
    '10',
    '2023-02-24 09:28:43',
    '2023-02-23 20:58:43',
    '2023-02-24 09:28:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2372,
    'CHECKIN',
    '4',
    '2023-02-24 09:31:54',
    '2023-02-23 21:01:54',
    '2023-02-24 09:31:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2373,
    'CHECKIN',
    '11',
    '2023-02-24 09:43:31',
    '2023-02-23 21:13:31',
    '2023-02-24 09:43:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2374,
    'CHECKIN',
    '7',
    '2023-02-24 10:03:27',
    '2023-02-23 21:33:27',
    '2023-02-24 10:03:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2375,
    'BREAKIN',
    '4',
    '2023-02-24 13:04:05',
    '2023-02-24 00:34:05',
    '2023-02-24 13:04:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2376,
    'BREAKIN',
    '11',
    '2023-02-24 13:04:23',
    '2023-02-24 00:34:23',
    '2023-02-24 13:04:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2377,
    'BREAKIN',
    '9',
    '2023-02-24 13:04:37',
    '2023-02-24 00:34:37',
    '2023-02-24 13:04:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2378,
    'BREAKIN',
    '7',
    '2023-02-24 13:05:23',
    '2023-02-24 00:35:23',
    '2023-02-24 13:05:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2379,
    'BREAKIN',
    '10',
    '2023-02-24 13:05:34',
    '2023-02-24 00:35:34',
    '2023-02-24 13:05:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2380,
    'BREAKIN',
    '3',
    '2023-02-24 13:15:44',
    '2023-02-24 00:45:44',
    '2023-02-24 13:15:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2381,
    'BREAKIN',
    '5',
    '2023-02-24 13:16:02',
    '2023-02-24 00:46:02',
    '2023-02-24 13:16:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2382,
    'BREAKOUT',
    '9',
    '2023-02-24 13:48:10',
    '2023-02-24 01:18:10',
    '2023-02-24 13:48:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2383,
    'BREAKIN',
    '9',
    '2023-02-24 13:54:36',
    '2023-02-24 01:24:36',
    '2023-02-24 13:54:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2384,
    'BREAKOUT',
    '9',
    '2023-02-24 13:54:37',
    '2023-02-24 01:24:37',
    '2023-02-24 13:54:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2385,
    'BREAKOUT',
    '11',
    '2023-02-24 13:55:07',
    '2023-02-24 01:25:07',
    '2023-02-24 13:55:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2386,
    'BREAKOUT',
    '7',
    '2023-02-24 13:56:51',
    '2023-02-24 01:26:51',
    '2023-02-24 13:56:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2387,
    'BREAKOUT',
    '10',
    '2023-02-24 14:00:38',
    '2023-02-24 01:30:38',
    '2023-02-24 14:00:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2388,
    'BREAKOUT',
    '5',
    '2023-02-24 14:09:28',
    '2023-02-24 01:39:28',
    '2023-02-24 14:09:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2389,
    'BREAKOUT',
    '3',
    '2023-02-24 14:10:43',
    '2023-02-24 01:40:43',
    '2023-02-24 14:10:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2390,
    'BREAKOUT',
    '4',
    '2023-02-24 14:11:08',
    '2023-02-24 01:41:08',
    '2023-02-24 14:11:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2391,
    'BREAKIN',
    '4',
    '2023-02-24 17:16:30',
    '2023-02-24 04:46:30',
    '2023-02-24 17:16:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2392,
    'BREAKOUT',
    '4',
    '2023-02-24 17:30:48',
    '2023-02-24 05:00:48',
    '2023-02-24 17:30:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2393,
    'BREAKIN',
    '11',
    '2023-02-24 17:37:52',
    '2023-02-24 05:07:52',
    '2023-02-24 17:37:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2394,
    'BREAKIN',
    '9',
    '2023-02-24 17:37:53',
    '2023-02-24 05:07:53',
    '2023-02-24 17:37:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2395,
    'BREAKIN',
    '10',
    '2023-02-24 17:41:27',
    '2023-02-24 05:11:27',
    '2023-02-24 17:41:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2396,
    'BREAKOUT',
    '11',
    '2023-02-24 17:47:11',
    '2023-02-24 05:17:11',
    '2023-02-24 17:47:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2397,
    'BREAKOUT',
    '10',
    '2023-02-24 17:47:17',
    '2023-02-24 05:17:17',
    '2023-02-24 17:47:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2398,
    'BREAKOUT',
    '9',
    '2023-02-24 17:47:18',
    '2023-02-24 05:17:18',
    '2023-02-24 17:47:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2399,
    'CHECKOUT',
    '10',
    '2023-02-24 18:32:20',
    '2023-02-24 06:02:20',
    '2023-02-24 18:32:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2400,
    'CHECKOUT',
    '9',
    '2023-02-24 18:49:55',
    '2023-02-24 06:19:55',
    '2023-02-24 18:49:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2401,
    'CHECKOUT',
    '11',
    '2023-02-24 18:50:12',
    '2023-02-24 06:20:12',
    '2023-02-24 18:50:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2402,
    'CHECKOUT',
    '3',
    '2023-02-24 19:13:16',
    '2023-02-24 06:43:16',
    '2023-02-24 19:13:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2403,
    'CHECKOUT',
    '5',
    '2023-02-24 19:14:16',
    '2023-02-24 06:44:16',
    '2023-02-24 19:14:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2404,
    'CHECKOUT',
    '4',
    '2023-02-24 19:29:58',
    '2023-02-24 06:59:58',
    '2023-02-24 19:29:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2405,
    'CHECKOUT',
    '7',
    '2023-02-24 19:39:55',
    '2023-02-24 07:09:55',
    '2023-02-24 19:39:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2406,
    'CHECKIN',
    '4',
    '2023-02-25 09:05:41',
    '2023-02-24 20:35:41',
    '2023-02-25 09:05:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2407,
    'CHECKIN',
    '5',
    '2023-02-25 09:20:54',
    '2023-02-24 20:50:54',
    '2023-02-25 09:20:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2408,
    'CHECKIN',
    '3',
    '2023-02-25 09:22:53',
    '2023-02-24 20:52:53',
    '2023-02-25 09:22:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2409,
    'CHECKIN',
    '11',
    '2023-02-25 09:50:20',
    '2023-02-24 21:20:20',
    '2023-02-25 09:50:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2410,
    'CHECKIN',
    '9',
    '2023-02-25 09:52:36',
    '2023-02-24 21:22:36',
    '2023-02-25 09:52:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2411,
    'CHECKIN',
    '7',
    '2023-02-25 10:01:46',
    '2023-02-24 21:31:46',
    '2023-02-25 10:01:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2412,
    'BREAKIN',
    '4',
    '2023-02-25 12:44:41',
    '2023-02-25 00:14:41',
    '2023-02-25 12:44:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2413,
    'BREAKIN',
    '5',
    '2023-02-25 12:45:00',
    '2023-02-25 00:15:00',
    '2023-02-25 12:45:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2414,
    'BREAKIN',
    '3',
    '2023-02-25 12:45:01',
    '2023-02-25 00:15:01',
    '2023-02-25 12:45:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2415,
    'BREAKIN',
    '9',
    '2023-02-25 13:06:39',
    '2023-02-25 00:36:39',
    '2023-02-25 13:06:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2416,
    'BREAKIN',
    '11',
    '2023-02-25 13:06:44',
    '2023-02-25 00:36:44',
    '2023-02-25 13:06:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2417,
    'BREAKIN',
    '7',
    '2023-02-25 13:17:50',
    '2023-02-25 00:47:50',
    '2023-02-25 13:17:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2418,
    'BREAKOUT',
    '5',
    '2023-02-25 13:43:56',
    '2023-02-25 01:13:56',
    '2023-02-25 13:43:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2419,
    'BREAKOUT',
    '3',
    '2023-02-25 13:46:20',
    '2023-02-25 01:16:20',
    '2023-02-25 13:46:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2420,
    'BREAKOUT',
    '4',
    '2023-02-25 13:47:10',
    '2023-02-25 01:17:10',
    '2023-02-25 13:47:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2421,
    'BREAKOUT',
    '7',
    '2023-02-25 13:47:29',
    '2023-02-25 01:17:29',
    '2023-02-25 13:47:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2422,
    'BREAKOUT',
    '9',
    '2023-02-25 14:02:25',
    '2023-02-25 01:32:25',
    '2023-02-25 14:02:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2423,
    'BREAKOUT',
    '11',
    '2023-02-25 14:04:13',
    '2023-02-25 01:34:13',
    '2023-02-25 14:04:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2424,
    'CHECKOUT',
    '5',
    '2023-02-25 19:06:37',
    '2023-02-25 06:36:37',
    '2023-02-25 19:06:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2425,
    'CHECKOUT',
    '4',
    '2023-02-25 19:06:38',
    '2023-02-25 06:36:38',
    '2023-02-25 19:06:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2426,
    'CHECKOUT',
    '7',
    '2023-02-25 19:06:58',
    '2023-02-25 06:36:58',
    '2023-02-25 19:06:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2427,
    'CHECKOUT',
    '3',
    '2023-02-25 19:07:48',
    '2023-02-25 06:37:48',
    '2023-02-25 19:07:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2428,
    'CHECKOUT',
    '9',
    '2023-02-25 19:07:51',
    '2023-02-25 06:37:51',
    '2023-02-25 19:07:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2429,
    'CHECKOUT',
    '11',
    '2023-02-25 19:07:57',
    '2023-02-25 06:37:57',
    '2023-02-25 19:07:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2430,
    'CHECKIN',
    '4',
    '2023-02-27 08:41:39',
    '2023-02-26 20:11:39',
    '2023-02-27 08:41:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2431,
    'CHECKIN',
    '5',
    '2023-02-27 09:20:26',
    '2023-02-26 20:50:26',
    '2023-02-27 09:20:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2432,
    'CHECKIN',
    '7',
    '2023-02-27 09:25:21',
    '2023-02-26 20:55:21',
    '2023-02-27 09:25:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2433,
    'CHECKIN',
    '3',
    '2023-02-27 09:45:25',
    '2023-02-26 21:15:25',
    '2023-02-27 09:45:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2434,
    'CHECKIN',
    '9',
    '2023-02-27 09:47:25',
    '2023-02-26 21:17:25',
    '2023-02-27 09:47:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2435,
    'CHECKIN',
    '11',
    '2023-02-27 09:50:03',
    '2023-02-26 21:20:03',
    '2023-02-27 09:50:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2436,
    'BREAKIN',
    '4',
    '2023-02-27 13:12:48',
    '2023-02-27 00:42:48',
    '2023-02-27 13:12:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2437,
    'BREAKIN',
    '9',
    '2023-02-27 13:13:03',
    '2023-02-27 00:43:03',
    '2023-02-27 13:13:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2438,
    'BREAKIN',
    '11',
    '2023-02-27 13:13:10',
    '2023-02-27 00:43:10',
    '2023-02-27 13:13:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2439,
    'BREAKIN',
    '7',
    '2023-02-27 13:16:11',
    '2023-02-27 00:46:11',
    '2023-02-27 13:16:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2440,
    'BREAKIN',
    '7',
    '2023-02-27 13:16:26',
    '2023-02-27 00:46:26',
    '2023-02-27 13:16:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2441,
    'BREAKIN',
    '5',
    '2023-02-27 13:24:06',
    '2023-02-27 00:54:06',
    '2023-02-27 13:24:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2442,
    'BREAKOUT',
    '5',
    '2023-02-27 14:00:32',
    '2023-02-27 01:30:32',
    '2023-02-27 14:00:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2443,
    'BREAKOUT',
    '9',
    '2023-02-27 14:01:01',
    '2023-02-27 01:31:01',
    '2023-02-27 14:01:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2444,
    'BREAKOUT',
    '7',
    '2023-02-27 14:01:30',
    '2023-02-27 01:31:30',
    '2023-02-27 14:01:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2445,
    'BREAKOUT',
    '11',
    '2023-02-27 14:03:42',
    '2023-02-27 01:33:42',
    '2023-02-27 14:03:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2446,
    'BREAKOUT',
    '4',
    '2023-02-27 14:11:29',
    '2023-02-27 01:41:29',
    '2023-02-27 14:11:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2447,
    'BREAKIN',
    '4',
    '2023-02-27 17:02:30',
    '2023-02-27 04:32:30',
    '2023-02-27 17:02:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2448,
    'BREAKOUT',
    '4',
    '2023-02-27 17:13:56',
    '2023-02-27 04:43:56',
    '2023-02-27 17:13:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2449,
    'CHECKOUT',
    '4',
    '2023-02-27 18:29:10',
    '2023-02-27 05:59:10',
    '2023-02-27 18:29:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2450,
    'CHECKOUT',
    '11',
    '2023-02-27 18:52:57',
    '2023-02-27 06:22:57',
    '2023-02-27 18:52:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2451,
    'CHECKOUT',
    '9',
    '2023-02-27 18:53:03',
    '2023-02-27 06:23:03',
    '2023-02-27 18:53:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2452,
    'CHECKOUT',
    '3',
    '2023-02-27 19:05:15',
    '2023-02-27 06:35:15',
    '2023-02-27 19:05:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2453,
    'CHECKOUT',
    '5',
    '2023-02-27 19:07:36',
    '2023-02-27 06:37:36',
    '2023-02-27 19:07:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2454,
    'CHECKOUT',
    '7',
    '2023-02-27 19:17:13',
    '2023-02-27 06:47:13',
    '2023-02-27 19:17:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2455,
    'CHECKIN',
    '4',
    '2023-02-28 05:15:04',
    '2023-02-27 16:45:04',
    '2023-02-28 05:15:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2456,
    'BREAKIN',
    '4',
    '2023-02-28 07:26:05',
    '2023-02-27 18:56:05',
    '2023-02-28 07:26:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2457,
    'BREAKOUT',
    '4',
    '2023-02-28 07:37:31',
    '2023-02-27 19:07:31',
    '2023-02-28 07:37:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2458,
    'CHECKIN',
    '5',
    '2023-02-28 08:52:32',
    '2023-02-27 20:22:32',
    '2023-02-28 08:52:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2459,
    'CHECKIN',
    '3',
    '2023-02-28 09:14:00',
    '2023-02-27 20:44:00',
    '2023-02-28 09:14:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2460,
    'CHECKIN',
    '7',
    '2023-02-28 09:43:40',
    '2023-02-27 21:13:40',
    '2023-02-28 09:43:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2461,
    'CHECKIN',
    '9',
    '2023-02-28 09:49:08',
    '2023-02-27 21:19:08',
    '2023-02-28 09:49:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2462,
    'CHECKIN',
    '11',
    '2023-02-28 09:51:35',
    '2023-02-27 21:21:35',
    '2023-02-28 09:51:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2463,
    'CHECKIN',
    '10',
    '2023-02-28 09:53:08',
    '2023-02-27 21:23:08',
    '2023-02-28 09:53:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2464,
    'BREAKIN',
    '3',
    '2023-02-28 12:58:31',
    '2023-02-28 00:28:31',
    '2023-02-28 12:58:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2465,
    'BREAKIN',
    '4',
    '2023-02-28 12:58:44',
    '2023-02-28 00:28:44',
    '2023-02-28 12:58:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2466,
    'BREAKIN',
    '5',
    '2023-02-28 12:59:14',
    '2023-02-28 00:29:14',
    '2023-02-28 12:59:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2467,
    'BREAKIN',
    '7',
    '2023-02-28 12:59:40',
    '2023-02-28 00:29:40',
    '2023-02-28 12:59:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2468,
    'BREAKIN',
    '10',
    '2023-02-28 13:03:59',
    '2023-02-28 00:33:59',
    '2023-02-28 13:03:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2469,
    'BREAKIN',
    '11',
    '2023-02-28 13:04:08',
    '2023-02-28 00:34:08',
    '2023-02-28 13:04:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2470,
    'BREAKIN',
    '9',
    '2023-02-28 13:04:13',
    '2023-02-28 00:34:13',
    '2023-02-28 13:04:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2471,
    'BREAKOUT',
    '9',
    '2023-02-28 14:00:50',
    '2023-02-28 01:30:50',
    '2023-02-28 14:00:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2472,
    'BREAKOUT',
    '10',
    '2023-02-28 14:00:58',
    '2023-02-28 01:30:58',
    '2023-02-28 14:00:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2473,
    'BREAKOUT',
    '11',
    '2023-02-28 14:01:06',
    '2023-02-28 01:31:06',
    '2023-02-28 14:01:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2474,
    'BREAKOUT',
    '7',
    '2023-02-28 14:01:16',
    '2023-02-28 01:31:16',
    '2023-02-28 14:01:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2475,
    'BREAKOUT',
    '4',
    '2023-02-28 14:09:39',
    '2023-02-28 01:39:39',
    '2023-02-28 14:09:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2476,
    'BREAKOUT',
    '5',
    '2023-02-28 14:10:44',
    '2023-02-28 01:40:44',
    '2023-02-28 14:10:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2477,
    'BREAKOUT',
    '3',
    '2023-02-28 14:10:55',
    '2023-02-28 01:40:55',
    '2023-02-28 14:10:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2478,
    'BREAKIN',
    '4',
    '2023-02-28 17:15:11',
    '2023-02-28 04:45:11',
    '2023-02-28 17:15:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2479,
    'BREAKOUT',
    '4',
    '2023-02-28 17:28:40',
    '2023-02-28 04:58:40',
    '2023-02-28 17:28:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2480,
    'CHECKOUT',
    '4',
    '2023-02-28 17:28:42',
    '2023-02-28 04:58:42',
    '2023-02-28 17:28:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2481,
    'BREAKIN',
    '11',
    '2023-02-28 17:34:51',
    '2023-02-28 05:04:51',
    '2023-02-28 17:34:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2482,
    'BREAKIN',
    '9',
    '2023-02-28 17:34:51',
    '2023-02-28 05:04:51',
    '2023-02-28 17:34:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2483,
    'BREAKIN',
    '10',
    '2023-02-28 17:34:58',
    '2023-02-28 05:04:58',
    '2023-02-28 17:34:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2484,
    'BREAKOUT',
    '11',
    '2023-02-28 18:09:07',
    '2023-02-28 05:39:07',
    '2023-02-28 18:09:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2485,
    'BREAKOUT',
    '9',
    '2023-02-28 18:09:43',
    '2023-02-28 05:39:43',
    '2023-02-28 18:09:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2486,
    'BREAKOUT',
    '10',
    '2023-02-28 18:11:39',
    '2023-02-28 05:41:39',
    '2023-02-28 18:11:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2487,
    'CHECKOUT',
    '5',
    '2023-02-28 19:03:56',
    '2023-02-28 06:33:56',
    '2023-02-28 19:03:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2488,
    'CHECKOUT',
    '3',
    '2023-02-28 19:08:44',
    '2023-02-28 06:38:44',
    '2023-02-28 19:08:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2489,
    'CHECKOUT',
    '7',
    '2023-02-28 19:17:42',
    '2023-02-28 06:47:42',
    '2023-02-28 19:17:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2490,
    'CHECKOUT',
    '9',
    '2023-02-28 19:20:18',
    '2023-02-28 06:50:18',
    '2023-02-28 19:20:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2491,
    'CHECKOUT',
    '11',
    '2023-02-28 19:26:55',
    '2023-02-28 06:56:55',
    '2023-02-28 19:26:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2492,
    'CHECKOUT',
    '10',
    '2023-02-28 19:27:11',
    '2023-02-28 06:57:11',
    '2023-02-28 19:27:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2493,
    'CHECKIN',
    '4',
    '2023-03-01 09:33:21',
    '2023-02-28 21:03:21',
    '2023-03-01 09:33:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2494,
    'CHECKIN',
    '5',
    '2023-03-01 09:34:30',
    '2023-02-28 21:04:30',
    '2023-03-01 09:34:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2495,
    'CHECKIN',
    '9',
    '2023-03-01 09:34:42',
    '2023-02-28 21:04:42',
    '2023-03-01 09:34:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2496,
    'CHECKIN',
    '10',
    '2023-03-01 09:35:03',
    '2023-02-28 21:05:03',
    '2023-03-01 09:35:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2497,
    'CHECKIN',
    '3',
    '2023-03-01 09:35:09',
    '2023-02-28 21:05:09',
    '2023-03-01 09:35:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2498,
    'CHECKIN',
    '11',
    '2023-03-01 09:48:00',
    '2023-02-28 21:18:00',
    '2023-03-01 09:47:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2499,
    'CHECKIN',
    '7',
    '2023-03-01 10:19:28',
    '2023-02-28 21:49:28',
    '2023-03-01 10:19:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2500,
    'BREAKIN',
    '5',
    '2023-03-01 12:35:42',
    '2023-03-01 00:05:42',
    '2023-03-01 12:35:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2501,
    'BREAKIN',
    '7',
    '2023-03-01 13:07:38',
    '2023-03-01 00:37:38',
    '2023-03-01 13:07:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2502,
    'BREAKIN',
    '9',
    '2023-03-01 13:08:00',
    '2023-03-01 00:38:00',
    '2023-03-01 13:07:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2503,
    'BREAKIN',
    '4',
    '2023-03-01 13:08:05',
    '2023-03-01 00:38:05',
    '2023-03-01 13:08:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2504,
    'BREAKIN',
    '11',
    '2023-03-01 13:09:28',
    '2023-03-01 00:39:28',
    '2023-03-01 13:09:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2505,
    'BREAKOUT',
    '5',
    '2023-03-01 13:17:41',
    '2023-03-01 00:47:41',
    '2023-03-01 13:17:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2506,
    'BREAKIN',
    '3',
    '2023-03-01 13:23:33',
    '2023-03-01 00:53:33',
    '2023-03-01 13:23:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2507,
    'BREAKOUT',
    '9',
    '2023-03-01 13:56:27',
    '2023-03-01 01:26:27',
    '2023-03-01 13:56:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2508,
    'BREAKOUT',
    '11',
    '2023-03-01 13:56:32',
    '2023-03-01 01:26:32',
    '2023-03-01 13:56:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2509,
    'BREAKOUT',
    '4',
    '2023-03-01 13:57:42',
    '2023-03-01 01:27:42',
    '2023-03-01 13:57:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2510,
    'BREAKOUT',
    '3',
    '2023-03-01 14:14:24',
    '2023-03-01 01:44:24',
    '2023-03-01 14:14:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2511,
    'BREAKIN',
    '10',
    '2023-03-01 15:51:36',
    '2023-03-01 03:21:36',
    '2023-03-01 15:51:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2512,
    'BREAKOUT',
    '10',
    '2023-03-01 16:39:02',
    '2023-03-01 04:09:02',
    '2023-03-01 16:39:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2513,
    'BREAKIN',
    '4',
    '2023-03-01 17:10:12',
    '2023-03-01 04:40:12',
    '2023-03-01 17:10:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2514,
    'BREAKOUT',
    '4',
    '2023-03-01 17:30:46',
    '2023-03-01 05:00:46',
    '2023-03-01 17:30:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2515,
    'CHECKOUT',
    '9',
    '2023-03-01 18:41:58',
    '2023-03-01 06:11:58',
    '2023-03-01 18:41:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2516,
    'CHECKOUT',
    '11',
    '2023-03-01 18:43:51',
    '2023-03-01 06:13:51',
    '2023-03-01 18:43:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2517,
    'CHECKOUT',
    '3',
    '2023-03-01 19:01:55',
    '2023-03-01 06:31:55',
    '2023-03-01 19:01:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2518,
    'CHECKOUT',
    '10',
    '2023-03-01 19:10:14',
    '2023-03-01 06:40:14',
    '2023-03-01 19:10:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2519,
    'CHECKOUT',
    '4',
    '2023-03-01 19:11:22',
    '2023-03-01 06:41:22',
    '2023-03-01 19:11:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2520,
    'CHECKOUT',
    '5',
    '2023-03-01 19:11:36',
    '2023-03-01 06:41:36',
    '2023-03-01 19:11:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2521,
    'BREAKOUT',
    '7',
    '2023-03-01 19:14:16',
    '2023-03-09 06:14:06',
    '2023-03-01 14:10:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2522,
    'CHECKOUT',
    '7',
    '2023-03-01 19:14:21',
    '2023-03-09 06:14:46',
    '2023-03-01 19:15:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2523,
    'CHECKIN',
    '3',
    '2023-03-02 09:14:45',
    '2023-03-01 20:44:45',
    '2023-03-02 09:14:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2524,
    'CHECKIN',
    '4',
    '2023-03-02 09:14:47',
    '2023-03-01 20:44:47',
    '2023-03-02 09:14:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2525,
    'CHECKIN',
    '5',
    '2023-03-02 09:15:13',
    '2023-03-01 20:45:13',
    '2023-03-02 09:15:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2526,
    'CHECKIN',
    '9',
    '2023-03-02 09:45:35',
    '2023-03-01 21:15:35',
    '2023-03-02 09:45:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2527,
    'CHECKIN',
    '10',
    '2023-03-02 09:46:26',
    '2023-03-01 21:16:26',
    '2023-03-02 09:46:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2528,
    'CHECKIN',
    '7',
    '2023-03-02 09:51:52',
    '2023-03-01 21:21:52',
    '2023-03-02 09:51:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2529,
    'BREAKIN',
    '5',
    '2023-03-02 13:10:38',
    '2023-03-02 00:40:38',
    '2023-03-02 13:10:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2530,
    'BREAKIN',
    '9',
    '2023-03-02 13:10:55',
    '2023-03-02 00:40:55',
    '2023-03-02 13:10:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2531,
    'BREAKIN',
    '7',
    '2023-03-02 13:11:16',
    '2023-03-02 00:41:16',
    '2023-03-02 13:11:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2532,
    'BREAKIN',
    '10',
    '2023-03-02 13:11:49',
    '2023-03-02 00:41:49',
    '2023-03-02 13:11:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2533,
    'BREAKIN',
    '4',
    '2023-03-02 13:13:05',
    '2023-03-02 00:43:05',
    '2023-03-02 13:13:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2534,
    'BREAKIN',
    '3',
    '2023-03-02 13:25:49',
    '2023-03-02 00:55:49',
    '2023-03-02 13:25:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2535,
    'BREAKOUT',
    '9',
    '2023-03-02 14:02:37',
    '2023-03-02 01:32:37',
    '2023-03-02 14:02:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2536,
    'BREAKOUT',
    '4',
    '2023-03-02 14:03:06',
    '2023-03-02 01:33:06',
    '2023-03-02 14:03:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2537,
    'BREAKOUT',
    '10',
    '2023-03-02 14:03:31',
    '2023-03-02 01:33:31',
    '2023-03-02 14:03:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2538,
    'BREAKOUT',
    '3',
    '2023-03-02 14:14:39',
    '2023-03-02 01:44:39',
    '2023-03-02 14:14:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2539,
    'BREAKOUT',
    '7',
    '2023-03-02 14:15:21',
    '2023-03-02 01:45:21',
    '2023-03-02 14:15:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2540,
    'BREAKOUT',
    '5',
    '2023-03-02 14:15:26',
    '2023-03-02 01:45:26',
    '2023-03-02 14:15:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2541,
    'BREAKIN',
    '3',
    '2023-03-02 17:38:17',
    '2023-03-02 05:08:17',
    '2023-03-02 17:38:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2542,
    'BREAKIN',
    '7',
    '2023-03-02 17:43:41',
    '2023-03-02 05:13:41',
    '2023-03-02 17:43:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2543,
    'BREAKOUT',
    '7',
    '2023-03-02 18:17:38',
    '2023-03-02 05:47:38',
    '2023-03-02 18:17:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2544,
    'CHECKOUT',
    '4',
    '2023-03-02 18:51:34',
    '2023-03-02 06:21:34',
    '2023-03-02 18:51:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2545,
    'CHECKIN',
    '3',
    '2023-03-03 09:13:38',
    '2023-03-02 20:43:38',
    '2023-03-03 09:13:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2546,
    'CHECKIN',
    '7',
    '2023-03-03 09:26:47',
    '2023-03-02 20:56:47',
    '2023-03-03 09:26:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2547,
    'CHECKIN',
    '5',
    '2023-03-03 09:28:12',
    '2023-03-02 20:58:12',
    '2023-03-03 09:28:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2548,
    'CHECKIN',
    '9',
    '2023-03-03 09:36:10',
    '2023-03-02 21:06:10',
    '2023-03-03 09:36:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2549,
    'CHECKIN',
    '10',
    '2023-03-03 09:36:21',
    '2023-03-02 21:06:21',
    '2023-03-03 09:36:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2550,
    'CHECKIN',
    '11',
    '2023-03-03 09:57:33',
    '2023-03-02 21:27:33',
    '2023-03-03 09:57:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2551,
    'CHECKIN',
    '4',
    '2023-03-03 10:01:40',
    '2023-03-02 21:31:40',
    '2023-03-03 10:01:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2552,
    'BREAKIN',
    '3',
    '2023-03-03 10:46:26',
    '2023-03-02 22:16:26',
    '2023-03-03 10:46:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2553,
    'CHECKIN',
    '3',
    '2023-03-03 11:27:19',
    '2023-03-02 22:57:19',
    '2023-03-03 11:27:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2554,
    'BREAKIN',
    '3',
    '2023-03-03 11:27:20',
    '2023-03-02 22:57:20',
    '2023-03-03 11:27:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2555,
    'BREAKOUT',
    '3',
    '2023-03-03 11:27:22',
    '2023-03-02 22:57:22',
    '2023-03-03 11:27:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2556,
    'BREAKIN',
    '4',
    '2023-03-03 13:22:02',
    '2023-03-03 00:52:02',
    '2023-03-03 13:22:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2557,
    'BREAKIN',
    '9',
    '2023-03-03 13:22:05',
    '2023-03-03 00:52:05',
    '2023-03-03 13:22:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2558,
    'BREAKIN',
    '10',
    '2023-03-03 13:22:06',
    '2023-03-03 00:52:06',
    '2023-03-03 13:22:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2559,
    'BREAKIN',
    '5',
    '2023-03-03 13:22:06',
    '2023-03-03 00:52:06',
    '2023-03-03 13:22:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2560,
    'BREAKIN',
    '7',
    '2023-03-03 13:25:17',
    '2023-03-03 00:55:17',
    '2023-03-03 13:25:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2561,
    'BREAKIN',
    '3',
    '2023-03-03 13:31:18',
    '2023-03-03 01:01:18',
    '2023-03-03 13:31:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2562,
    'BREAKOUT',
    '5',
    '2023-03-03 13:37:51',
    '2023-03-03 01:07:51',
    '2023-03-03 13:37:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2563,
    'BREAKIN',
    '11',
    '2023-03-03 13:40:04',
    '2023-03-03 01:10:04',
    '2023-03-03 13:40:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2564,
    'BREAKOUT',
    '7',
    '2023-03-03 13:42:55',
    '2023-03-03 01:12:55',
    '2023-03-03 13:42:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2565,
    'BREAKOUT',
    '11',
    '2023-03-03 13:45:54',
    '2023-03-03 01:15:54',
    '2023-03-03 13:45:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2566,
    'CHECKOUT',
    '11',
    '2023-03-03 13:45:56',
    '2023-03-03 01:15:56',
    '2023-03-03 13:45:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2567,
    'BREAKOUT',
    '10',
    '2023-03-03 13:47:43',
    '2023-03-03 01:17:43',
    '2023-03-03 13:47:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2568,
    'BREAKOUT',
    '9',
    '2023-03-03 13:48:09',
    '2023-03-03 01:18:09',
    '2023-03-03 13:48:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2569,
    'BREAKOUT',
    '4',
    '2023-03-03 13:57:11',
    '2023-03-03 01:27:11',
    '2023-03-03 13:57:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2570,
    'BREAKOUT',
    '3',
    '2023-03-03 15:26:30',
    '2023-03-03 02:57:28',
    '2023-03-03 14:05:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2571,
    'CHECKOUT',
    '10',
    '2023-03-03 18:58:58',
    '2023-03-03 06:28:58',
    '2023-03-03 18:58:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2572,
    'CHECKOUT',
    '9',
    '2023-03-03 19:11:10',
    '2023-03-03 06:41:10',
    '2023-03-03 19:11:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2573,
    'CHECKOUT',
    '3',
    '2023-03-03 19:59:57',
    '2023-03-03 07:29:57',
    '2023-03-03 19:59:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2574,
    'CHECKOUT',
    '5',
    '2023-03-03 20:00:25',
    '2023-03-03 07:30:25',
    '2023-03-03 20:00:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2575,
    'CHECKOUT',
    '7',
    '2023-03-03 20:00:43',
    '2023-03-03 07:30:43',
    '2023-03-03 20:00:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2576,
    'CHECKOUT',
    '4',
    '2023-03-03 20:01:11',
    '2023-03-03 07:31:11',
    '2023-03-03 20:01:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2577,
    'CHECKIN',
    '3',
    '2023-03-06 09:06:58',
    '2023-03-05 20:36:58',
    '2023-03-06 09:06:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2578,
    'CHECKIN',
    '4',
    '2023-03-06 09:09:08',
    '2023-03-05 20:39:08',
    '2023-03-06 09:09:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2579,
    'CHECKIN',
    '5',
    '2023-03-06 09:25:01',
    '2023-03-05 20:55:01',
    '2023-03-06 09:25:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2580,
    'CHECKIN',
    '7',
    '2023-03-06 09:34:27',
    '2023-03-05 21:04:27',
    '2023-03-06 09:34:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2581,
    'CHECKIN',
    '9',
    '2023-03-06 09:40:30',
    '2023-03-05 21:10:30',
    '2023-03-06 09:40:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2582,
    'CHECKIN',
    '10',
    '2023-03-06 09:40:52',
    '2023-03-05 21:10:52',
    '2023-03-06 09:40:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2583,
    'BREAKIN',
    '3',
    '2023-03-06 12:11:36',
    '2023-03-05 23:41:36',
    '2023-03-06 12:11:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2584,
    'BREAKOUT',
    '3',
    '2023-03-06 13:07:20',
    '2023-03-06 00:37:20',
    '2023-03-06 13:07:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2585,
    'BREAKIN',
    '5',
    '2023-03-06 13:10:10',
    '2023-03-06 00:40:10',
    '2023-03-06 13:10:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2586,
    'BREAKIN',
    '9',
    '2023-03-06 13:10:15',
    '2023-03-06 00:40:15',
    '2023-03-06 13:10:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2587,
    'BREAKIN',
    '4',
    '2023-03-06 13:10:16',
    '2023-03-06 00:40:16',
    '2023-03-06 13:10:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2588,
    'BREAKIN',
    '7',
    '2023-03-06 13:11:16',
    '2023-03-06 00:41:16',
    '2023-03-06 13:11:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2589,
    'BREAKIN',
    '10',
    '2023-03-06 13:24:08',
    '2023-03-06 00:54:08',
    '2023-03-06 13:24:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2590,
    'BREAKOUT',
    '5',
    '2023-03-06 13:42:48',
    '2023-03-06 01:12:48',
    '2023-03-06 13:42:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2591,
    'BREAKOUT',
    '9',
    '2023-03-06 13:57:19',
    '2023-03-06 01:27:19',
    '2023-03-06 13:57:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2592,
    'BREAKOUT',
    '7',
    '2023-03-06 14:04:23',
    '2023-03-06 01:34:23',
    '2023-03-06 14:04:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2593,
    'BREAKOUT',
    '10',
    '2023-03-06 14:12:29',
    '2023-03-06 01:42:29',
    '2023-03-06 14:12:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2594,
    'BREAKOUT',
    '4',
    '2023-03-06 14:15:37',
    '2023-03-06 01:45:37',
    '2023-03-06 14:15:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2595,
    'CHECKOUT',
    '3',
    '2023-03-06 18:41:55',
    '2023-03-06 06:11:55',
    '2023-03-06 18:41:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2596,
    'CHECKOUT',
    '9',
    '2023-03-06 18:44:21',
    '2023-03-06 06:14:21',
    '2023-03-06 18:44:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2597,
    'CHECKOUT',
    '10',
    '2023-03-06 18:50:01',
    '2023-03-06 06:20:01',
    '2023-03-06 18:50:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2598,
    'CHECKOUT',
    '7',
    '2023-03-06 19:14:33',
    '2023-03-06 06:44:33',
    '2023-03-06 19:14:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2599,
    'CHECKOUT',
    '4',
    '2023-03-06 19:15:16',
    '2023-03-06 06:45:16',
    '2023-03-06 19:15:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2600,
    'CHECKOUT',
    '5',
    '2023-03-06 19:19:58',
    '2023-03-06 06:49:58',
    '2023-03-06 19:19:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2601,
    'CHECKIN',
    '4',
    '2023-03-07 09:10:52',
    '2023-03-06 20:40:52',
    '2023-03-07 09:10:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2602,
    'CHECKIN',
    '3',
    '2023-03-07 09:11:22',
    '2023-03-06 20:41:22',
    '2023-03-07 09:11:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2603,
    'CHECKIN',
    '5',
    '2023-03-07 09:26:02',
    '2023-03-06 20:56:02',
    '2023-03-07 09:26:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2604,
    'CHECKIN',
    '7',
    '2023-03-07 09:38:53',
    '2023-03-06 21:08:53',
    '2023-03-07 09:38:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2605,
    'CHECKIN',
    '10',
    '2023-03-07 09:43:04',
    '2023-03-06 21:13:04',
    '2023-03-07 09:43:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2606,
    'CHECKIN',
    '9',
    '2023-03-07 09:43:19',
    '2023-03-06 21:13:19',
    '2023-03-07 09:43:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2607,
    'CHECKIN',
    '11',
    '2023-03-07 09:44:26',
    '2023-03-06 21:14:26',
    '2023-03-07 09:44:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2608,
    'BREAKIN',
    '4',
    '2023-03-07 13:05:43',
    '2023-03-07 00:35:43',
    '2023-03-07 13:05:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2609,
    'BREAKIN',
    '11',
    '2023-03-07 13:06:23',
    '2023-03-07 00:36:23',
    '2023-03-07 13:06:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2610,
    'BREAKIN',
    '9',
    '2023-03-07 13:06:45',
    '2023-03-07 00:36:45',
    '2023-03-07 13:06:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2611,
    'BREAKIN',
    '7',
    '2023-03-07 13:07:05',
    '2023-03-07 00:37:05',
    '2023-03-07 13:07:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2612,
    'BREAKIN',
    '5',
    '2023-03-07 13:07:33',
    '2023-03-07 00:37:33',
    '2023-03-07 13:07:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2613,
    'BREAKIN',
    '3',
    '2023-03-07 13:24:38',
    '2023-03-07 00:54:38',
    '2023-03-07 13:24:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2614,
    'BREAKIN',
    '10',
    '2023-03-07 13:56:42',
    '2023-03-09 06:12:58',
    '2023-03-07 13:00:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2615,
    'BREAKOUT',
    '5',
    '2023-03-07 13:56:56',
    '2023-03-07 01:26:56',
    '2023-03-07 13:56:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2616,
    'BREAKOUT',
    '10',
    '2023-03-07 13:58:12',
    '2023-03-07 01:28:12',
    '2023-03-07 13:58:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2617,
    'BREAKOUT',
    '11',
    '2023-03-07 13:58:44',
    '2023-03-07 01:28:44',
    '2023-03-07 13:58:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2618,
    'BREAKOUT',
    '9',
    '2023-03-07 13:58:45',
    '2023-03-07 01:28:45',
    '2023-03-07 13:58:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2619,
    'BREAKOUT',
    '4',
    '2023-03-07 14:00:29',
    '2023-03-07 01:30:29',
    '2023-03-07 14:00:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2620,
    'BREAKOUT',
    '7',
    '2023-03-07 14:01:23',
    '2023-03-07 01:31:23',
    '2023-03-07 14:01:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2621,
    'BREAKOUT',
    '3',
    '2023-03-07 14:10:52',
    '2023-03-07 01:40:52',
    '2023-03-07 14:10:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2622,
    'CHECKOUT',
    '11',
    '2023-03-07 18:52:50',
    '2023-03-07 06:22:50',
    '2023-03-07 18:52:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2623,
    'CHECKOUT',
    '3',
    '2023-03-07 18:56:40',
    '2023-03-07 06:26:40',
    '2023-03-07 18:56:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2624,
    'CHECKOUT',
    '10',
    '2023-03-07 19:11:15',
    '2023-03-07 06:41:15',
    '2023-03-07 19:11:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2625,
    'CHECKOUT',
    '9',
    '2023-03-07 19:11:36',
    '2023-03-07 06:41:36',
    '2023-03-07 19:11:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2626,
    'CHECKOUT',
    '7',
    '2023-03-07 19:28:46',
    '2023-03-07 06:58:46',
    '2023-03-07 19:28:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2627,
    'CHECKOUT',
    '5',
    '2023-03-07 20:21:57',
    '2023-03-07 07:51:57',
    '2023-03-07 20:21:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2628,
    'CHECKOUT',
    '4',
    '2023-03-07 20:32:39',
    '2023-03-07 08:02:39',
    '2023-03-07 20:32:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2629,
    'CHECKIN',
    '3',
    '2023-03-09 09:15:59',
    '2023-03-08 20:45:59',
    '2023-03-09 09:16:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2630,
    'CHECKIN',
    '5',
    '2023-03-09 09:26:48',
    '2023-03-08 20:56:48',
    '2023-03-09 09:26:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2631,
    'CHECKIN',
    '4',
    '2023-03-09 09:29:33',
    '2023-03-08 20:59:33',
    '2023-03-09 09:29:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2632,
    'CHECKIN',
    '7',
    '2023-03-09 09:32:33',
    '2023-03-08 21:02:33',
    '2023-03-09 09:32:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2633,
    'CHECKIN',
    '10',
    '2023-03-09 09:39:43',
    '2023-03-08 21:09:43',
    '2023-03-09 09:39:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2634,
    'CHECKIN',
    '9',
    '2023-03-09 09:40:29',
    '2023-03-08 21:10:29',
    '2023-03-09 09:40:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2635,
    'CHECKIN',
    '11',
    '2023-03-09 09:41:25',
    '2023-03-08 21:11:25',
    '2023-03-09 09:41:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2636,
    'BREAKIN',
    '5',
    '2023-03-09 12:56:37',
    '2023-03-09 00:26:37',
    '2023-03-09 12:56:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2637,
    'BREAKIN',
    '7',
    '2023-03-09 13:01:28',
    '2023-03-09 00:31:28',
    '2023-03-09 13:01:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2638,
    'BREAKIN',
    '4',
    '2023-03-09 13:02:26',
    '2023-03-09 00:32:26',
    '2023-03-09 13:02:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2639,
    'BREAKIN',
    '3',
    '2023-03-09 13:02:56',
    '2023-03-09 00:32:56',
    '2023-03-09 13:02:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2640,
    'BREAKIN',
    '9',
    '2023-03-09 13:03:04',
    '2023-03-09 00:33:04',
    '2023-03-09 13:03:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2641,
    'BREAKIN',
    '10',
    '2023-03-09 13:03:27',
    '2023-03-09 00:33:27',
    '2023-03-09 13:03:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2642,
    'BREAKIN',
    '11',
    '2023-03-09 13:03:31',
    '2023-03-09 00:33:31',
    '2023-03-09 13:03:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2643,
    'BREAKOUT',
    '4',
    '2023-03-09 13:44:47',
    '2023-03-09 01:14:47',
    '2023-03-09 13:44:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2644,
    'BREAKOUT',
    '5',
    '2023-03-09 13:49:00',
    '2023-03-09 01:19:00',
    '2023-03-09 13:49:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2645,
    'BREAKOUT',
    '3',
    '2023-03-09 13:55:53',
    '2023-03-09 01:25:53',
    '2023-03-09 13:55:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2646,
    'BREAKIN',
    '3',
    '2023-03-09 13:56:09',
    '2023-03-09 01:26:58',
    '2023-03-09 13:56:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2647,
    'BREAKOUT',
    '3',
    '2023-03-09 13:57:08',
    '2023-03-09 01:27:08',
    '2023-03-09 13:57:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2648,
    'BREAKOUT',
    '10',
    '2023-03-09 13:57:54',
    '2023-03-09 01:27:54',
    '2023-03-09 13:57:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2649,
    'BREAKOUT',
    '7',
    '2023-03-09 13:58:02',
    '2023-03-09 01:28:02',
    '2023-03-09 13:58:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2650,
    'BREAKOUT',
    '11',
    '2023-03-09 13:58:21',
    '2023-03-09 01:28:21',
    '2023-03-09 13:58:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2651,
    'BREAKOUT',
    '9',
    '2023-03-09 14:00:47',
    '2023-03-09 01:30:47',
    '2023-03-09 14:00:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2652,
    'BREAKIN',
    '11',
    '2023-03-09 16:58:46',
    '2023-03-09 04:28:46',
    '2023-03-09 16:58:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2653,
    'BREAKIN',
    '9',
    '2023-03-09 16:58:46',
    '2023-03-09 04:28:46',
    '2023-03-09 16:58:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2654,
    'BREAKOUT',
    '11',
    '2023-03-09 17:18:47',
    '2023-03-09 04:48:47',
    '2023-03-09 17:18:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2655,
    'BREAKOUT',
    '9',
    '2023-03-09 17:18:47',
    '2023-03-09 04:48:47',
    '2023-03-09 17:18:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2656,
    'BREAKIN',
    '10',
    '2023-03-09 17:18:59',
    '2023-03-09 06:12:06',
    '2023-03-09 17:00:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2657,
    'BREAKIN',
    '4',
    '2023-03-09 17:29:46',
    '2023-03-09 04:59:46',
    '2023-03-09 17:29:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2658,
    'BREAKOUT',
    '4',
    '2023-03-09 17:46:39',
    '2023-03-09 05:16:39',
    '2023-03-09 17:46:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2659,
    'BREAKOUT',
    '10',
    '2023-03-09 18:38:18',
    '2023-03-09 06:12:25',
    '2023-03-09 17:20:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2660,
    'CHECKOUT',
    '11',
    '2023-03-09 19:07:11',
    '2023-03-09 06:37:11',
    '2023-03-09 19:07:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2661,
    'CHECKOUT',
    '9',
    '2023-03-09 19:11:47',
    '2023-03-09 06:41:47',
    '2023-03-09 19:11:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2662,
    'CHECKOUT',
    '10',
    '2023-03-09 19:11:53',
    '2023-03-09 06:41:53',
    '2023-03-09 19:11:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2663,
    'CHECKOUT',
    '3',
    '2023-03-09 19:34:17',
    '2023-03-09 07:04:17',
    '2023-03-09 19:34:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2664,
    'CHECKOUT',
    '5',
    '2023-03-09 19:38:12',
    '2023-03-09 07:08:12',
    '2023-03-09 19:38:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2665,
    'CHECKOUT',
    '4',
    '2023-03-09 19:38:28',
    '2023-03-09 07:08:28',
    '2023-03-09 19:38:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2666,
    'CHECKOUT',
    '7',
    '2023-03-09 19:40:40',
    '2023-03-09 07:10:40',
    '2023-03-09 19:40:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2667,
    'CHECKIN',
    '3',
    '2023-03-10 09:38:27',
    '2023-03-09 21:08:27',
    '2023-03-10 09:38:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2668,
    'CHECKIN',
    '4',
    '2023-03-10 09:39:15',
    '2023-03-09 21:09:15',
    '2023-03-10 09:39:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2669,
    'CHECKIN',
    '9',
    '2023-03-10 09:40:20',
    '2023-03-09 21:10:20',
    '2023-03-10 09:40:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2670,
    'CHECKIN',
    '7',
    '2023-03-10 09:41:00',
    '2023-03-09 21:11:00',
    '2023-03-10 09:41:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2671,
    'CHECKIN',
    '11',
    '2023-03-10 09:48:33',
    '2023-03-09 21:18:33',
    '2023-03-10 09:48:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2672,
    'BREAKIN',
    '4',
    '2023-03-10 13:10:37',
    '2023-03-10 00:40:37',
    '2023-03-10 13:10:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2673,
    'BREAKIN',
    '9',
    '2023-03-10 13:11:23',
    '2023-03-10 00:41:23',
    '2023-03-10 13:11:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2674,
    'CHECKIN',
    '5',
    '2023-03-10 13:12:15',
    '2023-03-10 00:59:14',
    '2023-03-10 09:30:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2675,
    'CHECKIN',
    '5',
    '2023-03-10 13:12:17',
    '2023-03-10 01:00:03',
    '2023-03-10 09:30:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2676,
    'BREAKIN',
    '11',
    '2023-03-10 13:12:22',
    '2023-03-10 00:42:22',
    '2023-03-10 13:12:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2677,
    'BREAKIN',
    '5',
    '2023-03-10 13:12:26',
    '2023-03-10 00:42:26',
    '2023-03-10 13:12:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2678,
    'CHECKIN',
    '10',
    '2023-03-10 13:12:29',
    '2023-03-10 00:58:12',
    '2023-03-10 09:40:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2679,
    'BREAKIN',
    '10',
    '2023-03-10 13:12:34',
    '2023-03-10 00:42:34',
    '2023-03-10 13:12:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2680,
    'BREAKIN',
    '7',
    '2023-03-10 13:12:42',
    '2023-03-10 00:42:42',
    '2023-03-10 13:12:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2681,
    'BREAKIN',
    '3',
    '2023-03-10 13:13:03',
    '2023-03-10 00:43:03',
    '2023-03-10 13:13:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2682,
    'CHECKOUT',
    '10',
    '2023-03-10 13:28:42',
    '2023-03-10 00:58:42',
    '2023-03-02 19:11:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2683,
    'BREAKOUT',
    '5',
    '2023-03-10 13:29:37',
    '2023-03-10 00:59:37',
    '2023-03-10 13:29:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2684,
    'CHECKOUT',
    '5',
    '2023-03-10 13:30:54',
    '2023-03-10 01:00:54',
    '2023-03-02 19:14:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2685,
    'BREAKOUT',
    '10',
    '2023-03-10 14:02:50',
    '2023-03-10 01:32:50',
    '2023-03-10 14:02:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2686,
    'BREAKOUT',
    '7',
    '2023-03-10 14:04:19',
    '2023-03-10 01:34:19',
    '2023-03-10 14:04:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2687,
    'BREAKOUT',
    '4',
    '2023-03-10 14:09:31',
    '2023-03-10 01:39:31',
    '2023-03-10 14:09:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2688,
    'BREAKOUT',
    '9',
    '2023-03-10 14:10:01',
    '2023-03-10 01:40:01',
    '2023-03-10 14:10:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2689,
    'BREAKOUT',
    '11',
    '2023-03-10 14:10:02',
    '2023-03-10 01:40:02',
    '2023-03-10 14:10:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2690,
    'BREAKOUT',
    '3',
    '2023-03-10 14:12:03',
    '2023-03-10 01:42:03',
    '2023-03-10 14:12:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2691,
    'BREAKIN',
    '9',
    '2023-03-10 17:15:52',
    '2023-03-10 04:45:52',
    '2023-03-10 17:15:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2692,
    'BREAKIN',
    '11',
    '2023-03-10 17:16:03',
    '2023-03-10 04:46:03',
    '2023-03-10 17:16:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2693,
    'BREAKIN',
    '10',
    '2023-03-10 17:16:04',
    '2023-03-10 04:46:04',
    '2023-03-10 17:16:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2694,
    'BREAKIN',
    '4',
    '2023-03-10 17:22:46',
    '2023-03-10 04:52:46',
    '2023-03-10 17:22:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2695,
    'BREAKOUT',
    '10',
    '2023-03-10 17:31:04',
    '2023-03-10 05:01:04',
    '2023-03-10 17:31:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2696,
    'BREAKOUT',
    '11',
    '2023-03-10 17:31:04',
    '2023-03-10 05:01:04',
    '2023-03-10 17:31:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2697,
    'BREAKOUT',
    '9',
    '2023-03-10 17:31:34',
    '2023-03-10 05:01:34',
    '2023-03-10 17:31:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2698,
    'BREAKOUT',
    '4',
    '2023-03-10 17:40:03',
    '2023-03-10 05:10:03',
    '2023-03-10 17:40:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2699,
    'BREAKIN',
    '7',
    '2023-03-10 17:51:02',
    '2023-03-10 05:21:02',
    '2023-03-10 17:51:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2700,
    'BREAKOUT',
    '7',
    '2023-03-10 18:05:52',
    '2023-03-10 05:35:52',
    '2023-03-10 18:05:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2701,
    'CHECKOUT',
    '10',
    '2023-03-10 18:57:16',
    '2023-03-10 06:27:16',
    '2023-03-10 18:57:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2702,
    'CHECKOUT',
    '9',
    '2023-03-10 18:57:58',
    '2023-03-10 06:27:58',
    '2023-03-10 18:57:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2703,
    'CHECKOUT',
    '3',
    '2023-03-10 19:00:56',
    '2023-03-10 06:30:56',
    '2023-03-10 19:00:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2704,
    'CHECKOUT',
    '4',
    '2023-03-10 19:02:46',
    '2023-03-10 06:32:46',
    '2023-03-10 19:02:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2705,
    'CHECKOUT',
    '11',
    '2023-03-10 19:03:35',
    '2023-03-10 06:33:35',
    '2023-03-10 19:03:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2706,
    'CHECKOUT',
    '5',
    '2023-03-10 19:03:50',
    '2023-03-10 06:33:50',
    '2023-03-10 19:03:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2707,
    'CHECKIN',
    '3',
    '2023-03-11 09:31:25',
    '2023-03-10 21:01:25',
    '2023-03-11 09:31:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2708,
    'CHECKIN',
    '5',
    '2023-03-11 09:31:45',
    '2023-03-10 21:01:45',
    '2023-03-11 09:31:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2709,
    'CHECKIN',
    '9',
    '2023-03-11 09:32:04',
    '2023-03-10 21:02:04',
    '2023-03-11 09:32:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2710,
    'CHECKIN',
    '4',
    '2023-03-11 09:32:32',
    '2023-03-10 21:02:32',
    '2023-03-11 09:32:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2711,
    'CHECKIN',
    '7',
    '2023-03-11 09:32:43',
    '2023-03-10 21:02:43',
    '2023-03-11 09:32:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2712,
    'CHECKIN',
    '10',
    '2023-03-11 09:35:53',
    '2023-03-10 21:05:53',
    '2023-03-11 09:35:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2713,
    'CHECKIN',
    '11',
    '2023-03-11 09:48:11',
    '2023-03-10 21:18:11',
    '2023-03-11 09:48:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2714,
    'BREAKIN',
    '5',
    '2023-03-11 13:07:16',
    '2023-03-11 00:37:16',
    '2023-03-11 13:07:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2715,
    'BREAKIN',
    '7',
    '2023-03-11 13:11:46',
    '2023-03-11 00:41:46',
    '2023-03-11 13:11:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2716,
    'BREAKIN',
    '9',
    '2023-03-11 13:19:47',
    '2023-03-11 00:49:47',
    '2023-03-11 13:19:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2717,
    'BREAKIN',
    '11',
    '2023-03-11 13:19:54',
    '2023-03-11 00:49:54',
    '2023-03-11 13:19:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2718,
    'BREAKIN',
    '10',
    '2023-03-11 13:19:56',
    '2023-03-11 00:49:56',
    '2023-03-11 13:19:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2719,
    'BREAKIN',
    '4',
    '2023-03-11 13:20:25',
    '2023-03-11 00:50:25',
    '2023-03-11 13:20:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2720,
    'BREAKOUT',
    '5',
    '2023-03-11 13:56:28',
    '2023-03-11 01:26:28',
    '2023-03-11 13:56:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2721,
    'BREAKOUT',
    '4',
    '2023-03-11 14:08:45',
    '2023-03-11 01:38:45',
    '2023-03-11 14:08:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2722,
    'BREAKOUT',
    '9',
    '2023-03-11 14:18:16',
    '2023-03-11 01:48:16',
    '2023-03-11 14:18:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2723,
    'BREAKOUT',
    '10',
    '2023-03-11 14:18:35',
    '2023-03-11 01:48:35',
    '2023-03-11 14:18:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2724,
    'BREAKOUT',
    '11',
    '2023-03-11 14:18:52',
    '2023-03-11 01:48:52',
    '2023-03-11 14:18:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2725,
    'BREAKOUT',
    '7',
    '2023-03-11 14:21:36',
    '2023-03-11 01:51:36',
    '2023-03-11 14:21:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2726,
    'CHECKOUT',
    '10',
    '2023-03-11 18:33:54',
    '2023-03-11 06:03:54',
    '2023-03-11 18:33:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2727,
    'CHECKOUT',
    '3',
    '2023-03-11 18:33:58',
    '2023-03-11 06:03:58',
    '2023-03-11 18:33:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2728,
    'BREAKIN',
    '5',
    '2023-03-11 18:34:03',
    '2023-03-11 06:04:03',
    '2023-03-11 18:34:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2729,
    'BREAKOUT',
    '5',
    '2023-03-11 18:34:05',
    '2023-03-11 06:04:05',
    '2023-03-11 18:34:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2730,
    'CHECKOUT',
    '7',
    '2023-03-11 18:34:05',
    '2023-03-11 06:04:05',
    '2023-03-11 18:34:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2731,
    'CHECKOUT',
    '5',
    '2023-03-11 18:34:06',
    '2023-03-11 06:04:06',
    '2023-03-11 18:34:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2732,
    'CHECKOUT',
    '9',
    '2023-03-11 18:35:11',
    '2023-03-11 06:05:11',
    '2023-03-11 18:35:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2733,
    'CHECKOUT',
    '4',
    '2023-03-11 18:37:28',
    '2023-03-11 06:07:28',
    '2023-03-11 18:37:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2734,
    'CHECKOUT',
    '11',
    '2023-03-11 18:42:00',
    '2023-03-11 06:12:00',
    '2023-03-11 18:41:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2735,
    'CHECKIN',
    '3',
    '2023-03-13 09:14:11',
    '2023-03-12 20:44:11',
    '2023-03-13 09:14:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2736,
    'CHECKIN',
    '5',
    '2023-03-13 09:19:46',
    '2023-03-12 20:49:46',
    '2023-03-13 09:19:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2737,
    'CHECKIN',
    '4',
    '2023-03-13 09:30:39',
    '2023-03-12 21:00:39',
    '2023-03-13 09:30:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2738,
    'CHECKIN',
    '10',
    '2023-03-13 09:45:26',
    '2023-03-12 21:15:26',
    '2023-03-13 09:45:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2739,
    'CHECKIN',
    '9',
    '2023-03-13 09:47:51',
    '2023-03-12 21:17:51',
    '2023-03-13 09:47:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2740,
    'CHECKIN',
    '11',
    '2023-03-13 09:58:59',
    '2023-03-12 21:28:59',
    '2023-03-13 09:58:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2741,
    'CHECKIN',
    '7',
    '2023-03-13 10:17:06',
    '2023-03-12 21:47:06',
    '2023-03-13 10:17:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2742,
    'BREAKIN',
    '7',
    '2023-03-13 13:01:49',
    '2023-03-13 00:31:49',
    '2023-03-13 13:01:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2743,
    'BREAKIN',
    '5',
    '2023-03-13 13:02:50',
    '2023-03-13 00:32:50',
    '2023-03-13 13:02:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2744,
    'BREAKIN',
    '4',
    '2023-03-13 13:03:08',
    '2023-03-13 00:33:08',
    '2023-03-13 13:03:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2745,
    'BREAKIN',
    '9',
    '2023-03-13 13:03:10',
    '2023-03-13 00:33:10',
    '2023-03-13 13:03:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2746,
    'BREAKIN',
    '11',
    '2023-03-13 13:03:26',
    '2023-03-13 00:33:26',
    '2023-03-13 13:03:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2747,
    'BREAKIN',
    '3',
    '2023-03-13 13:16:05',
    '2023-03-13 00:46:05',
    '2023-03-13 13:16:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2748,
    'BREAKOUT',
    '9',
    '2023-03-13 13:19:25',
    '2023-03-13 00:49:25',
    '2023-03-13 13:19:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2749,
    'CHECKOUT',
    '9',
    '2023-03-13 13:19:26',
    '2023-03-13 00:49:26',
    '2023-03-13 13:19:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2750,
    'CHECKOUT',
    '10',
    '2023-03-13 13:38:11',
    '2023-03-13 01:08:11',
    '2023-03-13 13:38:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2751,
    'BREAKOUT',
    '4',
    '2023-03-13 13:57:51',
    '2023-03-13 01:27:51',
    '2023-03-13 13:57:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2752,
    'BREAKOUT',
    '5',
    '2023-03-13 13:57:58',
    '2023-03-13 01:27:58',
    '2023-03-13 13:57:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2753,
    'BREAKOUT',
    '7',
    '2023-03-13 13:58:12',
    '2023-03-13 01:28:12',
    '2023-03-13 13:58:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2754,
    'BREAKIN',
    '7',
    '2023-03-13 13:58:53',
    '2023-03-13 01:28:53',
    '2023-03-13 13:58:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2755,
    'BREAKOUT',
    '7',
    '2023-03-13 13:58:55',
    '2023-03-13 01:28:55',
    '2023-03-13 13:58:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2756,
    'BREAKOUT',
    '11',
    '2023-03-13 14:01:05',
    '2023-03-13 01:31:05',
    '2023-03-13 14:01:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2757,
    'BREAKOUT',
    '3',
    '2023-03-13 14:01:52',
    '2023-03-13 01:31:52',
    '2023-03-13 14:01:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2758,
    'BREAKIN',
    '4',
    '2023-03-13 16:55:16',
    '2023-03-13 04:25:16',
    '2023-03-13 16:55:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2759,
    'BREAKIN',
    '11',
    '2023-03-13 17:03:40',
    '2023-03-13 04:33:40',
    '2023-03-13 17:03:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2760,
    'BREAKOUT',
    '4',
    '2023-03-13 17:12:04',
    '2023-03-13 04:42:04',
    '2023-03-13 17:12:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2761,
    'BREAKOUT',
    '11',
    '2023-03-13 17:17:22',
    '2023-03-13 04:47:22',
    '2023-03-13 17:17:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2762,
    'CHECKOUT',
    '3',
    '2023-03-13 18:48:02',
    '2023-03-13 06:18:02',
    '2023-03-13 18:48:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2763,
    'CHECKOUT',
    '4',
    '2023-03-13 19:08:04',
    '2023-03-13 06:38:04',
    '2023-03-13 19:08:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2764,
    'CHECKOUT',
    '5',
    '2023-03-13 19:09:15',
    '2023-03-13 06:39:15',
    '2023-03-13 19:09:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2765,
    'CHECKOUT',
    '11',
    '2023-03-13 19:11:16',
    '2023-03-13 06:41:16',
    '2023-03-13 19:11:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2766,
    'CHECKOUT',
    '7',
    '2023-03-13 19:13:41',
    '2023-03-13 06:43:41',
    '2023-03-13 19:13:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2767,
    'CHECKIN',
    '3',
    '2023-03-14 09:13:29',
    '2023-03-13 20:43:29',
    '2023-03-14 09:13:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2768,
    'CHECKIN',
    '4',
    '2023-03-14 09:14:58',
    '2023-03-13 20:44:58',
    '2023-03-14 09:15:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2769,
    'CHECKIN',
    '5',
    '2023-03-14 09:22:07',
    '2023-03-13 20:52:07',
    '2023-03-14 09:22:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2770,
    'CHECKIN',
    '10',
    '2023-03-14 09:45:56',
    '2023-03-13 21:15:56',
    '2023-03-14 09:45:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2771,
    'CHECKIN',
    '7',
    '2023-03-14 09:51:17',
    '2023-03-13 21:21:17',
    '2023-03-14 09:51:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2772,
    'CHECKIN',
    '11',
    '2023-03-14 09:52:16',
    '2023-03-13 21:22:16',
    '2023-03-14 09:52:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2773,
    'BREAKIN',
    '7',
    '2023-03-14 13:02:26',
    '2023-03-14 00:32:26',
    '2023-03-14 13:02:27'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2774,
    'BREAKIN',
    '11',
    '2023-03-14 13:02:42',
    '2023-03-14 00:32:42',
    '2023-03-14 13:02:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2775,
    'BREAKIN',
    '5',
    '2023-03-14 13:02:48',
    '2023-03-14 00:32:48',
    '2023-03-14 13:02:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2776,
    'BREAKIN',
    '10',
    '2023-03-14 13:02:50',
    '2023-03-14 00:32:50',
    '2023-03-14 13:02:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2777,
    'BREAKIN',
    '3',
    '2023-03-14 13:18:01',
    '2023-03-14 00:48:01',
    '2023-03-14 13:18:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2778,
    'BREAKOUT',
    '11',
    '2023-03-14 13:56:53',
    '2023-03-14 01:26:53',
    '2023-03-14 13:56:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2779,
    'BREAKOUT',
    '7',
    '2023-03-14 13:57:27',
    '2023-03-14 01:27:27',
    '2023-03-14 13:57:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2780,
    'BREAKOUT',
    '10',
    '2023-03-14 14:02:49',
    '2023-03-14 01:32:49',
    '2023-03-14 14:02:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2781,
    'BREAKOUT',
    '3',
    '2023-03-14 14:08:48',
    '2023-03-14 01:38:48',
    '2023-03-14 14:08:44'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2782,
    'CHECKIN',
    '3',
    '2023-03-15 09:16:06',
    '2023-03-14 20:46:06',
    '2023-03-15 09:16:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2783,
    'CHECKIN',
    '5',
    '2023-03-15 09:26:54',
    '2023-03-14 20:56:54',
    '2023-03-15 09:26:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2784,
    'CHECKIN',
    '9',
    '2023-03-15 09:30:26',
    '2023-03-14 21:00:26',
    '2023-03-15 09:30:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2785,
    'CHECKIN',
    '4',
    '2023-03-15 09:32:55',
    '2023-03-14 21:02:55',
    '2023-03-15 09:32:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2786,
    'CHECKIN',
    '10',
    '2023-03-15 09:32:57',
    '2023-03-14 21:02:57',
    '2023-03-15 09:32:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2787,
    'CHECKIN',
    '11',
    '2023-03-15 10:13:06',
    '2023-03-14 21:43:06',
    '2023-03-15 10:13:05'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2788,
    'BREAKIN',
    '9',
    '2023-03-15 13:18:29',
    '2023-03-15 00:48:29',
    '2023-03-15 13:18:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2789,
    'BREAKIN',
    '5',
    '2023-03-15 13:18:33',
    '2023-03-15 00:48:33',
    '2023-03-15 13:18:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2790,
    'BREAKIN',
    '4',
    '2023-03-15 13:19:00',
    '2023-03-15 00:49:00',
    '2023-03-15 13:19:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2791,
    'BREAKIN',
    '10',
    '2023-03-15 13:19:36',
    '2023-03-15 00:49:36',
    '2023-03-15 13:19:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2792,
    'CHECKIN',
    '7',
    '2023-03-15 13:23:14',
    '2023-03-15 00:53:14',
    '2023-03-15 13:23:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2793,
    'BREAKIN',
    '7',
    '2023-03-15 13:23:16',
    '2023-03-15 00:53:16',
    '2023-03-15 13:23:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2794,
    'BREAKOUT',
    '4',
    '2023-03-15 13:58:29',
    '2023-03-15 01:28:29',
    '2023-03-15 13:58:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2795,
    'BREAKOUT',
    '9',
    '2023-03-15 13:58:31',
    '2023-03-15 01:28:31',
    '2023-03-15 13:58:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2796,
    'BREAKOUT',
    '5',
    '2023-03-15 14:02:16',
    '2023-03-15 01:32:16',
    '2023-03-15 14:02:16'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2797,
    'BREAKOUT',
    '7',
    '2023-03-15 14:03:16',
    '2023-03-15 01:33:16',
    '2023-03-15 14:03:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2798,
    'BREAKIN',
    '11',
    '2023-03-15 14:26:28',
    '2023-03-15 01:56:28',
    '2023-03-15 14:26:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2799,
    'BREAKOUT',
    '11',
    '2023-03-15 15:11:22',
    '2023-03-15 02:41:22',
    '2023-03-15 15:11:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2800,
    'BREAKOUT',
    '10',
    '2023-03-15 17:01:31',
    '2023-03-15 04:31:31',
    '2023-03-15 17:01:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2801,
    'BREAKIN',
    '10',
    '2023-03-15 17:01:40',
    '2023-03-15 04:31:40',
    '2023-03-15 17:01:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2802,
    'BREAKIN',
    '4',
    '2023-03-15 17:17:11',
    '2023-03-15 04:47:11',
    '2023-03-15 17:17:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2803,
    'BREAKOUT',
    '10',
    '2023-03-15 17:26:49',
    '2023-03-15 04:56:49',
    '2023-03-15 17:26:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2804,
    'BREAKOUT',
    '4',
    '2023-03-15 17:31:57',
    '2023-03-15 05:01:57',
    '2023-03-15 17:31:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2805,
    'BREAKIN',
    '7',
    '2023-03-15 17:50:59',
    '2023-03-15 05:20:59',
    '2023-03-15 17:50:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2806,
    'BREAKOUT',
    '7',
    '2023-03-15 17:51:20',
    '2023-03-15 05:21:20',
    '2023-03-15 17:51:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2807,
    'CHECKOUT',
    '10',
    '2023-03-15 19:00:42',
    '2023-03-15 06:30:42',
    '2023-03-15 19:00:42'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2808,
    'CHECKOUT',
    '9',
    '2023-03-15 19:02:05',
    '2023-03-15 06:32:05',
    '2023-03-15 19:02:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2809,
    'CHECKOUT',
    '11',
    '2023-03-15 19:06:34',
    '2023-03-15 06:36:34',
    '2023-03-15 19:06:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2810,
    'CHECKOUT',
    '3',
    '2023-03-15 19:10:13',
    '2023-03-15 06:40:13',
    '2023-03-15 19:10:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2811,
    'CHECKOUT',
    '4',
    '2023-03-15 19:11:18',
    '2023-03-15 06:41:18',
    '2023-03-15 19:11:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2812,
    'CHECKOUT',
    '5',
    '2023-03-15 19:12:34',
    '2023-03-15 06:42:34',
    '2023-03-15 19:12:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2813,
    'CHECKOUT',
    '7',
    '2023-03-15 19:14:14',
    '2023-03-15 06:44:14',
    '2023-03-15 19:14:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2814,
    'CHECKIN',
    '3',
    '2023-03-16 09:14:33',
    '2023-03-15 20:44:33',
    '2023-03-16 09:14:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2815,
    'CHECKIN',
    '4',
    '2023-03-16 09:21:34',
    '2023-03-15 20:51:34',
    '2023-03-16 09:21:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2816,
    'CHECKIN',
    '5',
    '2023-03-16 09:33:01',
    '2023-03-15 21:03:01',
    '2023-03-16 09:33:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2817,
    'CHECKIN',
    '10',
    '2023-03-16 09:40:59',
    '2023-03-15 21:10:59',
    '2023-03-16 09:40:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2818,
    'CHECKIN',
    '11',
    '2023-03-16 10:07:05',
    '2023-03-15 21:37:05',
    '2023-03-16 10:07:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2819,
    'CHECKIN',
    '7',
    '2023-03-16 10:19:10',
    '2023-03-15 21:49:10',
    '2023-03-16 10:19:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2820,
    'BREAKIN',
    '5',
    '2023-03-16 13:06:25',
    '2023-03-16 00:36:25',
    '2023-03-16 13:06:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2821,
    'BREAKOUT',
    '5',
    '2023-03-16 13:07:08',
    '2023-03-16 00:37:08',
    '2023-03-16 13:07:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2822,
    'BREAKIN',
    '5',
    '2023-03-16 13:18:30',
    '2023-03-16 00:48:30',
    '2023-03-16 13:18:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2823,
    'BREAKIN',
    '4',
    '2023-03-16 13:19:03',
    '2023-03-16 00:49:03',
    '2023-03-16 13:19:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2824,
    'BREAKIN',
    '10',
    '2023-03-16 13:19:13',
    '2023-03-16 00:49:13',
    '2023-03-16 13:19:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2825,
    'BREAKIN',
    '3',
    '2023-03-16 13:27:17',
    '2023-03-16 00:57:17',
    '2023-03-16 13:27:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2826,
    'BREAKIN',
    '11',
    '2023-03-16 13:30:22',
    '2023-03-16 01:00:22',
    '2023-03-16 13:30:22'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2827,
    'BREAKIN',
    '7',
    '2023-03-16 13:35:50',
    '2023-03-16 01:05:50',
    '2023-03-16 13:35:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2828,
    'CHECKIN',
    '9',
    '2023-03-16 13:42:40',
    '2023-03-16 01:12:40',
    '2023-03-16 13:42:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2829,
    'BREAKOUT',
    '7',
    '2023-03-16 13:55:29',
    '2023-03-16 01:25:29',
    '2023-03-16 13:55:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2830,
    'BREAKOUT',
    '4',
    '2023-03-16 14:06:48',
    '2023-03-16 01:36:48',
    '2023-03-16 14:06:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2831,
    'BREAKOUT',
    '4',
    '2023-03-16 14:06:51',
    '2023-03-16 01:36:51',
    '2023-03-16 14:06:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2832,
    'BREAKOUT',
    '10',
    '2023-03-16 14:10:59',
    '2023-03-16 01:40:59',
    '2023-03-16 14:10:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2833,
    'BREAKOUT',
    '5',
    '2023-03-16 14:11:40',
    '2023-03-16 01:41:40',
    '2023-03-16 14:11:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2834,
    'BREAKOUT',
    '3',
    '2023-03-16 14:15:11',
    '2023-03-16 01:45:11',
    '2023-03-16 14:15:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2835,
    'BREAKOUT',
    '11',
    '2023-03-16 14:15:41',
    '2023-03-16 01:45:41',
    '2023-03-16 14:15:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2836,
    'BREAKIN',
    '4',
    '2023-03-16 17:21:48',
    '2023-03-16 04:51:48',
    '2023-03-16 17:21:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2837,
    'BREAKIN',
    '11',
    '2023-03-16 17:22:39',
    '2023-03-16 04:52:39',
    '2023-03-16 17:22:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2838,
    'BREAKIN',
    '10',
    '2023-03-16 17:22:41',
    '2023-03-16 04:52:41',
    '2023-03-16 17:22:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2839,
    'BREAKOUT',
    '10',
    '2023-03-16 17:33:13',
    '2023-03-16 05:03:13',
    '2023-03-16 17:33:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2840,
    'BREAKOUT',
    '11',
    '2023-03-16 17:34:09',
    '2023-03-16 05:04:09',
    '2023-03-16 17:34:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2841,
    'BREAKOUT',
    '4',
    '2023-03-16 17:42:52',
    '2023-03-16 05:12:52',
    '2023-03-16 17:42:51'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2842,
    'CHECKOUT',
    '10',
    '2023-03-16 19:01:31',
    '2023-03-16 06:31:31',
    '2023-03-16 19:01:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2843,
    'CHECKOUT',
    '11',
    '2023-03-16 19:14:10',
    '2023-03-16 06:44:10',
    '2023-03-16 19:14:09'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2844,
    'CHECKOUT',
    '3',
    '2023-03-16 19:15:42',
    '2023-03-16 06:45:42',
    '2023-03-16 19:15:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2845,
    'CHECKOUT',
    '5',
    '2023-03-16 19:20:39',
    '2023-03-16 06:50:39',
    '2023-03-16 19:20:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2846,
    'CHECKOUT',
    '4',
    '2023-03-16 19:30:08',
    '2023-03-16 07:00:08',
    '2023-03-16 19:30:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2847,
    'CHECKOUT',
    '9',
    '2023-03-16 19:30:31',
    '2023-03-16 07:00:31',
    '2023-03-16 19:30:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2848,
    'CHECKOUT',
    '7',
    '2023-03-16 19:31:28',
    '2023-03-16 07:01:28',
    '2023-03-16 19:31:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2849,
    'CHECKIN',
    '3',
    '2023-03-17 09:19:44',
    '2023-03-16 20:49:44',
    '2023-03-17 09:19:45'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2850,
    'CHECKIN',
    '4',
    '2023-03-17 09:31:48',
    '2023-03-16 21:01:48',
    '2023-03-17 09:31:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2851,
    'CHECKIN',
    '5',
    '2023-03-17 09:45:35',
    '2023-03-16 21:15:35',
    '2023-03-17 09:45:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2852,
    'CHECKIN',
    '10',
    '2023-03-17 09:48:33',
    '2023-03-16 21:18:33',
    '2023-03-17 09:48:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2853,
    'CHECKIN',
    '11',
    '2023-03-17 10:06:56',
    '2023-03-16 21:36:56',
    '2023-03-17 10:06:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2854,
    'CHECKIN',
    '11',
    '2023-03-17 10:06:58',
    '2023-03-16 21:36:58',
    '2023-03-17 10:06:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2855,
    'BREAKIN',
    '4',
    '2023-03-17 13:04:31',
    '2023-03-17 00:34:31',
    '2023-03-17 13:04:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2856,
    'BREAKIN',
    '5',
    '2023-03-17 13:05:33',
    '2023-03-17 00:35:33',
    '2023-03-17 13:05:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2857,
    'BREAKIN',
    '10',
    '2023-03-17 13:05:33',
    '2023-03-17 00:35:33',
    '2023-03-17 13:05:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2858,
    'BREAKIN',
    '11',
    '2023-03-17 13:05:37',
    '2023-03-17 00:35:37',
    '2023-03-17 13:05:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2859,
    'BREAKIN',
    '3',
    '2023-03-17 13:18:42',
    '2023-03-17 00:48:42',
    '2023-03-17 13:18:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2860,
    'BREAKOUT',
    '5',
    '2023-03-17 13:45:32',
    '2023-03-17 01:15:32',
    '2023-03-17 13:45:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2861,
    'BREAKOUT',
    '10',
    '2023-03-17 13:49:28',
    '2023-03-17 01:19:28',
    '2023-03-17 13:49:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2862,
    'BREAKOUT',
    '11',
    '2023-03-17 13:49:58',
    '2023-03-17 01:19:58',
    '2023-03-17 13:49:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2863,
    'BREAKOUT',
    '4',
    '2023-03-17 13:50:12',
    '2023-03-17 01:20:12',
    '2023-03-17 13:50:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2864,
    'BREAKOUT',
    '3',
    '2023-03-17 14:13:21',
    '2023-03-17 01:43:21',
    '2023-03-17 14:13:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2865,
    'CHECKIN',
    '3',
    '2023-03-21 08:32:14',
    '2023-03-20 20:02:14',
    '2023-03-21 08:32:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2866,
    'CHECKIN',
    '4',
    '2023-03-21 08:48:40',
    '2023-03-20 20:18:40',
    '2023-03-21 08:48:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2867,
    'CHECKIN',
    '5',
    '2023-03-21 09:19:03',
    '2023-03-20 20:49:03',
    '2023-03-21 09:19:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2868,
    'CHECKIN',
    '10',
    '2023-03-21 09:43:01',
    '2023-03-20 21:13:01',
    '2023-03-21 09:43:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2869,
    'CHECKIN',
    '9',
    '2023-03-21 09:43:47',
    '2023-03-20 21:13:47',
    '2023-03-21 09:43:47'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2870,
    'CHECKIN',
    '11',
    '2023-03-21 09:44:29',
    '2023-03-20 21:14:29',
    '2023-03-21 09:44:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2871,
    'CHECKIN',
    '7',
    '2023-03-21 09:49:50',
    '2023-03-20 21:19:50',
    '2023-03-21 09:49:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2872,
    'BREAKIN',
    '4',
    '2023-03-21 13:15:10',
    '2023-03-21 00:45:10',
    '2023-03-21 13:15:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2873,
    'BREAKIN',
    '5',
    '2023-03-21 13:15:11',
    '2023-03-21 00:45:11',
    '2023-03-21 13:15:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2874,
    'BREAKIN',
    '9',
    '2023-03-21 13:15:21',
    '2023-03-21 00:45:21',
    '2023-03-21 13:15:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2875,
    'BREAKIN',
    '10',
    '2023-03-21 13:15:44',
    '2023-03-21 00:45:44',
    '2023-03-21 13:15:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2876,
    'BREAKIN',
    '11',
    '2023-03-21 13:15:57',
    '2023-03-21 00:45:57',
    '2023-03-21 13:15:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2877,
    'BREAKIN',
    '3',
    '2023-03-21 13:28:00',
    '2023-03-21 00:58:00',
    '2023-03-21 13:28:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2878,
    'BREAKOUT',
    '11',
    '2023-03-21 14:03:34',
    '2023-03-21 01:33:34',
    '2023-03-21 14:03:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2879,
    'BREAKOUT',
    '9',
    '2023-03-21 14:03:37',
    '2023-03-21 01:33:37',
    '2023-03-21 14:03:37'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2880,
    'BREAKOUT',
    '10',
    '2023-03-21 14:08:21',
    '2023-03-21 01:38:21',
    '2023-03-21 14:08:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2881,
    'BREAKOUT',
    '5',
    '2023-03-21 14:08:34',
    '2023-03-21 01:38:34',
    '2023-03-21 14:08:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2882,
    'BREAKOUT',
    '3',
    '2023-03-21 14:11:15',
    '2023-03-21 01:41:15',
    '2023-03-21 14:11:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2883,
    'BREAKOUT',
    '4',
    '2023-03-21 14:14:32',
    '2023-03-21 01:44:32',
    '2023-03-21 14:14:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2884,
    'BREAKIN',
    '4',
    '2023-03-21 16:20:01',
    '2023-03-21 03:50:01',
    '2023-03-21 16:20:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2885,
    'BREAKOUT',
    '4',
    '2023-03-21 16:35:41',
    '2023-03-21 04:05:41',
    '2023-03-21 16:35:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2886,
    'BREAKIN',
    '9',
    '2023-03-21 16:59:08',
    '2023-03-21 04:29:08',
    '2023-03-21 16:59:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2887,
    'BREAKIN',
    '11',
    '2023-03-21 16:59:20',
    '2023-03-21 04:29:20',
    '2023-03-21 16:59:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2888,
    'BREAKOUT',
    '11',
    '2023-03-21 16:59:33',
    '2023-03-21 04:29:33',
    '2023-03-21 16:59:33'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2889,
    'BREAKOUT',
    '9',
    '2023-03-21 17:01:04',
    '2023-03-21 04:31:04',
    '2023-03-21 17:01:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2890,
    'BREAKIN',
    '9',
    '2023-03-21 17:01:59',
    '2023-03-21 04:31:59',
    '2023-03-21 17:01:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2891,
    'BREAKIN',
    '11',
    '2023-03-21 17:02:07',
    '2023-03-21 04:32:07',
    '2023-03-21 17:02:07'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2892,
    'BREAKIN',
    '10',
    '2023-03-21 17:03:01',
    '2023-03-21 04:33:01',
    '2023-03-21 17:03:00'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2893,
    'BREAKOUT',
    '10',
    '2023-03-21 17:24:17',
    '2023-03-21 04:54:17',
    '2023-03-21 17:24:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2894,
    'BREAKOUT',
    '11',
    '2023-03-21 17:24:23',
    '2023-03-21 04:54:23',
    '2023-03-21 17:24:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2895,
    'BREAKOUT',
    '9',
    '2023-03-21 17:24:32',
    '2023-03-21 04:54:32',
    '2023-03-21 17:24:28'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2896,
    'BREAKIN',
    '7',
    '2023-03-21 17:50:11',
    '2023-03-21 05:20:11',
    '2023-03-21 17:50:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2897,
    'BREAKOUT',
    '7',
    '2023-03-21 18:10:40',
    '2023-03-21 05:40:40',
    '2023-03-21 18:10:39'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2898,
    'BREAKIN',
    '3',
    '2023-03-21 18:19:01',
    '2023-03-21 05:49:01',
    '2023-03-21 18:19:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2899,
    'BREAKOUT',
    '3',
    '2023-03-21 18:48:00',
    '2023-03-21 06:18:00',
    '2023-03-21 18:47:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2900,
    'CHECKOUT',
    '4',
    '2023-03-21 18:56:48',
    '2023-03-21 06:26:48',
    '2023-03-21 18:56:48'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2901,
    'CHECKOUT',
    '11',
    '2023-03-21 19:21:38',
    '2023-03-21 06:51:38',
    '2023-03-21 19:21:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2902,
    'CHECKOUT',
    '10',
    '2023-03-21 19:27:55',
    '2023-03-21 06:57:55',
    '2023-03-21 19:27:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2903,
    'CHECKOUT',
    '9',
    '2023-03-21 19:30:26',
    '2023-03-21 07:00:26',
    '2023-03-21 19:30:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2904,
    'CHECKOUT',
    '5',
    '2023-03-21 19:33:03',
    '2023-03-21 07:03:03',
    '2023-03-21 19:32:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2905,
    'CHECKOUT',
    '3',
    '2023-03-21 19:34:06',
    '2023-03-21 07:04:06',
    '2023-03-21 19:34:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2906,
    'CHECKOUT',
    '7',
    '2023-03-21 19:36:02',
    '2023-03-21 07:06:02',
    '2023-03-21 19:35:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2907,
    'CHECKIN',
    '3',
    '2023-03-22 08:30:31',
    '2023-03-21 20:00:31',
    '2023-03-22 08:30:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2908,
    'CHECKIN',
    '5',
    '2023-03-22 09:23:42',
    '2023-03-21 20:53:42',
    '2023-03-22 09:23:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2909,
    'CHECKIN',
    '4',
    '2023-03-22 09:31:31',
    '2023-03-21 21:01:31',
    '2023-03-22 09:31:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2910,
    'CHECKIN',
    '10',
    '2023-03-22 09:44:30',
    '2023-03-21 21:14:30',
    '2023-03-22 09:44:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2911,
    'CHECKIN',
    '9',
    '2023-03-22 09:45:58',
    '2023-03-21 21:15:58',
    '2023-03-22 09:45:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2912,
    'CHECKIN',
    '11',
    '2023-03-22 09:54:12',
    '2023-03-21 21:24:12',
    '2023-03-22 09:54:10'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2913,
    'CHECKIN',
    '7',
    '2023-03-22 10:25:32',
    '2023-03-21 21:55:32',
    '2023-03-22 10:25:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2914,
    'BREAKIN',
    '5',
    '2023-03-22 13:17:14',
    '2023-03-22 00:47:14',
    '2023-03-22 13:17:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2915,
    'BREAKIN',
    '4',
    '2023-03-22 13:18:10',
    '2023-03-22 00:48:10',
    '2023-03-22 13:18:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2916,
    'BREAKIN',
    '3',
    '2023-03-22 13:18:31',
    '2023-03-22 00:48:31',
    '2023-03-22 13:18:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2917,
    'BREAKIN',
    '9',
    '2023-03-22 13:18:40',
    '2023-03-22 00:48:40',
    '2023-03-22 13:18:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2918,
    'BREAKIN',
    '11',
    '2023-03-22 13:19:05',
    '2023-03-22 00:49:05',
    '2023-03-22 13:19:04'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2919,
    'BREAKIN',
    '7',
    '2023-03-22 13:19:30',
    '2023-03-22 00:49:30',
    '2023-03-22 13:19:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2920,
    'BREAKIN',
    '10',
    '2023-03-22 13:40:53',
    '2023-03-22 01:10:53',
    '2023-03-22 13:40:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2921,
    'BREAKOUT',
    '4',
    '2023-03-22 14:05:39',
    '2023-03-22 01:35:39',
    '2023-03-22 14:05:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2922,
    'BREAKOUT',
    '9',
    '2023-03-22 14:09:32',
    '2023-03-22 01:39:32',
    '2023-03-22 14:09:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2923,
    'BREAKOUT',
    '3',
    '2023-03-22 14:12:52',
    '2023-03-22 01:42:52',
    '2023-03-22 14:12:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2924,
    'BREAKOUT',
    '5',
    '2023-03-22 14:13:21',
    '2023-03-22 01:43:21',
    '2023-03-22 14:13:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2925,
    'BREAKOUT',
    '11',
    '2023-03-22 14:13:26',
    '2023-03-22 01:43:26',
    '2023-03-22 14:13:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2926,
    'BREAKOUT',
    '7',
    '2023-03-22 14:16:02',
    '2023-03-22 01:46:02',
    '2023-03-22 14:16:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2927,
    'BREAKOUT',
    '10',
    '2023-03-22 15:53:20',
    '2023-03-22 03:23:20',
    '2023-03-22 15:53:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2928,
    'BREAKIN',
    '4',
    '2023-03-22 17:18:34',
    '2023-03-22 04:48:34',
    '2023-03-22 17:18:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2929,
    'BREAKIN',
    '7',
    '2023-03-22 17:19:13',
    '2023-03-22 04:49:13',
    '2023-03-22 17:19:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2930,
    'BREAKIN',
    '5',
    '2023-03-22 17:37:17',
    '2023-03-22 05:07:17',
    '2023-03-22 17:37:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2931,
    'BREAKOUT',
    '4',
    '2023-03-22 17:38:32',
    '2023-03-22 05:08:32',
    '2023-03-22 17:38:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2932,
    'BREAKOUT',
    '7',
    '2023-03-22 17:41:58',
    '2023-03-22 05:11:58',
    '2023-03-22 17:41:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2933,
    'BREAKOUT',
    '5',
    '2023-03-22 17:55:41',
    '2023-03-22 05:25:41',
    '2023-03-22 17:55:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2934,
    'CHECKOUT',
    '4',
    '2023-03-22 19:03:25',
    '2023-03-22 06:33:25',
    '2023-03-22 19:03:26'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2935,
    'CHECKOUT',
    '9',
    '2023-03-22 19:05:00',
    '2023-03-22 06:35:00',
    '2023-03-22 19:04:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2936,
    'CHECKOUT',
    '10',
    '2023-03-22 19:20:16',
    '2023-03-22 06:50:16',
    '2023-03-22 19:20:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2937,
    'CHECKOUT',
    '3',
    '2023-03-22 19:27:12',
    '2023-03-22 06:57:12',
    '2023-03-22 19:27:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2938,
    'CHECKOUT',
    '5',
    '2023-03-22 19:27:47',
    '2023-03-22 06:57:47',
    '2023-03-22 19:27:46'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2939,
    'CHECKOUT',
    '11',
    '2023-03-22 19:27:56',
    '2023-03-22 06:57:56',
    '2023-03-22 19:27:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2940,
    'CHECKOUT',
    '7',
    '2023-03-22 19:52:06',
    '2023-03-22 07:22:06',
    '2023-03-22 19:52:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2941,
    'CHECKIN',
    '4',
    '2023-03-23 08:48:22',
    '2023-03-22 20:18:22',
    '2023-03-23 08:48:24'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2942,
    'CHECKIN',
    '3',
    '2023-03-23 09:06:54',
    '2023-03-22 20:36:54',
    '2023-03-23 09:06:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2943,
    'CHECKIN',
    '5',
    '2023-03-23 09:23:31',
    '2023-03-22 20:53:31',
    '2023-03-23 09:23:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2944,
    'CHECKIN',
    '10',
    '2023-03-23 09:51:06',
    '2023-03-22 21:21:06',
    '2023-03-23 09:51:06'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2945,
    'CHECKIN',
    '11',
    '2023-03-23 10:07:11',
    '2023-03-22 21:37:11',
    '2023-03-23 10:07:11'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2946,
    'CHECKIN',
    '7',
    '2023-03-23 10:15:53',
    '2023-03-22 21:45:53',
    '2023-03-23 10:15:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2947,
    'BREAKIN',
    '11',
    '2023-03-23 13:08:56',
    '2023-03-23 00:38:56',
    '2023-03-23 13:08:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2948,
    'BREAKIN',
    '3',
    '2023-03-23 13:09:00',
    '2023-03-23 00:39:00',
    '2023-03-23 13:08:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2949,
    'BREAKIN',
    '4',
    '2023-03-23 13:09:21',
    '2023-03-23 00:39:21',
    '2023-03-23 13:09:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2950,
    'BREAKIN',
    '5',
    '2023-03-23 13:10:02',
    '2023-03-23 00:40:02',
    '2023-03-23 13:10:02'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2951,
    'BREAKIN',
    '10',
    '2023-03-23 13:10:25',
    '2023-03-23 00:40:25',
    '2023-03-23 13:10:25'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2952,
    'BREAKOUT',
    '10',
    '2023-03-23 14:06:41',
    '2023-03-23 01:36:41',
    '2023-03-23 14:06:40'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2953,
    'BREAKOUT',
    '11',
    '2023-03-23 14:06:53',
    '2023-03-23 01:36:53',
    '2023-03-23 14:06:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2954,
    'BREAKOUT',
    '4',
    '2023-03-23 14:10:50',
    '2023-03-23 01:40:50',
    '2023-03-23 14:10:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2955,
    'BREAKOUT',
    '3',
    '2023-03-23 14:11:19',
    '2023-03-23 01:41:19',
    '2023-03-23 14:11:18'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2956,
    'BREAKOUT',
    '5',
    '2023-03-23 14:11:22',
    '2023-03-23 01:41:22',
    '2023-03-23 14:11:21'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2957,
    'CHECKOUT',
    '7',
    '2023-03-23 19:01:29',
    '2023-03-23 06:31:29',
    '2023-03-23 19:01:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2958,
    'CHECKOUT',
    '3',
    '2023-03-23 19:01:32',
    '2023-03-23 06:31:32',
    '2023-03-23 19:01:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2959,
    'CHECKOUT',
    '5',
    '2023-03-23 19:01:36',
    '2023-03-23 06:31:36',
    '2023-03-23 19:01:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2960,
    'CHECKOUT',
    '11',
    '2023-03-23 19:02:08',
    '2023-03-23 06:32:08',
    '2023-03-23 19:02:08'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2961,
    'CHECKOUT',
    '10',
    '2023-03-23 19:02:13',
    '2023-03-23 06:32:13',
    '2023-03-23 19:02:13'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2962,
    'CHECKOUT',
    '4',
    '2023-03-23 20:12:35',
    '2023-03-23 07:42:35',
    '2023-03-23 20:12:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2963,
    'CHECKIN',
    '3',
    '2023-03-24 09:10:35',
    '2023-03-23 20:40:35',
    '2023-03-24 09:10:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2964,
    'CHECKIN',
    '4',
    '2023-03-24 09:22:59',
    '2023-03-23 20:52:59',
    '2023-03-24 09:23:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2965,
    'CHECKIN',
    '5',
    '2023-03-24 09:27:22',
    '2023-03-23 20:57:22',
    '2023-03-24 09:27:23'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2966,
    'CHECKIN',
    '9',
    '2023-03-24 09:37:03',
    '2023-03-23 21:07:03',
    '2023-03-24 09:37:03'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2967,
    'CHECKIN',
    '10',
    '2023-03-24 09:39:29',
    '2023-03-23 21:09:29',
    '2023-03-24 09:39:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2968,
    'CHECKIN',
    '7',
    '2023-03-24 09:50:35',
    '2023-03-23 21:20:35',
    '2023-03-24 09:50:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2969,
    'CHECKIN',
    '11',
    '2023-03-24 09:57:34',
    '2023-03-23 21:27:34',
    '2023-03-24 09:57:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2970,
    'BREAKIN',
    '4',
    '2023-03-24 11:43:31',
    '2023-03-23 23:13:31',
    '2023-03-24 11:43:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2971,
    'BREAKOUT',
    '4',
    '2023-03-24 11:54:54',
    '2023-03-23 23:24:54',
    '2023-03-24 11:54:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2972,
    'BREAKIN',
    '9',
    '2023-03-24 13:14:39',
    '2023-03-24 00:44:39',
    '2023-03-24 13:14:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2973,
    'BREAKIN',
    '4',
    '2023-03-24 13:14:49',
    '2023-03-24 00:44:49',
    '2023-03-24 13:14:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2974,
    'BREAKIN',
    '11',
    '2023-03-24 13:14:49',
    '2023-03-24 00:44:49',
    '2023-03-24 13:14:49'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2975,
    'BREAKIN',
    '5',
    '2023-03-24 13:15:01',
    '2023-03-24 00:45:01',
    '2023-03-24 13:15:01'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2976,
    'BREAKIN',
    '10',
    '2023-03-24 13:15:19',
    '2023-03-24 00:45:19',
    '2023-03-24 13:15:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2977,
    'BREAKIN',
    '3',
    '2023-03-24 13:20:43',
    '2023-03-24 00:50:43',
    '2023-03-24 13:20:43'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2978,
    'BREAKIN',
    '7',
    '2023-03-24 13:24:14',
    '2023-03-24 00:54:14',
    '2023-03-24 13:24:15'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2979,
    'BREAKOUT',
    '4',
    '2023-03-24 14:06:38',
    '2023-03-24 01:36:38',
    '2023-03-24 14:06:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2980,
    'BREAKOUT',
    '11',
    '2023-03-24 14:10:51',
    '2023-03-24 01:40:51',
    '2023-03-24 14:10:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2981,
    'BREAKOUT',
    '5',
    '2023-03-24 14:11:32',
    '2023-03-24 01:41:32',
    '2023-03-24 14:11:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2982,
    'BREAKOUT',
    '7',
    '2023-03-24 14:13:33',
    '2023-03-24 01:43:33',
    '2023-03-24 14:13:32'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2983,
    'BREAKOUT',
    '3',
    '2023-03-24 14:15:12',
    '2023-03-24 01:45:12',
    '2023-03-24 14:15:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2984,
    'BREAKOUT',
    '10',
    '2023-03-24 14:16:35',
    '2023-03-24 01:46:35',
    '2023-03-24 14:16:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2985,
    'BREAKOUT',
    '9',
    '2023-03-24 15:46:14',
    '2023-03-24 03:16:14',
    '2023-03-24 15:46:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2986,
    'BREAKIN',
    '4',
    '2023-03-24 16:42:28',
    '2023-03-24 04:12:28',
    '2023-03-24 16:42:29'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2987,
    'BREAKOUT',
    '4',
    '2023-03-24 16:57:54',
    '2023-03-24 04:27:54',
    '2023-03-24 16:57:54'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2988,
    'BREAKIN',
    '9',
    '2023-03-24 17:00:59',
    '2023-03-24 04:30:59',
    '2023-03-24 17:00:58'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2989,
    'BREAKIN',
    '10',
    '2023-03-24 17:01:18',
    '2023-03-24 04:31:18',
    '2023-03-24 17:01:17'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2990,
    'BREAKOUT',
    '9',
    '2023-03-24 17:14:56',
    '2023-03-24 04:44:56',
    '2023-03-24 17:14:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2991,
    'BREAKOUT',
    '10',
    '2023-03-24 17:15:00',
    '2023-03-24 04:45:00',
    '2023-03-24 17:14:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2992,
    'CHECKOUT',
    '10',
    '2023-03-24 19:06:35',
    '2023-03-24 06:36:35',
    '2023-03-24 19:06:35'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2993,
    'CHECKOUT',
    '9',
    '2023-03-24 19:11:57',
    '2023-03-24 06:41:57',
    '2023-03-24 19:11:57'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2994,
    'CHECKOUT',
    '4',
    '2023-03-24 19:12:54',
    '2023-03-24 06:42:54',
    '2023-03-24 19:12:55'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2995,
    'CHECKOUT',
    '5',
    '2023-03-24 19:20:37',
    '2023-03-24 06:50:37',
    '2023-03-24 19:20:38'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2996,
    'CHECKIN',
    '4',
    '2023-03-25 09:04:11',
    '2023-03-24 20:34:11',
    '2023-03-25 09:04:12'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2997,
    'CHECKIN',
    '5',
    '2023-03-25 09:29:58',
    '2023-03-24 20:59:58',
    '2023-03-25 09:29:59'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2998,
    'CHECKIN',
    '10',
    '2023-03-25 10:03:20',
    '2023-03-24 21:33:20',
    '2023-03-25 10:03:20'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    2999,
    'BREAKIN',
    '4',
    '2023-03-25 11:56:14',
    '2023-03-24 23:26:14',
    '2023-03-25 11:56:14'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    3000,
    'BREAKOUT',
    '4',
    '2023-03-25 12:12:44',
    '2023-03-24 23:42:44',
    '2023-03-25 12:12:41'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    3001,
    'BREAKIN',
    '4',
    '2023-03-25 13:04:53',
    '2023-03-25 00:34:53',
    '2023-03-25 13:04:53'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    3002,
    'BREAKIN',
    '5',
    '2023-03-25 13:08:31',
    '2023-03-25 00:38:31',
    '2023-03-25 13:08:31'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    3003,
    'BREAKOUT',
    '4',
    '2023-03-25 13:56:31',
    '2023-03-25 01:26:31',
    '2023-03-25 13:56:30'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    3004,
    'BREAKIN',
    '10',
    '2023-03-25 14:03:34',
    '2023-03-25 01:33:34',
    '2023-03-25 14:03:34'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    3005,
    'BREAKOUT',
    '5',
    '2023-03-25 14:03:52',
    '2023-03-25 01:33:52',
    '2023-03-25 14:03:50'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    3006,
    'BREAKOUT',
    '10',
    '2023-03-25 14:03:52',
    '2023-03-25 01:33:52',
    '2023-03-25 14:03:52'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    3007,
    'CHECKIN',
    '9',
    '2023-03-25 16:04:36',
    '2023-03-25 03:34:36',
    '2023-03-25 16:04:36'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    3008,
    'CHECKOUT',
    '9',
    '2023-03-25 19:10:19',
    '2023-03-25 06:40:19',
    '2023-03-25 19:10:19'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    3009,
    'CHECKOUT',
    '5',
    '2023-03-25 19:13:56',
    '2023-03-25 06:43:56',
    '2023-03-25 19:13:56'
  );
INSERT INTO
  `timeentries` (
    `id`,
    `type`,
    `loggedBy`,
    `created_at`,
    `updated_at`,
    `timestamp`
  )
VALUES
  (
    3010,
    'CHECKOUT',
    '10',
    '2023-03-25 19:18:51',
    '2023-03-25 06:48:51',
    '2023-03-25 19:18:50'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: users
# ------------------------------------------------------------

INSERT INTO
  `users` (
    `userId`,
    `lastName`,
    `firstName`,
    `email`,
    `password`,
    `role`,
    `profilePic`,
    `tempToken`
  )
VALUES
  (
    1,
    'last_name',
    'kemin',
    'keminkasundra@gmail.com',
    '$2a$10$bH7UGx4G8lRUpqj7OhHwnux7YI0owZgefStTvqgb1wzYuZrxlyUHC',
    1,
    NULL,
    NULL
  );
INSERT INTO
  `users` (
    `userId`,
    `lastName`,
    `firstName`,
    `email`,
    `password`,
    `role`,
    `profilePic`,
    `tempToken`
  )
VALUES
  (
    2,
    'Panchal',
    'Tejash',
    'tejashpanchal@hubresolution.com',
    '$2a$10$wv4xM4LnWIK.zidMNZQS4OhY1H3TLbYpEOyb0flzgkHVVqJdJDE/6',
    0,
    NULL,
    NULL
  );
INSERT INTO
  `users` (
    `userId`,
    `lastName`,
    `firstName`,
    `email`,
    `password`,
    `role`,
    `profilePic`,
    `tempToken`
  )
VALUES
  (
    3,
    'Jivani',
    'Mayur',
    'mayur.hubresolution@gmail.com',
    '$2a$10$KCxIJNkrKDNpUF9Uo62e9e2QDfjLl4AKex2Dv37sa67mqAzi24lVO',
    0,
    NULL,
    NULL
  );
INSERT INTO
  `users` (
    `userId`,
    `lastName`,
    `firstName`,
    `email`,
    `password`,
    `role`,
    `profilePic`,
    `tempToken`
  )
VALUES
  (
    4,
    'Thummar',
    'Jaydeep',
    'jaydeep.hubresolution@gmail.com',
    '$2a$10$.jQBrsJvrhR8GxKyofrswepqbFMI1FBcIwMayScS46PRl6quzyqVu',
    0,
    NULL,
    NULL
  );
INSERT INTO
  `users` (
    `userId`,
    `lastName`,
    `firstName`,
    `email`,
    `password`,
    `role`,
    `profilePic`,
    `tempToken`
  )
VALUES
  (
    5,
    'Kansara',
    'Mihir',
    'mihir.hubresolution@gmail.com',
    '$2a$10$z6NpJSchGwNPBgp/.jDoRucCAJfQah7anzkaQG0dl5YtmFbje64t6',
    0,
    NULL,
    NULL
  );
INSERT INTO
  `users` (
    `userId`,
    `lastName`,
    `firstName`,
    `email`,
    `password`,
    `role`,
    `profilePic`,
    `tempToken`
  )
VALUES
  (
    6,
    'Sapkal',
    'Rajavi',
    'rajavi.hubresolution@gmail.com',
    '$2a$10$AyLOnhozpKRBiQO8X1esy.ZBjr1Cmev9rEEK71Aps3ZNcD9euIDXi',
    0,
    NULL,
    NULL
  );
INSERT INTO
  `users` (
    `userId`,
    `lastName`,
    `firstName`,
    `email`,
    `password`,
    `role`,
    `profilePic`,
    `tempToken`
  )
VALUES
  (
    7,
    'Jadeja',
    'Vrajraj',
    'vrajraj.hubresolution@gmail.com',
    '$2a$10$8VCKbdRgzTciKGko0BiX9OEANPLfKPIkbWV6aWN8KOOkhGkJSqf.q',
    0,
    NULL,
    NULL
  );
INSERT INTO
  `users` (
    `userId`,
    `lastName`,
    `firstName`,
    `email`,
    `password`,
    `role`,
    `profilePic`,
    `tempToken`
  )
VALUES
  (
    8,
    'Kalaria',
    'Neel',
    'hubresolutions@gmail.com',
    '$2a$10$CjdeU3t4T1aYTLdUT6XA8.v3VPQnYMWB1.aRknWdLXn.BPw702aI.',
    1,
    NULL,
    NULL
  );
INSERT INTO
  `users` (
    `userId`,
    `lastName`,
    `firstName`,
    `email`,
    `password`,
    `role`,
    `profilePic`,
    `tempToken`
  )
VALUES
  (
    9,
    'Shimpi',
    'Meet',
    'meet.hubresolution@gmail.com',
    '$2a$10$P1EhfAb3hBtKcyHLDzhYNuOwd7mFRKzQBXTxvtCreSKLpHadnrkQG',
    0,
    NULL,
    NULL
  );
INSERT INTO
  `users` (
    `userId`,
    `lastName`,
    `firstName`,
    `email`,
    `password`,
    `role`,
    `profilePic`,
    `tempToken`
  )
VALUES
  (
    10,
    'Prajapati',
    'Parth',
    'parth.hubresolution@gmail.com',
    '$2a$10$sQgLKfGyWSEwGnEfK.qup.DPYmNWzWZzmZrtwwqNT8eDcG.qckv8C',
    0,
    NULL,
    NULL
  );
INSERT INTO
  `users` (
    `userId`,
    `lastName`,
    `firstName`,
    `email`,
    `password`,
    `role`,
    `profilePic`,
    `tempToken`
  )
VALUES
  (
    11,
    'Parmar',
    'Pavan',
    'pavan.hubresolution@gmail.com',
    '$2a$10$dWYGfzIOVpEHVD7uA50WEOGpxoNf0eVG42ySt.tj9Twf6hNWpTfRm',
    0,
    NULL,
    NULL
  );
INSERT INTO
  `users` (
    `userId`,
    `lastName`,
    `firstName`,
    `email`,
    `password`,
    `role`,
    `profilePic`,
    `tempToken`
  )
VALUES
  (
    12,
    'Dave',
    'Hiren',
    'hiren.hubresolution@gmail.com',
    '$2a$10$c2N8IzG2ezDoTeu3JRSCxOo2esFppU2K36LFhm.bUVwG9t3XyVkhi',
    0,
    NULL,
    NULL
  );

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
