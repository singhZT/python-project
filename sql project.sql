use motorvichle;
select *from stolen_vehicles;
select * from locations;
select * from make_details;


Top 5 location where cars stolen most ?;
select count(vehicle_type),location_id from stolen_vehicles group by location_id order by count(vehicle_type) desc limit 5;


 Top 3 most stolen vehicle types:;

SELECT vehicle_type, COUNT(*) AS total
FROM stolen_vehicles
GROUP BY vehicle_type
ORDER BY total DESC
LIMIT 3;


 Cities with highest number of vehicle thefts:;

SELECT l.region, COUNT(*) AS theft_count
FROM stolen_vehicles sv
JOIN locations l ON sv.location_id = l.location_id
GROUP BY l.region
ORDER BY theft_count DESC;


 Most common vehicle color:;

SELECT color, COUNT(*) AS count
FROM stolen_vehicles
GROUP BY color
ORDER BY count DESC
LIMIT 1;


 Monthly vehicle theft trend (thefts per month):;

SELECT 
  MONTH(STR_TO_DATE(date_stolen, '%m/%d/%y')) AS theft_month,
  COUNT(*) AS total_thefts
FROM stolen_vehicles
GROUP BY theft_month
ORDER BY theft_month;