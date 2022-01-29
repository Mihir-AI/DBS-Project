import sqlite3

conn=sqlite3.connect('customer.db')

c=conn.cursor()

c.execute('''CREATE TABLE account_info (
  `account_key` varchar(50) NOT NULL,
  `customer_key` varchar(30) NOT NULL,
  `account_open_date` date NOT NULL,
  PRIMARY KEY (`account_key`),
  KEY `customer_key` (`customer_key`),
  CONSTRAINT `account_info_ibfk_1` FOREIGN KEY (`customer_key`) REFERENCES `customer_info` (`customer_key`)
)''')
c.execute('''
CREATE TABLE customer_info (
  `customer_key` varchar(30) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_residential_country` varchar(5) NOT NULL,
  `customer_open_date` date NOT NULL,
  PRIMARY KEY (`customer_key`)
)''')
c.execute('''
CREATE TABLE customer_transaction (
  `transfer_key` varchar(5) NOT NULL,
  `account_key` varchar(50) NOT NULL,
  `transaction_amt` double NOT NULL,
  `transaction_type` varchar(3) NOT NULL,
  `country_code` varchar(5) NOT NULL,
  `transfer_date` date NOT NULL,
  PRIMARY KEY (`transfer_key`),
  KEY `account_key` (`account_key`),
  CONSTRAINT `customer_transaction_ibfk_1` FOREIGN KEY (`account_key`) REFERENCES `account_info` (`account_key`)
)''')
conn.commit()
conn.close()