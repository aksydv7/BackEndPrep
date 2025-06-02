
select database();

create database ipl;

show databases;

use ipl;

select database();

select count(*) from deliveries;

select * from deliveries;	

desc deliveries;

-- Practice Questions for WHERE Clause

-- 1. Basic Filtering
-- 
--     Find all deliveries where the batting team was "Kolkata Knight Riders".

select * from deliveries where batting_team = 'Kolkata Knight Riders';

--     Retrieve all deliveries in over 5.

select * from deliveries where `over` = 5;

--     List all deliveries where the batsman scored 6 runs.



--     Find all deliveries where the extra runs were wides.
--     List all deliveries where a wicket was taken (is_wicket = 1).


-- 2. Filtering by Player
-- 
--     Find all deliveries faced by "BB McCullum".
--     List all deliveries bowled by "P Kumar".
--     Retrieve all dismissals where "JH Kallis" was the fielder.
-- 
-- 3. Filtering by Dismissal
-- 
--     Find all "caught" dismissals.
--     List all "bowled" dismissals.
--     Retrieve all run outs.
-- 
-- 4. Filtering by Match and Innings
-- 
--     Find all deliveries in match_id 335982.
--     List all deliveries in inning 2.
--     Retrieve all deliveries from inning 1 where "RT Ponting" was the batsman.
-- 
-- 5. Filtering by Over and Ball
-- 
--     List all deliveries in over 10.
--     Find all deliveries ball 3 of any over.
--     Retrieve all deliveries in over 2, ball 5.
-- 
-- 6. Filtering with Multiple Conditions
-- 
--     Find all deliveries where "W Jaffer" was the batter and "wides" were extras.
--     List all deliveries where "BB McCullum" scored 4 runs and the dismissal was caught.
--     Retrieve all deliveries where "SC Ganguly" was the bowler and a wicket was taken.
-- 
-- 7. Filtering with Null or NA values
-- 
--     Find all deliveries where player_dismissed is NA (not dismissed).
--     List all deliveries where extras_type is not null.
-- 
-- Bonus: Challenge Questions
-- 
--     Find all deliveries where "BB McCullum" scored more than 4 runs.
--     List all wickets taken by "SC Ganguly".
-- 
--     Retrieve all wides in over 3.
--     Find all deliveries where "RT Ponting" was non-striker.
-- 
-- 





















