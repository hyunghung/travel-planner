-- Drop the database if it exists
DROP DATABASE IF EXISTS travel_db;

-- Create the database
CREATE DATABASE travel_db;

-- Switch to the newly created database
USE travel_db;

-- Create the 'travellers' table
CREATE TABLE travellers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

-- Create the 'location' table
CREATE TABLE locations (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

-- Create the 'trips' table
CREATE TABLE trips (
    id INT PRIMARY KEY AUTO_INCREMENT,
    trip_budget INT,
    traveller_amount INT,
    traveller_id INT,
    location_id INT,
    FOREIGN KEY (traveller_id) REFERENCES travellers(id),
    FOREIGN KEY (location_id) REFERENCES locations(id)
);
