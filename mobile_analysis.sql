-- Creating Schema
create schema mobile_features;

-- Setting Path
set search_path to mobile_features;

-- Create Table
create table Mobile_Analysis (
    Phone_Name VARCHAR(100),
    Brands VARCHAR(50),
    Price DECIMAL(10, 2),
    Internal_Storage VARCHAR(20),
    Operating_System_Type VARCHAR(50),
    USB_Type VARCHAR(20),
    G5_Availability BOOLEAN,
    Selfie_Camera VARCHAR(20),
    RAM_Storage VARCHAR(20),
    Country_of_Origin VARCHAR(50),
    Battery_Capacity VARCHAR(20),
    Price_Range VARCHAR(50),
    Battery_Capacity_Range VARCHAR(50),
    Total_Mobile INT
);

-- Business Queries 

-- 1.  Check mobile features and price list
SELECT * FROM mobile_analysis;

-- 2.  Find out the price of 5 most expensive phones
SELECT Phone_name, Price
FROM mobile_analysis
ORDER BY Price DESC
LIMIT 5;

-- 3. Find out the price of 5 most cheapest phones
SELECT Phone_name, Price
FROM mobile_analysis
ORDER BY Price 
LIMIT 5;

-- 4. List of top 5 Samsung phones with price and all features
SELECT *
FROM mobile_analysis
WHERE Phone_name LIKE 'Samsung%'
ORDER BY Price DESC
LIMIT 5;

-- 5. Must have android phone list then top 5 High price android phones
SELECT *
FROM mobile_analysis
WHERE Operating_System_Type LIKE 'A%'
ORDER BY Price DESC
LIMIT 5;

-- 6.  Must have android phone list then top 5 Lower price android phones
SELECT *
FROM mobile_analysis
WHERE Operating_System_Type = 'Android'
ORDER BY Price 
LIMIT 5;

-- 7. Must have IOS phone list then top 10 High price IOS phones
SELECT *
FROM mobile_analysis
WHERE Operating_System_Type = 'iOS'
ORDER BY Price DESC
LIMIT 10;

-- 8. Must have IOS phone list then top 5 Lower price IOS phones
SELECT *
FROM mobile_analysis
WHERE Operating_System_Type = 'iOS'
ORDER BY Price 
LIMIT 5;

-- 9. Write a query which phone support 5G and also Top5 phones with 5G support
SELECT *
FROM mobile_analysis
WHERE G5_Availability = 'Yes'
ORDER BY Price DESC
LIMIT 5;

-- 10. Total price of all mobile is to be found with brand name
SELECT Brands, SUM(Price) AS total_rice 
FROM mobile_analysis
GROUP BY Brands;

-- END -- 

