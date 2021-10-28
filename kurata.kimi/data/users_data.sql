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
(1,'Casandra Holman','user1','user1@gmail.com',md5("pass"),'https://via.placeholder.com/400/864/fff/?text=user1','2021-02-22 11:28:26'),
(2,'Dyer Hendrix','user2','user2@gmail.com',md5("pass"),'https://via.placeholder.com/400/848/fff/?text=user2','2021-02-01 04:27:24'),
(3,'Lynch Sheppard','user3','user3@gmail.com',md5("pass"),'https://via.placeholder.com/400/907/fff/?text=user3','2021-07-09 11:44:15'),
(4,'Bonita Barnett','user4','user4@gmail.com',md5("pass"),'https://via.placeholder.com/400/834/fff/?text=user4','2021-08-25 11:05:59'),
(5,'Corine Lawson','user5','user5@gmail.com',md5("pass"),'https://via.placeholder.com/400/857/fff/?text=user5','2020-02-08 07:21:00'),
(6,'Decker Dyer','user6','user6@gmail.com',md5("pass"),'https://via.placeholder.com/400/817/fff/?text=user6','2020-04-13 06:25:29'),
(7,'Tameka Wilkerson','user7','user7@gmail.com',md5("pass"),'https://via.placeholder.com/400/962/fff/?text=user7','2020-09-28 02:18:52'),
(8,'Sonia Gillespie','user8','user8@gmail.com',md5("pass"),'https://via.placeholder.com/400/958/fff/?text=user8','2020-11-25 09:28:51'),
(9,'Peck Harding','user9','user9@gmail.com',md5("pass"),'https://via.placeholder.com/400/836/fff/?text=user9','2020-12-25 11:08:24'),
(10,'Sosa Cobb','user10','user10@gmail.com',md5("pass"),'https://via.placeholder.com/400/883/fff/?text=user10','2021-04-19 08:16:09');