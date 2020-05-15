DROP TABLE employee_title;
DROP TABLE member_payment;
DROP TABLE membership_type;
DROP TABLE guest_address;
DROP TABLE employee_address;
DROP TABLE gym_facilities;
DROP TABLE guest_info;
DROP TABLE employee_info;
DROP TABLE member_address;
DROP TABLE member_info;
DROP TABLE gym_branch;

--- Gym's Location and Contact Info

CREATE TABLE gym_branch(
gym_branch VARCHAR(64) NOT NULL,
gym_street VARCHAR(64) NOT NULL,
gym_city VARCHAR(64) NOT NULL,
gym_state VARCHAR(64) NOT NULL,
gym_zip INT NOT NULL,
gym_phone VARCHAR(64),
gym_email VARCHAR(64),
PRIMARY KEY(gym_branch));

--- Member's information 
CREATE TABLE member_info(
member_id VARCHAR(64) NOT NULL,
member_fname VARCHAR(64) NOT NULL,
member_lname VARCHAR(64) NOT NULL,
member_phone VARCHAR(64) NOT NULL,
member_email VARCHAR(64) NOT NULL,
member_dob DATE NOT NULL,
member_sex VARCHAR(10),
member_start DATE NOT NULL,
member_end DATE,
gym_branch VARCHAR(64) NOT NULL,
PRIMARY KEY (member_id),
FOREIGN KEY (gym_branch) REFERENCES gym_branch(gym_branch));

--- Employee's information
CREATE TABLE employee_info(
employee_id VARCHAR(64) NOT NULL,
employee_fname VARCHAR(64) NOT NULL,
employee_lname VARCHAR(64) NOT NULL,
employee_phone VARCHAR(64) NOT NULL,
employee_email VARCHAR(64) NOT NULL,
employee_dob DATE NOT NULL,
employee_sex VARCHAR(10),
employee_start DATE NOT NULL,
employee_end DATE,
gym_branch VARCHAR(64) NOT NULL,
PRIMARY KEY (employee_id),
FOREIGN KEY (gym_branch) REFERENCES gym_branch(gym_branch));

--- Guest's Information
CREATE TABLE guest_info(
guest_id VARCHAR(64) NOT NULL,
guest_fname VARCHAR(64) NOT NULL,
guest_lname VARCHAR(64) NOT NULL,
guest_phone VARCHAR(64) NOT NULL,
guest_email VARCHAR(64) NOT NULL,
guest_dob VARCHAR(64) NOT NULL,
guest_sex VARCHAR(10),
guest_start DATE NOT NULL,
guest_end DATE NOT NULL,
gym_branch VARCHAR(64) NOT NULL,
PRIMARY KEY (guest_id),
FOREIGN KEY (gym_branch) REFERENCES gym_branch(gym_branch));

--- Gym Facilities availablity in each branch
CREATE TABLE gym_facilities(
gym_facilities VARCHAR(64) NOT NULL,
gym_branch VARCHAR(64) NOT NULL,
FOREIGN KEY (gym_branch) REFERENCES gym_branch(gym_branch));

--- Member's Address
CREATE TABLE member_address(
member_id VARCHAR(64) NOT NULL,
member_street VARCHAR(64),
member_city VARCHAR(64),
member_state VARCHAR(64),
member_zip INT,
FOREIGN KEY (member_id) REFERENCES member_info(member_id));

--- Employee's Address
CREATE TABLE employee_address(
employee_id VARCHAR(64) NOT NULL,
employee_street VARCHAR(64),
employee_city VARCHAR(64),
employee_state VARCHAR(64),
employee_zip INT,
FOREIGN KEY (employee_id) REFERENCES employee_info(employee_id));

--- Guest's Address
CREATE TABLE guest_address(
guest_id VARCHAR(64) NOT NULL,
guest_street VARCHAR(64),
guest_city VARCHAR(64),
guest_state VARCHAR(64),
guest_zip INT,
FOREIGN KEY (guest_id) REFERENCES guest_info(guest_id));

--- Membership type
CREATE TABLE membership_type(
member_type VARCHAR(64) NOT NULL,
member_price INT NOT NULL,
PRIMARY KEY (member_type));

--- Member's Payment
CREATE TABLE member_payment(
member_invoice INT NOT NULL,
member_type VARCHAR(64) NOT NULL,
payment_method VARCHAR(64) NOT NULL,
member_id VARCHAR(64) NOT NULL,
PRIMARY KEY (member_invoice),
FOREIGN KEY (member_id) REFERENCES member_info(member_id),
FOREIGN KEY (member_type) REFERENCES membership_type(member_type));
 
--- Employee's Title
CREATE TABLE employee_title(
employee_id VARCHAR(64) NOT NULL,
employee_title VARCHAR(64) NOT NULL,
PRIMARY KEY (employee_id),
FOREIGN KEY (employee_id) REFERENCES employee_info(employee_id));