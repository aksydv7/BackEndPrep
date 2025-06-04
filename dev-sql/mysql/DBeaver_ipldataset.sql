
select database();

create database ipl;

show databases;

use ipl;

select database();

select count(*) from deliveries;

select * from deliveries;	

desc deliveries;


-- ==========================================================================

-- Practice Questions for WHERE Clause

-- 1. Basic Filtering
-- 
--     Find all deliveries where the batting team was "Kolkata Knight Riders".

select * from deliveries where batting_team = 'Kolkata Knight Riders';

--     Retrieve all deliveries in over 5.

select * from deliveries where `over` = 5;

--     List all deliveries where the batsman scored 6 runs.

select * from deliveries where batsman_runs = 6;

--     Find all deliveries where the extra runs were wides.

select * from deliveries where extras_type = 'wides';

--     List all deliveries where a wicket was taken (is_wicket = 1).

select * from deliveries where is_wicket = 1;


-- 2. Filtering by Player
-- 
--     Find all deliveries faced by "BB McCullum".

select * from deliveries where batter = 'BB McCullum';

--     List all deliveries bowled by "P Kumar".

select * from deliveries where bowler = 'P Kumar';

--     Retrieve all dismissals where "JH Kallis" was the fielder.

select * from deliveries where fielder = 'JH Kallis';
-- 
-- 3. Filtering by Dismissal
-- 
--     Find all "caught" dismissals.

select * from deliveries where dismissal_kind = 'caught';

--     List all "bowled" dismissals.

select * from deliveries where dismissal_kind = 'bowled';

--     Retrieve all run outs.

select * from deliveries where dismissal_kind = 'run out';

-- 
-- 4. Filtering by Match and Innings
-- 
--     Find all deliveries in match_id 335982.

select * from deliveries where match_id = 335982;
select count(*) from deliveries where match_id = 335982;

--     List all deliveries in inning 2.

select * from deliveries where inning = 2;
select count(*) from deliveries where inning = 2;

--     Retrieve all deliveries from inning 1 where "RT Ponting" was the batsman.

select * from deliveries where inning = 1 and batter = 'RT Ponting';
-- 
-- 5. Filtering by Over and Ball
-- 
--     List all deliveries in over 10.

select * from deliveries where `over`=10;

--     Find all deliveries ball 3 of any over.

select * from deliveries where ball = 3;

--     Retrieve all deliveries in over 2, ball 5.

select * from deliveries where `over`=2 and ball=5;
-- 
-- 6. Filtering with Multiple Conditions
-- 
--     Find all deliveries where "W Jaffer" was the batter and "wides" were extras.

select * from deliveries where batter='W Jaffer' and extras_type='wides';

--     List all deliveries where "BB McCullum" scored 4 runs and the dismissal was caught.

select * from deliveries where batter='BB McCullm' and batsman_runs=4 and dismissal_kind='caught';
SELECT * FROM deliveries WHERE batter='BB McCullum' AND batsman_runs=4 AND dismissal_kind='caught';


--     Retrieve all deliveries where "SC Ganguly" was the bowler and a wicket was taken.

select * from deliveries where bowler='SC Ganguly' and is_wicket=1;
-- 
-- 7. Filtering with Null or NA values
-- 
--     Find all deliveries where player_dismissed is NA (not dismissed).

select * from deliveries where player_dismissed='NA';

--     List all deliveries where extras_type is not null.

select * from deliveries where extras_type != '';
select * from deliveries where extras_type != '' and extras_type is not null;
-- 
-- Bonus: Challenge Questions
-- 
--     Find all deliveries where "BB McCullum" scored more than 4 runs.

select * from deliveries where batter='BB McCullum' and batsman_runs > 4;

--     List all wickets taken by "SC Ganguly".

select * from deliveries where bowler='SC Ganguly' and is_wicket=1;
-- 
--     Retrieve all wides in over 3.

select * from deliveries where extras_type='wides' and `over`=3;

--     Find all deliveries where "RT Ponting" was non-striker.

select * from deliveries where non_striker='RT Ponting'



-- ===========================================================================
-- 
-- 
-- Practice Questions with Multiple Filters
-- 1. Basic Multiple Conditions
-- 
--     Find all deliveries where the batting team was "Mumbai Indians" and the batsman scored 6 runs.

select * from deliveries where batting_team='Mumbai Indians' and batsman_runs=6;

--     Retrieve all deliveries in over 10 and where extras_type is not null.

select * from deliveries where `over`=10 and extras_type is not null;
-- 
-- 2. Filtering by Player and Dismissal
-- 
--     List all deliveries where "W Jaffer" was the batter and the dismissal was caught.

select * from deliveries where LOWER(batter)='w jaffer' and LOWER(dismissal_kind)='caught';

--     Find all deliveries where "SC Ganguly" was the bowler and a wicket was taken or the dismissal was run out.

select * from deliveries where LOWER(bowler)=LOWER('SC Ganguly') and is_wicket=1 or LOWER(dismissal_kind)='run out'; 
-- 
-- 3. Filtering by Match, Innings, and Runs
-- 
--     Retrieve all deliveries in match_id 335982 and in inning 2 where the batsman scored more than 4 runs.

select * from deliveries where match_id=335982 and inning=2 and batsman_runs > 4;

--     Find all deliveries in match_id 335982 where the total runs were greater than 10 and the extras_type was "wides".

select * from deliveries where match_id=335982 and total_runs>10 and LOWER(extras_type)='wides';
-- 
-- 4. Filtering with Nulls and Specific Values
-- 
--     List all deliveries where player_dismissed is not null and the dismissal_kind is "caught".

select * from deliveries where player_dismissed is not null and LOWER(dismissal_kind)='caught';

--     Find all deliveries where extras_type is either "wides" or "no ball".

select * from deliveries where (extras_type is not null) and (LOWER(extras_type)='wides' or LOWER(extras_type)='no ball');

-- 
-- 5. Complex Conditions
-- 
--     Find all deliveries where "BB McCullum" scored more than 4 runs and the dismissal was not "bowled".

select * from deliveries where batsman_runs > 4 and LOWER(batter)=LOWER('BB McCullum') and LOWER(dismissal_kind) <> 'bowled';

--     Retrieve all deliveries where the bowler was "P Kumar" and either the batsman scored 4 runs or the batsman was dismissed.


select * from deliveries where LOWER(bowler)=LOWER('P Kumar') and (batsman_runs=4 or is_wicket=1);


-- ================================================================================


select LOWER('HeLLo');

-- 
-- Pattern Matching Practice Questions
-- 
--     Find all deliveries where the batter's name starts with 'Sa'.

select * from deliveries where batter like 'sa%';
-- 
--     Find all deliveries where the bowler's name ends with 'K'.

select * from deliveries where bowler like '%k';

--     Find all deliveries where the extras_type contains the substring 'no'.

select * from deliveries where extras_type like '%no%';
-- 
--     Find all deliveries where the player_dismissed name contains 'Singh'.

select * from deliveries where player_dismissed like '%Singh%'
-- 
--     Find all deliveries where the dismissal_kind starts with 'c' (e.g., 'caught', 'caught and bowled').
-- 
select * from deliveries where lower(dismissal_kind) like 'c%';

--     Find all deliveries where the batter's name has exactly 3 characters before 'K' (e.g., 'SK', 'AKK').

select * from deliveries where batter like '___K';
-- 
--     Find all deliveries where the extras_type is either 'wides' or 'no ball' using pattern matching.

select * from deliveries where extras_type like 'wides' or extras_type like 'no ball';
-- 
--     Find all deliveries where the player_dismissed is null or empty (use pattern matching to find empty strings).
-- 
select * from deliveries where player_dismissed is null or player_dismissed like '';
-- 

-- ===================================================================================


-- Practice Questions for ORDER BY
-- Basic Ordering
-- 
--     List all deliveries ordered by total_runs from highest to lowest.

select * from deliveries order by total_runs desc;
-- 
--     Get all deliveries ordered by inning in ascending order, then by over in descending order.

select * from deliveries order by inning asc, `over` desc;
-- select * from deliveries where `over`=19;
-- 
--     Find all deliveries where the batter is 'Virat Kohli', ordered alphabetically by batter name.

select * from deliveries where lower(batter)='virat kohli' order by batter asc;
-- 
--     List all deliveries where the extras_type is not null, ordered by extras_type alphabetically.

select * from deliveries where extras_type is not null order by extras_type asc;
-- 

-- Advanced Ordering
-- 
--     Retrieve all deliveries ordered by match_id ascending, then by inning descending, then by over ascending.

select * from deliveries order by match_id asc, inning desc, `over` asc;
-- 
--     List the top 10 deliveries with the highest total_runs.

select * from deliveries order by total_runs desc limit 10;
-- 
--     List all deliveries ordered by scraped_at date from newest to oldest.

select * from deliveries order by scraped_at desc;
-- 
--     Find all deliveries where the player_dismissed is not null, ordered by player_dismissed alphabetically.
-- 
select * from deliveries where player_dismissed is not null order by player_dismissed asc;

--     Retrieve all deliveries ordered by batsman_runs in descending order, then by batter alphabetically.
-- 
select * from deliveries order by batsman_runs desc, batter asc;


-- Check the actual data with

SELECT DISTINCT batter FROM deliveries LIMIT 10;

-- Use TRIM() if there might be extra spaces.

select * from deliveries where trim(batter)='SC Ganguly';

-- Use LIKE for case-insensitive partial match

select * from deliveries where batter like '%bb%';


-- ==============================================================


-- sql functions

select count(*) from deliveries where batter is not null;
select count(*) from deliveries;

select min(total_runs) from deliveries;
select max(total_runs) from deliveries;
select avg(total_runs) from deliveries;

select avg(total_runs) as avrageOfTotalruns from deliveries;


-- ====================================================

-- Practice Questions for GROUP BY
-- Basic Grouping
-- 
--     Count the number of deliveries for each batsman.
select batter,count(*) from deliveries group by batter;
-- 
--     Find the total batsman_runs scored by each batsman.
select batter,sum(batsman_runs) as totalRuns from deliveries group by batter;
-- 
--     Count how many times each extras_type occurs in the dataset.
select extras_type from deliveries;
select distinct extras_type from deliveries;

select extras_type,count(*) as totalCount
from deliveries
where extras_type is not null and extras_type !=''
group by extras_type;

-- 
--     List each bowler and the number of deliveries they bowled.
select distinct bowler from deliveries;

select bowler,count(ball)
from deliveries
where (bowler is not null and bowler !='') and (ball is not null and ball !='')
group by bowler;


--     Find the total total_runs scored in each match_id.
select match_id,sum(total_runs)
from deliveries
group by match_id;
-- 
-- Grouping with Conditions
-- 
--     For each batsman, find the total runs scored where they scored more than 4 runs in a delivery.

-- 
--     Count the number of dismissals (player_dismissed not null) for each dismissal_kind.
-- 
--     Find the number of deliveries in each inning where extras_type was 'wides'.
-- 
-- Advanced Grouping
-- 
--     List each match_id and the total number of wickets (is_wicket=1) in that match.
-- 
--     For each batsman, find the maximum number of runs scored in a single delivery.







