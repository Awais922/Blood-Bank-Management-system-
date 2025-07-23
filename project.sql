create database project
use project
--User Login Detail--
create TABLE user_login_detail (
    cnic nchar(15) not null primary key,
    user_name varchar(50)not null,
    age INT not null,
    email varchar(100)not null unique,
    password varchar(50) not null,
    CHECK (Age >= 18)
);

select *from user_login_details
--Donor Personal detail--

create table Donor_personal_detail(
    donor_cnic nchar(15) primary key,
	donor_name varchar(50) not null,
	phone_no nchar(15) not null,
	city varchar(50) not null,
	town varchar(50) not null);

--Receiver personal detail--

create table Receiver_personal_detail(
    recevier_cnic nchar(15) primary key,
	recevier_name varchar(50) not null,
	phone_no nchar(15) not null,
	city varchar(50) not null,
	town varchar(50) not null);

--Donor blood detail--
create table donor_blood_detail(
donor_cnic nchar(15) foreign key references Donor_personal_detail(donor_cnic),
blood_group nchar(5) not null,
health_status varchar(20) not null,
blood_donation_status VARCHAR(50) DEFAULT 'Undonateable' not null,
last_donated_date DATE  not null,
check (blood_group IN ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-')));

--Receiver required blood details--
create table receiver_requird_blood_details(
receiver_cnic nchar(15) not null,
donor_cnic nchar(15) not null,
receiving_date date default getdate() not null,
required_blood_group nchar(3) not null,
check (required_blood_group IN ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-')));

--Employee detail--
create table employee_login_detail(
employee_ID int not null primary key,
employee_name varchar(50) not null,
employee_gmail nchar(50) not null unique,
emp_password varchar(50) not null,
employee_phone nchar(15) not null);

--insert data--

INSERT INTO user_login_detail values
('98765-0000001-1', 'User 1', 31, 'donor.b@example.net', 'secure4'),
('23456-0000002-2', 'User 2', 29, 'receiver.z@example.org', 'complex7'),
('76543-0000003-3', 'User 3', 25, 'donor.d@example.com', 'random9'),
('45678-0000004-4', 'User 4', 37, 'receiver.v@example.net', 'strong2'),
('54321-0000005-5', 'User 5', 22, 'donor.f@example.org', 'unique5'),
('67890-0000006-6', 'User 6', 41, 'receiver.t@example.com', 'safe8'),
('32109-0000007-7', 'User 7', 28, 'donor.h@example.net', 'secret1'),
('89012-0000008-8', 'User 8', 33, 'receiver.r@example.org', 'hidden6'),
('10987-0000009-9', 'User 9', 20, 'donor.j@example.com', 'private3'),
('01234-0000010-0', 'User 10', 39, 'receiver.q@example.net', 'key10'),
('12345-0000001-1', 'User 11', 27, 'receiver.y@example.com', 'alpha1'),
('87654-0000002-2', 'User 12', 36, 'donor.c@example.org', 'beta2'),
('34567-0000003-3', 'User 13', 23, 'receiver.w@example.net', 'gamma3'),
('65432-0000004-4', 'User 14', 42, 'donor.e@example.com', 'delta4'),
('56789-0000005-5', 'User 15', 18, 'receiver.u@example.org', 'epsilon5'),
('43210-0000006-6', 'User 16', 30, 'donor.g@example.net', 'zeta6'),
('78901-0000007-7', 'User 17', 34, 'receiver.s@example.com', 'theta7'),
('21098-0000008-8', 'User 18', 21, 'donor.i@example.org', 'iota8'),
('90123-0000009-9', 'User 19', 40, 'receiver.x@example.net', 'kappa9'),
('09876-0000010-0', 'User 20', 29, 'donor.a@example.com', 'lambda10'),
('13579-0000011-1', 'User 21', 26, 'donor.k@example.com', 'pass21'),
('24680-0000012-2', 'User 22', 32, 'receiver.p@example.org', 'pass22'),
('35791-0000013-3', 'User 23', 24, 'donor.l@example.net', 'pass23'),
('46802-0000014-4', 'User 24', 35, 'receiver.o@example.com', 'pass24'),
('57913-0000015-5', 'User 25', 27, 'donor.m@example.org', 'pass25'),
('68024-0000016-6', 'User 26', 38, 'receiver.n@example.net', 'pass26'),
('79135-0000017-7', 'User 27', 22, 'donor.n@example.com', 'pass27'),
('80246-0000018-8', 'User 28', 29, 'receiver.m@example.org', 'pass28'),
('91357-0000019-9', 'User 29', 30, 'donor.o@example.net', 'pass29'),
('02468-0000020-0', 'User 30', 40, 'receiver.l@example.com', 'pass30'),
('13579-0000021-1', 'User 31', 26, 'donor.p@example.com', 'pass31'),
('24680-0000022-2', 'User 32', 31, 'receiver.k@example.net', 'pass32'),
('35791-0000023-3', 'User 33', 28, 'donor.q@example.com', 'pass33'),
('46802-0000024-4', 'User 34', 36, 'receiver.j@example.org', 'pass34'),
('57913-0000025-5', 'User 35', 24, 'donor.r@example.net', 'pass35'),
('68024-0000026-6', 'User 36', 39, 'receiver.i@example.com', 'pass36'),
('79135-0000027-7', 'User 37', 21, 'donor.s@example.org', 'pass37'),
('80246-0000028-8', 'User 38', 33, 'receiver.h@example.net', 'pass38'),
('91357-0000029-9', 'User 39', 25, 'donor.t@example.com', 'pass39'),
('02468-0000030-0', 'User 40', 41, 'receiver.g@example.org', 'pass40');

---insert data into donor personal detal--
INSERT INTO Donor_personal_detail values
('12345-0000001-1', 'Donor A', '0300-1112223', 'Karachi', 'Clifton'),
('23456-0000002-2', 'Donor B', '0311-3334445', 'Lahore', 'Model Town'),
('34567-0000003-3', 'Donor C', '0322-5556667', 'Islamabad', 'G-9'),
('45678-0000004-4', 'Donor D', '0333-7778889', 'Peshawar', 'Hayatabad'),
('56789-0000005-5', 'Donor E', '0344-9990001', 'Quetta', 'Satellite Town'),
('67890-0000006-6', 'Donor F', '0301-2223334', 'Rawalpindi', 'Bahria Town'),
('78901-0000007-7', 'Donor G', '0312-4445556', 'Faisalabad', 'Gulistan Colony'),
('89012-0000008-8', 'Donor H', '0323-6667778', 'Multan', 'Cantt'),
('90123-0000009-9', 'Donor I', '0334-8889990', 'Sialkot', 'Defence Road'),
('01234-0000010-0', 'Donor J', '0345-0001112', 'Gujranwala', 'Peoples Colony'),
('13579-0000011-1', 'Donor K', '0306-1234567', 'Sukkur', 'New City'),
('35791-0000013-3', 'Donor L', '0317-2345678', 'Hyderabad', 'Latifabad'),
('57913-0000015-5', 'Donor M', '0328-3456789', 'Abbottabad', 'Main Bazaar'),
('79135-0000017-7', 'Donor N', '0339-4567890', 'Mardan', 'Sheikh Maltoon'),
('91357-0000019-9', 'Donor O', '0340-5678901', 'Bahawalpur', 'Model Town'),
('13579-0000021-1', 'Donor P', '0341-6789012', 'Sahiwal', 'Farid Town'),
('35791-0000023-3', 'Donor Q', '0342-7890123', 'Sargodha', 'Satellite Town'),
('57913-0000025-5', 'Donor R', '0343-8901234', 'Okara', 'City Center'),
('79135-0000027-7', 'Donor S', '0344-9012345', 'Mandi Bahauddin', 'City Road'),
('91357-0000029-9', 'Donor T', '0345-0123456', 'Kasur', 'Gulshan Colony');
--insert data into receiver personal detail
INSERT INTO Receiver_personal_detail values
('98765-0000001-1', 'Receiver X', '0302-9998887', 'Karachi', 'Saddar'),
('87654-0000002-2', 'Receiver Y', '0313-7776665', 'Lahore', 'Johar Town'),
('76543-0000003-3', 'Receiver Z', '0324-5554443', 'Islamabad', 'F-7'),
('65432-0000004-4', 'Receiver W', '0335-3332221', 'Peshawar', 'University Town'),
('54321-0000005-5', 'Receiver V', '0346-1110009', 'Quetta', 'Jinnah Town'),
('43210-0000006-6', 'Receiver U', '0303-8887776', 'Rawalpindi', 'Westridge'),
('32109-0000007-7', 'Receiver T', '0314-6665554', 'Faisalabad', 'Civil Lines'),
('21098-0000008-8', 'Receiver S', '0325-4443332', 'Multan', 'New Multan'),
('10987-0000009-9', 'Receiver R', '0336-2221110', 'Sialkot', 'Pasrur Road'),
('09876-0000010-0', 'Receiver Q', '0347-0009998', 'Gujranwala', 'Satellite Town'),
('24680-0000012-2', 'Receiver P', '0307-1231234', 'Sukkur', 'Old City'),
('46802-0000014-4', 'Receiver O', '0318-2342345', 'Hyderabad', 'Qasimabad'),
('68024-0000016-6', 'Receiver N', '0329-3453456', 'Abbottabad', 'Supply Bazaar'),
('80246-0000018-8', 'Receiver M', '0330-4564567', 'Mardan', 'Bank Road'),
('02468-0000020-0', 'Receiver L', '0341-5675678', 'Bahawalpur', 'Satellite Town'),
('24680-0000022-2', 'Receiver K', '0342-6786789', 'Sahiwal', 'Model Town'),
('46802-0000024-4', 'Receiver J', '0343-7897890', 'Sargodha', 'University Road'),
('68024-0000026-6', 'Receiver I', '0344-8908901', 'Okara', 'Town Hall'),
('80246-0000028-8', 'Receiver H', '0345-9019012', 'Mandi Bahauddin', 'Railway Road'),
('02468-0000030-0', 'Receiver G', '0346-0120123', 'Kasur', 'Model Town');
--insert data into donor blood detail
-- Insert into donor blood detail--
INSERT INTO donor_blood_detail (donor_cnic, blood_group, health_status, blood_donation_status, last_donated_date) VALUES
('12345-0000001-1', 'A+', 'Healthy', 'Donatable', '2024-12-29'),
('23456-0000002-2', 'B-', 'Healthy', 'Not Donatable', '2025-04-27'),
('34567-0000003-3', 'O+', 'Healthy', 'Donatable', '2024-12-29'),
('45678-0000004-4', 'AB+', 'Healthy', 'Not Donatable', '2025-04-27'),
('56789-0000005-5', 'A-', 'Healthy', 'Donatable', '2024-12-29'),
('67890-0000006-6', 'O-', 'Healthy', 'Donatable', '2024-12-29'),
('78901-0000007-7', 'B+', 'Healthy', 'Not Donatable', '2025-04-27'),
('89012-0000008-8', 'AB-', 'Healthy', 'Donatable', '2024-12-29'),
('90123-0000009-9', 'A+', 'Slight Cold', 'Not Donatable', '2025-04-27'),
('01234-0000010-0', 'O+', 'Healthy', 'Donatable', '2024-11-27'),
('13579-0000011-1', 'B+', 'Healthy', 'Donatable', '2024-12-29'),
('35791-0000013-3', 'AB-', 'Healthy', 'Donatable', '2024-12-29'),
('57913-0000015-5', 'O-', 'Healthy', 'Donatable', '2024-12-29'),
('79135-0000017-7', 'A+', 'Healthy', 'Donatable', '2024-12-29'),
('91357-0000019-9', 'B-', 'Healthy', 'Donatable', '2024-12-29'),
('13579-0000021-1', 'A-', 'Healthy', 'Donatable', '2024-12-29'),
('35791-0000023-3', 'O+', 'Healthy', 'Donatable', '2024-12-29'),
('57913-0000025-5', 'AB+', 'Healthy', 'Donatable', '2025-01-28'),
('79135-0000027-7', 'O-', 'Healthy', 'Not Donatable', '2025-02-26'),
('91357-0000029-9', 'B+', 'Healthy', 'Not Donatable', '2025-03-29');
--Inset data into receiver required blood--

INSERT INTO receiver_requird_blood_details VALUES
('98765-0000001-1', '12345-0000001-1', '2025-04-22', 'A+'),
('87654-0000002-2', '23456-0000002-2', '2025-04-25', 'B-'),
('76543-0000003-3', '34567-0000003-3', '2025-04-28', 'O+'),
('65432-0000004-4', '45678-0000004-4', '2025-05-01', 'AB+'),
('54321-0000005-5', '56789-0000005-5', '2025-05-05', 'A-'),
('43210-0000006-6', '67890-0000006-6', '2025-05-08', 'O-'),
('32109-0000007-7', '78901-0000007-7', '2025-05-11', 'B+'),
('21098-0000008-8', '89012-0000008-8', '2025-05-14', 'AB-'),
('10987-0000009-9', '90123-0000009-9', '2025-05-17', 'A+'),
('09876-0000010-0', '01234-0000010-0', '2025-05-20', 'O+'),
('24680-0000012-2', '13579-0000011-1', '2025-05-23', 'B+'),
('46802-0000014-4', '35791-0000013-3', '2025-05-26', 'AB-'),
('68024-0000016-6', '57913-0000015-5', '2025-05-29', 'O-'),
('80246-0000018-8', '79135-0000017-7', '2025-06-01', 'A+'),
('02468-0000020-0', '91357-0000019-9', '2025-06-04', 'B-'),
('24680-0000022-2', '13579-0000021-1', '2025-06-07', 'A-'),
('46802-0000024-4', '35791-0000023-3', '2025-06-10', 'O+'),
('68024-0000026-6', '57913-0000025-5', '2025-06-13', 'AB+'),
('80246-0000028-8', '79135-0000027-7', '2025-06-16', 'O-'),
('02468-0000030-0', '91357-0000029-9', '2025-06-19', 'B+');
--insert data into employee login detail--
INSERT INTO employee_login_detail  values
(103, 'Grace White', 'grace.white@example.com', 'empPass3', '0348-1122334'),
(104, 'Henry Black', 'henry.black@example.org', 'empPass4', '0359-3344556'),
(105, 'Ivy Grey', 'ivy.grey@example.net', 'empPass5', '0304-5566778'),
(106, 'Jack Brown', 'jack.brown@example.com', 'empPass6', '0315-7788990'),
(107, 'Kelly Green', 'kelly.green@example.org', 'empPass7', '0326-9900112'),
(108, 'Liam White', 'liam.white@example.net', 'empPass8', '0337-2233445'),
(109, 'Mia Black', 'mia.black@example.com', 'empPass9', '0349-4455667'),
(110, 'Noah Grey', 'noah.grey@example.org', 'empPass10', '0350-6677889'),
(111, 'Olivia Brown', 'olivia.brown@example.net', 'empPass11', '0305-8899001'),
(112, 'Peter Green', 'peter.green@example.com', 'empPass12', '0316-0011223');

--View section--
--user detail view for employee--
create view login_details_for_emp 
as
select user_name, cnic, email, age
from user_login_detail ;

--Receiver detail view for employee--
create view Emp_receiver_record 
AS
select rpd.recevier_cnic,rpd.recevier_name,rpd.phone_no,rpd.city,rpd.town,rbd.required_blood_group,rbd.donor_cnic,rbd.receiving_date
from Receiver_personal_detail rpd
inner join 
receiver_requird_blood_details rbd
ON rpd.recevier_cnic=rbd.receiver_cnic
--Donor detail view for employee--
create view Emp_donor_record
AS 
select dpd.donor_name,dpd.donor_cnic,dpd.phone_no,dpd.city,dpd.town,dbd.blood_group,dbd.health_status,dbd.blood_donation_status,dbd.last_donated_date
from Donor_personal_detail dpd
inner join 
donor_blood_detail dbd
ON dpd.donor_cnic=dbd.donor_cnic;

--Blood detail for user view--
create view blood_detail_record
AS
select dpd.donor_name,dbd.blood_group,dbd.health_status,dbd.blood_donation_status,dpd.city
from Donor_personal_detail dpd
inner join 
donor_blood_detail dbd
ON dpd.donor_cnic=dbd.donor_cnic
--view complete--


--Store precdure for blood finding--
CREATE PROCEDURE blood_finding
@blood_group varchar(3),
@city varchar(30)
AS
Begin 
select * from blood_detail_record
where blood_group=@blood_group AND city=@city AND health_status='Healthy' AND blood_donation_status='Donatable';
END;


--store procedure for update donor record--
CREATE PROCEDURE donor_record_update
@cnic nchar(15)
AS 
Begin
update donor_blood_detail set blood_donation_status='Not Donateable',last_donated_date=getdate()
where donor_cnic=@cnic
END;


--Store procedure for new user--
CREATE PROCEDURE new_user
@cnic nchar(15),
@name varchar(30),
@age int,
@email varchar(50),
@password varchar(8)
AS
Begin
INSERT INTO user_login_detail VALUES(
@cnic,@name,@age ,@email ,@password);
END;


--Store procedure for donor insertion--
CREATE PROCEDURE insert_donor_data
    @donor_cnic NCHAR(15),
    @donor_name VARCHAR(50),
    @phone_no NCHAR(15),
    @city VARCHAR(50),
    @town VARCHAR(50),
    @blood_group NCHAR(5),
    @health_status VARCHAR(20),
    @blood_donation_status VARCHAR(50) = 'Donatable',
    @last_donated_date DATE
AS
BEGIN
    -- Insert into Donor_personal_detail table
    INSERT INTO Donor_personal_detail (donor_cnic, donor_name, phone_no, city, town)
    VALUES (@donor_cnic, @donor_name, @phone_no, @city, @town);

    -- Insert into donor_blood_detail table
    INSERT INTO donor_blood_detail (donor_cnic, blood_group, health_status, blood_donation_status, last_donated_date)
    VALUES (@donor_cnic, UPPER(@blood_group), @health_status, @blood_donation_status, @last_donated_date);
END;


--Store procedure for receiver insert data--
CREATE PROCEDURE insert_receiver_details
    @recevier_cnic nchar(15),
    @recevier_name varchar(50),
    @phone_no nchar(15),
    @city varchar(50),
    @town varchar(50),
    @donor_cnic nchar(15),
    @required_blood_group nchar(3)
AS
BEGIN
    -- Insert into Receiver Personal Detail Table
    INSERT INTO Receiver_personal_detail (recevier_cnic, recevier_name, phone_no, city, town)
    VALUES (@recevier_cnic, @recevier_name, @phone_no, @city, @town);

    -- Insert into Receiver Required Blood Details Table
    INSERT INTO receiver_requird_blood_details (receiver_cnic, donor_cnic, required_blood_group)
    VALUES (@recevier_cnic, @donor_cnic, UPPER(@required_blood_group));
END;

--Trigger--
-- trigger for user_login_detail table
create trigger user_login_detail_after_insert
on user_login_detail
after insert
as
begin
    insert into user_login_detail_backup (cnic, user_name, age, email, password)  -- added backup table
    select cnic, user_name, age, email, password
    from inserted;
end;

-- trigger for donor_personal_detail table
create trigger tr_donor_personal_detail_after_insert
on donor_personal_detail
after insert
as
begin
    insert into donor_personal_detail_backup (donor_cnic, donor_name, phone_no, city, town)  -- added backup table
    select donor_cnic, donor_name, phone_no, city, town
    from inserted;
end;

-- trigger for receiver_personal_detail table
create trigger tr_receiver_personal_detail_after_insert
on receiver_personal_detail
after insert
as
begin
    insert into receiver_personal_detail_backup (recevier_cnic, recevier_name, phone_no, city, town)  -- added backup table
    select recevier_cnic, recevier_name, phone_no, city, town
    from inserted;
end;

-- trigger for donor_blood_detail table
create trigger tr_donor_blood_detail_after_insert
on donor_blood_detail
after insert
as
begin
    insert into donor_blood_detail_backup (donor_cnic, blood_group, health_status, blood_donation_status, last_donated_date)  -- added backup table
    select donor_cnic, blood_group, health_status, blood_donation_status, last_donated_date
    from inserted;
end;

-- trigger for receiver_requird_blood_details table
create trigger tr_receiver_requird_blood_details_after_insert
on receiver_requird_blood_details
after insert
as
begin
    insert into receiver_requird_blood_details_backup (receiver_cnic, donor_cnic, receiving_date, required_blood_group)  -- added backup table
    select receiver_cnic, donor_cnic, receiving_date, required_blood_group
    from inserted;
end;

-- trigger for employee_login_detail table
create trigger tr_employee_login_detail_after_insert
on employee_login_detail
after insert
as
begin
    insert into employee_login_detail_backup (employee_id, employee_name, employee_gmail, emp_password, employee_phone)  -- added backup table
    select employee_id, employee_name, employee_gmail, emp_password, employee_phone
    from inserted;
end;


-- trigger for user_login_detail table
create trigger tr_user_login_detail_after_delete
on user_login_detail
after delete
as
begin
    insert into user_login_detail_backup (cnic, user_name, age, email, password)
    select cnic, user_name, age, email, password
    from deleted;
end;

-- trigger for donor_personal_detail table
create trigger tr_donor_personal_detail_after_delete
on donor_personal_detail
after delete
as
begin
    insert into donor_personal_detail_backup (donor_cnic, donor_name, phone_no, city, town)
    select donor_cnic, donor_name, phone_no, city, town
    from deleted;
end;

-- trigger for receiver_personal_detail table
create trigger tr_receiver_personal_detail_after_delete
on receiver_personal_detail
after delete
as
begin
    insert into receiver_personal_detail_backup (recevier_cnic, recevier_name, phone_no, city, town)
    select recevier_cnic, recevier_name, phone_no, city, town
    from deleted;
end;

-- trigger for donor_blood_detail table
create trigger tr_donor_blood_detail_after_delete
on donor_blood_detail
after delete
as
begin
    insert into donor_blood_detail_backup (donor_cnic, blood_group, health_status, blood_donation_status, last_donated_date)
    select donor_cnic, blood_group, health_status, blood_donation_status, last_donated_date
    from deleted;
end;

-- trigger for receiver_requird_blood_details table
create trigger tr_receiver_requird_blood_details_after_delete
on receiver_requird_blood_details
after delete
as
begin
    insert into receiver_requird_blood_details_backup (receiver_cnic, donor_cnic, receiving_date, required_blood_group, requied_bag)
    select receiver_cnic, donor_cnic, receiving_date, required_blood_group, requied_bag
    from deleted;
end;

-- trigger for employee_login_detail table
create trigger tr_employee_login_detail_after_delete
on employee_login_detail
after delete
as
begin
    insert into employee_login_detail_backup (employee_id, employee_name, employee_gmail, emp_password, employee_phone)
    select employee_id, employee_name, employee_gmail, emp_password, employee_phone
    from deleted;
end;



---Select queries for all tables--

-- Select all data from the user_login_detail table
SELECT * FROM user_login_detail;

-- Select all data from the Donor_personal_detail table
SELECT * FROM Donor_personal_detail;

-- Select all data from the Receiver_personal_detail table
SELECT * FROM Receiver_personal_detail;

-- Select all data from the donor_blood_detail table
SELECT * FROM donor_blood_detail;

-- Select all data from the receiver_requird_blood_details table
SELECT * FROM receiver_requird_blood_details;

-- Select all data from the employee_login_detail table
SELECT * FROM employee_login_detail;

--view execution query--
--Record about blood detail--
select * from blood_detail_record;
--View for donor record--
select * from Emp_donor_record;
--view for receiver record--
select *from Emp_receiver_record;
--View for login detail--
select * from login_details_for_emp;

--Store procedure call---
-- Call the blood_finding procedure
EXEC blood_finding @blood_group = 'A+', @city = 'Karachi';
-- Call the donor_record_update procedure
EXEC donor_record_update @cnic = '12345-0000001-1';
-- Call the new_user procedure to add a new user
EXEC new_user 
    @cnic = '12345-0000001-1',
    @name = 'John Doe',
    @age = 25,
    @email = 'johndoe@example.com',
    @password = 'password123';
-- Call the insert_donor_data procedure to add a new donor
EXEC insert_donor_data 
    @donor_cnic = '12345-0000001-1',
    @donor_name = 'John Doe',
    @phone_no = '123456789012',
    @city = 'Karachi',
    @town = 'Korangi',
    @blood_group = 'O+',
    @health_status = 'Healthy',
    @blood_donation_status = 'Donatable',
    @last_donated_date = '2024-04-20';
-- Call the insert_receiver_details procedure to add a new receiver
EXEC insert_receiver_details 
    @recevier_cnic = '54321-0000002-2',
    @recevier_name = 'Jane Smith',
    @phone_no = '098765432109',
    @city = 'Lahore',
    @town = 'Gulberg',
    @donor_cnic = '12345-0000001-1',
    @required_blood_group = 'A+';