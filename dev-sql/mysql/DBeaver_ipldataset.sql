
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

















