-- Membuat Fact Table
CREATE TABLE Fact_table_Transaction(
	transaction_id VARCHAR PRIMARY KEY,
	order_id VARCHAR,
	user_id VARCHAR,
	product_id VARCHAR,
	date_id TIMESTAMP,
	retail_price FLOAT,
	quantity INTEGER,
	total_amount FLOAT
);

SELECT * FROM Fact_table_Transaction

-- Mendefinisikan FOREIGN KEY
ALTER TABLE Fact_table_Transaction
ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES Dim_Users(user_id),
ADD CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES Dim_Products(product_id),
ADD CONSTRAINT fk_date FOREIGN KEY (date_id) REFERENCES Dim_Date(date_id);

	
-- Membuat Table Dimension Users
CREATE TABLE Dim_Users(
	user_id VARCHAR PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR,
	email VARCHAR,
	age INTEGER,
	city VARCHAR
);

SELECT * FROM Dim_Users

-- Membuat Table Dimension Products
CREATE TABLE Dim_Products(
	product_id VARCHAR PRIMARY KEY,
	product_name VARCHAR,
	product_brand VARCHAR,
	retail_price FLOAT,
	cost FLOAT
);

SELECT * FROM Dim_Products

-- Membuat Table Dimension Date
CREATE TABLE Dim_Date(
	date_id TIMESTAMP PRIMARY KEY,
	year INTEGER,
	quarter INTEGER,
	month INTEGER,
	day INTEGER,
	week_of_year INTEGER,
	day_of_week INTEGER,
	day_name VARCHAR,
	month_name VARCHAR,
	is_weekend VARCHAR
);

SELECT * FROM Dim_Date

