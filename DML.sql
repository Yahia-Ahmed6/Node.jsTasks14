----------DML------------
INSERT INTO member_plan 
	(plan_name)
VALUES
	('Basic'),('Premium'),('VIP');
-------------------------
INSERT INTO member
    (name, email, phone_number, start_date, plan_id)
VALUES
    ('Ahmed Ali', 'ahmed@gmail.com', '01012345678', '2026-01-10', 1),
    ('Sara Mohamed', 'sara@gmail.com', '01123456789', '2026-02-15', 2),
    ('Omar Hassan', 'omar@gmail.com', '01234567890', '2026-03-01', 3),
    ('Mariam Adel', 'mariam@gmail.com', '01098765432', '2026-03-20', 2),
    ('Youssef Khaled', 'youssef@gmail.com', '01187654321', '2026-04-05', 1);
-------------------------
INSERT INTO locker 
	(locker_number, member_id)
VALUES
    (101, 1),
    (102, 2),
    (103, 3),
    (104, 4),
    (105, 5);
-------------------------
INSERT INTO trainer
    (name, specialty, years_experience)
VALUES
    ('Mohamed Samir', 'Weights', 7),
    ('Nour Ahmed', 'Yoga', 5),
    ('Khaled Mostafa', 'Cardio', 10),
    ('Salma Hany', 'HIIT', 4);	
-------------------------

INSERT INTO class
    (class_name, scheduled_time, duration, max_capacity, trainer_id)
VALUES
    ('Morning Yoga', '2026-10-10 09:00:00', 60, 20, 2),

    ('HIIT Bootcamp', '2026-10-10 18:00:00', 45, 15, 4),

    ('Weight Training', '2026-10-11 17:00:00', 90, 10, 1),

    ('Cardio Blast', '2026-10-12 19:00:00', 60, 25, 3),

    ('Advanced Yoga', '2026-10-13 10:00:00', 75, 15, 2);
------------------------
INSERT INTO booking 
	(member_id, class_id)
VALUES
    (1, 1),
    (1, 2),
    (2, 1),
    (2, 3),
    (3, 2),
    (3, 4),
    (4, 1),
    (4, 5),
    (5, 3);
------------------------

	