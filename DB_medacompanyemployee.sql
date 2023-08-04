CREATE TABLE meda_companies (
id_company int(10) unsigned NOT NULL AUTO_INCREMENT,
name varchar(45) NOT NULL,
status bool DEFAULT true,
registered datetime NOT NULL,
PRIMARY KEY (id_company),
UNIQUE KEY meda_companies_un (name)
);

CREATE TABLE meda_employees (
id_employee int(10) unsigned NOT NULL AUTO_INCREMENT,
name varchar(45) NOT NULL,
middle_name varchar(45) NOT NULL,
last_name varchar(45) NOT NULL,
second_last_name varchar(45) NOT NULL,
status bool DEFAULT true,
registered datetime NOT NULL,
PRIMARY KEY (id_employee)
);


CREATE TABLE meda_users (
id_user int(10) unsigned NOT NULL AUTO_INCREMENT,
id_company int(10) unsigned DEFAULT NULL,
id_employee int(10) unsigned DEFAULT NULL,
username varchar(45) NOT NULL,
password varchar(255) NOT NULL,
status bool DEFAULT true,
last_login datetime DEFAULT NULL,
registered datetime NOT NULL,
PRIMARY KEY (id_user),
KEY meda_users_1_idx (id_company),
CONSTRAINT fk_meda_users_1 FOREIGN KEY (id_company) REFERENCES meda_companies (id_company) ON DELETE NO ACTION,
KEY meda_users_2_idx (id_employee),
CONSTRAINT fk_meda_users_2 FOREIGN KEY (id_employee) REFERENCES meda_employees (id_employee) ON DELETE NO ACTION
);
