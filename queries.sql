--Join the two tables so that every column and record appears, regardless of if there is not an owner_id. Your output should look like this:
SELECT * 
FROM owners 
RIGHT JOIN 
    vehicles ON owners.id = vehicles.owner_id;

-- Count the number of cars for each owner. Display the owners first_name, last_name and count of vehicles. The first_name should be ordered in ascending order. Your output should look like this:
SELECT 
    o.first_name, 
    o.last_name, 
    COUNT(v.owner_id) AS num_vehicles 
FROM 
    owners o 
JOIN 
    vehicles v ON o.id = v.owner_id 
GROUP BY 
    o.first_name, 
    o.last_name  
ORDER BY 
    o.first_name ASC;

-- Count the number of cars for each owner and display the average price for each of the cars as integers. Display the owners first_name, last_name, average price and count of vehicles. The first_name should be ordered in descending order. Only display results with more than one vehicle and an average price greater than 10000. Your output should look like this:
SELECT 
    o.first_name, 
    o.last_name,
    AVG(v.price) AS avg_price_of_vehicles, 
    COUNT(v.owner_id) AS num_vehicles 
FROM owners o 
JOIN 
    vehicles v ON o.id = v.owner_id 
GROUP BY 
    o.first_name, 
    o.last_name 
HAVING 
    COUNT(v.owner_id) > 1 AND AVG(v.price) > 10000 
ORDER BY 
    o.first_name DESC;
