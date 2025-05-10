CREATE TABLE branches (
branch\_id int(11) NOT NULL,
branch\_name varchar(60) NOT NULL,
branch\_street varchar(100) NOT NULL,
branch\_address tinytext NOT NULL,
branch\_email varchar(100) NOT NULL,
branch\_phone varchar(100) DEFAULT NULL,
branch\_directions varchar(100) DEFAULT NULL,
branchCreated\_date timestamp NOT NULL DEFAULT current\_timestamp(),
branchUpdated\_date date DEFAULT NULL,
branchCreated\_by int(11) DEFAULT NULL,
branchUpdated\_by int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_general\_ci;

CREATE TABLE departments (
department\_id int(11) NOT NULL,
department\_title varchar(100) NOT NULL,
department\_image varchar(100) DEFAULT NULL,
departmentCreated\_date timestamp NOT NULL DEFAULT current\_timestamp(),
departmentUpdated\_date date DEFAULT NULL,
departmentCreated\_by int(11) DEFAULT NULL,
departmentUpdated\_by int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_general\_ci;

CREATE TABLE downloads (
downloadFile\_id int(11) NOT NULL,
downloadFile\_title varchar(255) NOT NULL,
downloadFile\_name varchar(255) DEFAULT NULL,
downloadFile\_category varchar(60) NOT NULL,
downloadFile\_data longblob DEFAULT NULL,
downloadFileCreated\_date timestamp NOT NULL DEFAULT current\_timestamp(),
downloadFileUpdated\_date date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_general\_ci;

CREATE TABLE events (
event\_id int(11) NOT NULL,
event\_name varchar(100) DEFAULT NULL,
event\_date datetime DEFAULT NULL,
event\_description varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_general\_ci;

CREATE TABLE faqs (
id int(11) NOT NULL,
question varchar(100) NOT NULL,
answer varchar(200) NOT NULL,
created\_date timestamp NOT NULL DEFAULT current\_timestamp(),
updated\_date date DEFAULT NULL,
created\_by int(11) DEFAULT NULL,
updated\_by int(11) DEFAULT NULL,
org\_id int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_general\_ci;

CREATE TABLE files (
file\_id int(11) NOT NULL,
filePath varchar(255) DEFAULT NULL,
fileName varchar(255) DEFAULT NULL,
fileData longblob NOT NULL,
fileCreated\_date timestamp NOT NULL DEFAULT current\_timestamp(),
fileUpdated\_date date DEFAULT NULL,
fileCreated\_by int(11) DEFAULT NULL,
fileUpdated\_by int(11) DEFAULT NULL,
vacancyApplication\_id int(11) DEFAULT NULL,
tender\_id int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_general\_ci;

CREATE TABLE images (
id int(11) NOT NULL,
title varchar(100) DEFAULT NULL,
filename varchar(100) DEFAULT NULL,
org\_id int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_general\_ci;

CREATE TABLE latestnews (
news\_id int(11) NOT NULL,
news\_heading varchar(255) NOT NULL,
news\_info varchar(255) NOT NULL,
newsCreated\_date timestamp NOT NULL DEFAULT current\_timestamp(),
newsUpdated\_date date DEFAULT NULL,
newsCreated\_by int(11) DEFAULT NULL,
newsUpdated\_by int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_general\_ci;

CREATE TABLE messages (
id int(11) NOT NULL,
name varchar(100) DEFAULT NULL,
org\_id int(11) DEFAULT NULL,
email varchar(100) DEFAULT NULL,
subject varchar(200) DEFAULT NULL,
message text DEFAULT NULL,
status varchar(10) DEFAULT NULL,
created\_date timestamp NOT NULL DEFAULT current\_timestamp(),
updated\_date date DEFAULT NULL,
created\_by int(11) DEFAULT NULL,
updated\_by int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_general\_ci;

CREATE TABLE orgs (
id int(11) NOT NULL,
name varchar(100) DEFAULT NULL,
org\_uuid varchar(255) NOT NULL,
about text DEFAULT NULL,
location text DEFAULT NULL,
contacts longtext CHARACTER SET utf8mb4 COLLATE utf8mb4\_bin DEFAULT NULL CHECK (json\_valid(contacts)),
welcome\_message text DEFAULT NULL,
background text DEFAULT NULL,
mission text DEFAULT NULL,
vision text DEFAULT NULL,
core\_values longtext CHARACTER SET utf8mb4 COLLATE utf8mb4\_bin DEFAULT NULL CHECK (json\_valid(core\_values)),
created\_date timestamp NOT NULL DEFAULT current\_timestamp(),
updated\_date date DEFAULT NULL,
created\_by int(11) DEFAULT NULL,
updated\_by int(11) DEFAULT NULL,
org\_status varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_general\_ci;

CREATE TABLE products (
product\_id int(11) NOT NULL,
product\_title varchar(255) NOT NULL,
product\_description varchar(255) NOT NULL,
product\_image varchar(255) DEFAULT NULL,
product\_category varchar(100) NOT NULL,
productSub\_category varchar(100) NOT NULL,
productCreated\_date timestamp NOT NULL DEFAULT current\_timestamp(),
productUpdated\_date date DEFAULT NULL,
productCreated\_by int(11) DEFAULT NULL,
productUpdated\_by int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_general\_ci;

CREATE TABLE team\_members (
id int(11) NOT NULL,
name varchar(100) DEFAULT NULL,
org\_id int(11) DEFAULT NULL,
profile\_picture varchar(100) DEFAULT NULL,
position varchar(100) DEFAULT NULL,
social\_media\_links longtext CHARACTER SET utf8mb4 COLLATE utf8mb4\_bin DEFAULT NULL CHECK (json\_valid(social\_media\_links)),
phone varchar(100) DEFAULT NULL,
email varchar(100) DEFAULT NULL,
created\_date timestamp NOT NULL DEFAULT current\_timestamp(),
updated\_date date DEFAULT NULL,
created\_by int(11) DEFAULT NULL,
updated\_by int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_general\_ci;

CREATE TABLE tenders (
tender\_id int(11) NOT NULL,
tender\_title varchar(100) NOT NULL,
tenderCreated\_date timestamp NOT NULL DEFAULT current\_timestamp(),
tenderClosing\_date date NOT NULL,
tenderUpdated\_date date DEFAULT NULL,
tenderCreated\_by int(11) DEFAULT NULL,
tenderUpdated\_by int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_general\_ci;

CREATE TABLE users (
id int(11) NOT NULL,
username varchar(30) DEFAULT NULL,
email varchar(50) DEFAULT NULL,
full\_name varchar(100) DEFAULT NULL,
hashed\_password varchar(100) DEFAULT NULL,
disabled tinyint(1) DEFAULT NULL,
is\_superuser tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_general\_ci;

CREATE TABLE vacancies (
vacancy\_id int(11) NOT NULL,
title varchar(255) DEFAULT NULL,
category varchar(20) NOT NULL,
description text DEFAULT NULL,
requirements text DEFAULT NULL,
duration date DEFAULT NULL,
how\_to\_apply text DEFAULT NULL,
reference\_number varchar(255) NOT NULL,
created\_date timestamp NOT NULL DEFAULT current\_timestamp(),
updated\_date date DEFAULT NULL,
created\_by int(11) DEFAULT NULL,
updated\_by int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_general\_ci;

CREATE TABLE vacancy\_applications (
vacancyApplication\_id int(11) NOT NULL,
vacancyApplication\_category varchar(20) NOT NULL,
vacancyApplicationCreated\_date timestamp NOT NULL DEFAULT current\_timestamp(),
vacancyApplicationUpdated\_date date DEFAULT NULL,
vacancyApplicationCreated\_by int(11) DEFAULT NULL,
vacancyApplicationUpdated\_by int(11) DEFAULT NULL,
vacancy\_id int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_general\_ci;

ALTER TABLE branches
ADD PRIMARY KEY (branch\_id),
ADD KEY ix\_branches\_branch\_id (branch\_id),
ADD KEY fk\_branch\_created\_by (branchCreated\_by),
ADD KEY fk\_branch\_updated\_by (branchUpdated\_by);

ALTER TABLE departments
ADD PRIMARY KEY (department\_id),
ADD KEY ix\_departments\_department\_id (department\_id),
ADD KEY fk\_department\_created\_by (departmentCreated\_by),
ADD KEY fk\_department\_updated\_by (departmentUpdated\_by);

ALTER TABLE downloads
ADD PRIMARY KEY (downloadFile\_id),
ADD UNIQUE KEY ix\_downloads\_downloadFile\_name (downloadFile\_name),
ADD KEY ix\_downloads\_downloadFile\_id (downloadFile\_id);

ALTER TABLE events
ADD PRIMARY KEY (event\_id),
ADD KEY ix\_events\_event\_id (event\_id),
ADD KEY ix\_events\_event\_description (event\_description),
ADD KEY ix\_events\_event\_name (event\_name);

ALTER TABLE faqs
ADD PRIMARY KEY (id),
ADD KEY fk\_faq\_created\_by (created\_by),
ADD KEY fk\_faq\_updated\_by (updated\_by),
ADD KEY fk\_faqs\_org (org\_id);

ALTER TABLE files
ADD PRIMARY KEY (file\_id),
ADD KEY ix\_files\_fileName (fileName),
ADD KEY ix\_files\_filePath (filePath),
ADD KEY ix\_files\_file\_id (file\_id),
ADD KEY fk\_files\_created\_by (fileCreated\_by),
ADD KEY fk\_files\_updated\_by (fileUpdated\_by),
ADD KEY fk\_files\_vacancy (vacancyApplication\_id),
ADD KEY fk\_files\_tender (tender\_id);

ALTER TABLE images
ADD PRIMARY KEY (id),
ADD KEY ix\_images\_title (title),
ADD KEY ix\_images\_id (id),
ADD KEY ix\_images\_filename (filename),
ADD KEY fk\_images\_org (org\_id);

ALTER TABLE latestnews
ADD PRIMARY KEY (news\_id),
ADD KEY ix\_latestnews\_news\_id (news\_id),
ADD KEY fk\_news\_created\_by (newsCreated\_by),
ADD KEY fk\_news\_updated\_by (newsUpdated\_by);

ALTER TABLE messages
ADD PRIMARY KEY (id),
ADD KEY ix\_messages\_email (email),
ADD KEY fk\_messages\_created\_by (created\_by),
ADD KEY fk\_messages\_updated\_by (updated\_by),
ADD KEY fk\_messages\_org (org\_id);

ALTER TABLE orgs
ADD PRIMARY KEY (id),
ADD UNIQUE KEY org\_uuid (org\_uuid),
ADD UNIQUE KEY name (name),
ADD KEY fk\_orgs\_created\_by (created\_by),
ADD KEY fk\_orgs\_updated\_by (updated\_by);

ALTER TABLE products
ADD PRIMARY KEY (product\_id),
ADD KEY ix\_products\_product\_id (product\_id),
ADD KEY fk\_products\_created\_by (productCreated\_by),
ADD KEY fk\_products\_updated\_by (productUpdated\_by);

ALTER TABLE team\_members
ADD PRIMARY KEY (id),
ADD UNIQUE KEY email (email),
ADD KEY fk\_team\_created\_by (created\_by),
ADD KEY fk\_team\_updated\_by (updated\_by),
ADD KEY fk\_team\_members\_org (org\_id);

ALTER TABLE tenders
ADD PRIMARY KEY (tender\_id),
ADD KEY ix\_tenders\_tender\_id (tender\_id),
ADD KEY fk\_tenders\_created\_by (tenderCreated\_by),
ADD KEY fk\_tenders\_updated\_by (tenderUpdated\_by);

ALTER TABLE users
ADD PRIMARY KEY (id),
ADD KEY ix\_users\_username (username),
ADD KEY ix\_users\_email (email),
ADD KEY ix\_users\_id (id);

ALTER TABLE vacancies
ADD PRIMARY KEY (vacancy\_id),
ADD UNIQUE KEY reference\_number (reference\_number),
ADD KEY ix\_jobs\_reference\_number (reference\_number),
ADD KEY ix\_vacancies\_title (title),
ADD KEY ix\_vacancies\_vacancy\_id (vacancy\_id),
ADD KEY fk\_vacancies\_created\_by (created\_by),
ADD KEY fk\_vacancies\_updated\_by (updated\_by);

ALTER TABLE vacancy\_applications
ADD PRIMARY KEY (vacancyApplication\_id),
ADD KEY vacancy\_id (vacancy\_id),
ADD KEY ix\_vacancy\_applications\_vacancyApplication\_id (vacancyApplication\_id);

ALTER TABLE branches
MODIFY branch\_id int(11) NOT NULL AUTO\_INCREMENT;

ALTER TABLE departments
MODIFY department\_id int(11) NOT NULL AUTO\_INCREMENT;

ALTER TABLE downloads
MODIFY downloadFile\_id int(11) NOT NULL AUTO\_INCREMENT;

ALTER TABLE events
MODIFY event\_id int(11) NOT NULL AUTO\_INCREMENT;

ALTER TABLE faqs
MODIFY id int(11) NOT NULL AUTO\_INCREMENT;

ALTER TABLE files
MODIFY file\_id int(11) NOT NULL AUTO\_INCREMENT;

ALTER TABLE images
MODIFY id int(11) NOT NULL AUTO\_INCREMENT;

ALTER TABLE latestnews
MODIFY news\_id int(11) NOT NULL AUTO\_INCREMENT;

ALTER TABLE messages
MODIFY id int(11) NOT NULL AUTO\_INCREMENT;

ALTER TABLE orgs
MODIFY id int(11) NOT NULL AUTO\_INCREMENT;

ALTER TABLE products
MODIFY product\_id int(11) NOT NULL AUTO\_INCREMENT;

ALTER TABLE team\_members
MODIFY id int(11) NOT NULL AUTO\_INCREMENT;

ALTER TABLE tenders
MODIFY tender\_id int(11) NOT NULL AUTO\_INCREMENT;

ALTER TABLE users
MODIFY id int(11) NOT NULL AUTO\_INCREMENT;

ALTER TABLE vacancies
MODIFY vacancy\_id int(11) NOT NULL AUTO\_INCREMENT;

ALTER TABLE vacancy\_applications
MODIFY vacancyApplication\_id int(11) NOT NULL AUTO\_INCREMENT;

ALTER TABLE branches
ADD CONSTRAINT fk\_branch\_created\_by FOREIGN KEY (branchCreated\_by) REFERENCES users (id),
ADD CONSTRAINT fk\_branch\_updated\_by FOREIGN KEY (branchUpdated\_by) REFERENCES users (id);

ALTER TABLE departments
ADD CONSTRAINT fk\_department\_created\_by FOREIGN KEY (departmentCreated\_by) REFERENCES users (id),
ADD CONSTRAINT fk\_department\_updated\_by FOREIGN KEY (departmentUpdated\_by) REFERENCES users (id);

ALTER TABLE faqs
ADD CONSTRAINT faqs\_ibfk\_1 FOREIGN KEY (org\_id) REFERENCES orgs (id),
ADD CONSTRAINT fk\_faq\_created\_by FOREIGN KEY (created\_by) REFERENCES users (id),
ADD CONSTRAINT fk\_faq\_updated\_by FOREIGN KEY (updated\_by) REFERENCES users (id),
ADD CONSTRAINT fk\_faqs\_org FOREIGN KEY (org\_id) REFERENCES orgs (id);

ALTER TABLE files
ADD CONSTRAINT files\_ibfk\_1 FOREIGN KEY (vacancyApplication\_id) REFERENCES vacancy\_applications (vacancyApplication\_id),
ADD CONSTRAINT files\_ibfk\_2 FOREIGN KEY (tender\_id) REFERENCES tenders (tender\_id),
ADD CONSTRAINT fk\_files\_created\_by FOREIGN KEY (fileCreated\_by) REFERENCES users (id),
ADD CONSTRAINT fk\_files\_tender FOREIGN KEY (tender\_id) REFERENCES tenders (tender\_id),
ADD CONSTRAINT fk\_files\_updated\_by FOREIGN KEY (fileUpdated\_by) REFERENCES users (id),
ADD CONSTRAINT fk\_files\_vacancy FOREIGN KEY (vacancyApplication\_id) REFERENCES vacancies (vacancy\_id);

ALTER TABLE images
ADD CONSTRAINT fk\_images\_org FOREIGN KEY (org\_id) REFERENCES orgs (id),
ADD CONSTRAINT images\_ibfk\_1 FOREIGN KEY (org\_id) REFERENCES orgs (id);

ALTER TABLE latestnews
ADD CONSTRAINT fk\_news\_created\_by FOREIGN KEY (newsCreated\_by) REFERENCES users (id),
ADD CONSTRAINT fk\_news\_updated\_by FOREIGN KEY (newsUpdated\_by) REFERENCES users (id);

ALTER TABLE messages
ADD CONSTRAINT fk\_messages\_created\_by FOREIGN KEY (created\_by) REFERENCES users (id),
ADD CONSTRAINT fk\_messages\_org FOREIGN KEY (org\_id) REFERENCES orgs (id),
ADD CONSTRAINT fk\_messages\_updated\_by FOREIGN KEY (updated\_by) REFERENCES users (id),
ADD CONSTRAINT messages\_ibfk\_1 FOREIGN KEY (org\_id) REFERENCES orgs (id);

ALTER TABLE orgs
ADD CONSTRAINT fk\_orgs\_created\_by FOREIGN KEY (created\_by) REFERENCES users (id),
ADD CONSTRAINT fk\_orgs\_updated\_by FOREIGN KEY (updated\_by) REFERENCES users (id);

ALTER TABLE products
ADD CONSTRAINT fk\_products\_created\_by FOREIGN KEY (productCreated\_by) REFERENCES users (id),
ADD CONSTRAINT fk\_products\_updated\_by FOREIGN KEY (productUpdated\_by) REFERENCES users (id);

ALTER TABLE team\_members
ADD CONSTRAINT fk\_team\_created\_by FOREIGN KEY (created\_by) REFERENCES users (id),
ADD CONSTRAINT fk\_team\_members\_org FOREIGN KEY (org\_id) REFERENCES orgs (id),
ADD CONSTRAINT fk\_team\_updated\_by FOREIGN KEY (updated\_by) REFERENCES users (id),
ADD CONSTRAINT team\_members\_ibfk\_1 FOREIGN KEY (org\_id) REFERENCES orgs (id);

ALTER TABLE tenders
ADD CONSTRAINT fk\_tenders\_created\_by FOREIGN KEY (tenderCreated\_by) REFERENCES users (id),
ADD CONSTRAINT fk\_tenders\_updated\_by FOREIGN KEY (tenderUpdated\_by) REFERENCES users (id);

ALTER TABLE vacancies
ADD CONSTRAINT fk\_vacancies\_created\_by FOREIGN KEY (created\_by) REFERENCES users (id),
ADD CONSTRAINT fk\_vacancies\_updated\_by FOREIGN KEY (updated\_by) REFERENCES users (id);

ALTER TABLE vacancy\_applications
ADD CONSTRAINT vacancy\_applications\_ibfk\_1 FOREIGN KEY (vacancy\_id) REFERENCES vacancies (vacancy\_id);
COMMIT;
