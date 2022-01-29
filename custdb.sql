drop database if exists customer;
create database if not exists customer;

use customer;

-- drop table if exists customer_info;-- 
CREATE TABLE IF NOT EXISTS customer_info (
    customer_key varchar(30) not null,
    customer_name VARCHAR(50) NOT NULL,
    customer_residential_country VARCHAR(5) NOT NULL,
    customer_open_date date not null,
    PRIMARY KEY (customer_key)
);

-- drop table if exists account_info;-- 
CREATE TABLE IF NOT EXISTS account_info (
    account_key VARCHAR(50) NOT NULL,
    customer_key varchar(30) NOT NULL,
    account_open_date date NOT NULL,
    PRIMARY KEY (account_key),
    FOREIGN KEY (customer_key)
        REFERENCES customer_info (customer_key)
);

-- drop table if exists customer_transaction;-- 
CREATE TABLE IF NOT EXISTS customer_transaction (
    transfer_key VARCHAR(5) NOT NULL,
    account_key VARCHAR(50) NOT NULL,
    transaction_amt DOUBLE NOT NULL,
    transaction_type VARCHAR(3) NOT NULL,
    country_code VARCHAR(5) NOT NULL,
    transfer_date DATE NOT NULL,
    PRIMARY KEY (transfer_key),
    FOREIGN KEY (account_key)
        REFERENCES account_info (account_key)
);

CREATE table if not exists countries_info (
    country_id varchar(20) NOT NULL,
    country_code varchar(5) NOT NULL,
    primary key (country_id)
)

SELECT * FROM customer_info;