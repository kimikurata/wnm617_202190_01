CREATE TABLE IF NOT EXISTS `track_users` (
`id` INT NULL,
`name` VARCHAR(MAX) NULL,
`username` VARCHAR(MAX) NULL,
`email` VARCHAR(MAX) NULL,
`password` VARCHAR(MAX) NULL,
`img` VARCHAR(MAX) NULL,
`date_create` VARCHAR(MAX) NULL
);

INSERT INTO track_users VALUES
(1,'Lacy Hall','user1','user1@gmail.com',md5("pass"),'https://via.placeholder.com/400/C3B7AD/fff/?text=user1','2021-09-22 08:21:17'),
(2,'Mollie Townsend','user2','user2@gmail.com',md5("pass"),'https://via.placeholder.com/400/85A5DD/fff/?text=user2','2020-07-09 02:02:41'),
(3,'Sheila Mathis','user3','user3@gmail.com',md5("pass"),'https://via.placeholder.com/400/85A5DD/fff/?text=user3','2020-10-08 02:21:16'),
(4,'Underwood Black','user4','user4@gmail.com',md5("pass"),'https://via.placeholder.com/400/85A5DD/fff/?text=user4','2021-05-29 08:14:02'),
(5,'Kristi Garrett','user5','user5@gmail.com',md5("pass"),'https://via.placeholder.com/400/45567A/fff/?text=user5','2021-06-24 04:51:56'),
(6,'Ramona Roach','user6','user6@gmail.com',md5("pass"),'https://via.placeholder.com/400/85A5DD/fff/?text=user6','2021-07-01 11:47:41'),
(7,'Mullen Todd','user7','user7@gmail.com',md5("pass"),'https://via.placeholder.com/400/45567A/fff/?text=user7','2020-04-02 11:30:39'),
(8,'Noelle George','user8','user8@gmail.com',md5("pass"),'https://via.placeholder.com/400/85A5DD/fff/?text=user8','2021-10-12 11:54:08'),
(9,'Jeannie Gay','user9','user9@gmail.com',md5("pass"),'https://via.placeholder.com/400/F295A0/fff/?text=user9','2020-07-18 05:09:01'),
(10,'Ruby Cleveland','user10','user10@gmail.com',md5("pass"),'https://via.placeholder.com/400/C3B7AD/fff/?text=user10','2020-09-01 10:52:08');