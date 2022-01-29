use customer;

CREATE TABLE IF NOT EXISTS risk (
    risk_name VARCHAR(2) NOT NULL,
    transaction_amt DOUBLE NOT NULL,
    country_code VARCHAR(5) NOT NULL,
    inn_count INT NOT NULL,
    out_count INT NOT NULL,
    PRIMARY KEY (risk_name)
);