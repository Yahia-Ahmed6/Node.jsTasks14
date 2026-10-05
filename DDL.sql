--CREATE DATABASE gym_management;
---------DDL----------

CREATE TABLE member_plan(
		plan_id SERIAL PRIMARY KEY,
		plan_name VARCHAR(100) NOT NULL UNIQUE
);

---------------------
CREATE TABLE member (
    member_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(20) NOT NULL,
    start_date DATE NOT NULL DEFAULT CURRENT_DATE,

    plan_id INT NOT NULL,
    CONSTRAINT fk_member_plan
        FOREIGN KEY (plan_id)
        REFERENCES member_plan(plan_id)
);
---------------------
CREATE TABLE locker (
    locker_id SERIAL PRIMARY KEY,
    locker_number INT NOT NULL UNIQUE,

    member_id INT NOT NULL UNIQUE,
    CONSTRAINT fk_locker_member
        FOREIGN KEY (member_id)
        REFERENCES member(member_id)
        ON DELETE CASCADE
);
---------------------
CREATE TABLE trainer (
    trainer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialty VARCHAR(100) NOT NULL,
    years_experience INT NOT NULL,

    CONSTRAINT chk_experience
        CHECK (years_experience >= 0)
);
---------------------
CREATE TABLE class (
    class_id SERIAL PRIMARY KEY,
    class_name VARCHAR(100) NOT NULL,
    scheduled_time TIMESTAMP NOT NULL,
    duration INT NOT NULL,
    max_capacity INT NOT NULL,

    trainer_id INT NOT NULL,

    CONSTRAINT fk_class_trainer
        FOREIGN KEY (trainer_id)
        REFERENCES trainer(trainer_id),

    CONSTRAINT chk_duration
        CHECK (duration > 0),

    CONSTRAINT chk_capacity
        CHECK (max_capacity > 0)
);
---------------------
CREATE TABLE booking (
    booking_id SERIAL PRIMARY KEY,
    member_id INT NOT NULL,
    class_id INT NOT NULL,

    CONSTRAINT fk_booking_member
        FOREIGN KEY (member_id)
        REFERENCES member(member_id)
        ON DELETE CASCADE,

    CONSTRAINT fk_booking_class
        FOREIGN KEY (class_id)
        REFERENCES class(class_id)
        ON DELETE CASCADE,

    CONSTRAINT unique_member_class
        UNIQUE (member_id, class_id)
);
---------------------










