#Updating wc_2022_matches table 
UPDATE wc_2022_matches
SET `Home Team`='Netherlands', `Away Team`='United States', `Host Team`='FALSE'
WHERE ID=49;

UPDATE wc_2022_matches
SET `Home Team`='Argentina', `Away Team`='Australia', `Host Team`='FALSE'
WHERE ID=50;

UPDATE wc_2022_matches
SET `Home Team`='France', `Away Team`='Poland', `Host Team`='FALSE'
WHERE ID=51;

UPDATE wc_2022_matches
SET `Home Team`='England', `Away Team`='Senegal', `Host Team`='FALSE'
WHERE ID=52;

UPDATE wc_2022_matches
SET `Home Team`='Japan', `Away Team`='Croatia', `Host Team`='FALSE'
WHERE ID=53;

UPDATE wc_2022_matches
SET `Home Team`='Brazil', `Away Team`='South Korea', `Host Team`='FALSE'
WHERE ID=54;

UPDATE wc_2022_matches
SET `Home Team`='Morocco', `Away Team`='Spain', `Host Team`='FALSE'
WHERE ID=55;

UPDATE wc_2022_matches
SET `Home Team`='Portugal', `Away Team`='Switzerland', `Host Team`='FALSE'
WHERE ID=56;

UPDATE wc_2022_matches
SET `Home Team`='Croatia', `Away Team`='Brazil', `Host Team`='FALSE'
WHERE ID=57;

UPDATE wc_2022_matches
SET `Home Team`='Netherlands', `Away Team`='Argentina', `Host Team`='FALSE'
WHERE ID=58;

UPDATE wc_2022_matches
SET `Home Team`='Morocco', `Away Team`='Portugal', `Host Team`='FALSE'
WHERE ID=59;

UPDATE wc_2022_matches
SET `Home Team`='England', `Away Team`='France', `Host Team`='FALSE'
WHERE ID=60;

UPDATE wc_2022_matches
SET `Home Team`='Argentina', `Away Team`='Croatia', `Host Team`='FALSE'
WHERE ID=61;

UPDATE wc_2022_matches
SET `Home Team`='France', `Away Team`='Morocco', `Host Team`='FALSE'
WHERE ID=62;

UPDATE wc_2022_matches
SET `Home Team`='Croatia', `Away Team`='Morocco', `Host Team`='FALSE'
WHERE ID=63;

UPDATE wc_2022_matches
SET `Home Team`='Argentina', `Away Team`='France', `Host Team`='FALSE'
WHERE ID=64;

#Checking the updated table
SELECT * FROM wc_2022_matches



#Updating world_cups table 
UPDATE world_cups
SET Winner='Argentina',`Runners-Up`='France',Third='Croatia',Fourth='Morocco',`Goals Scored`=172
WHERE `Year`=2022;

UPDATE world_cups
SET `Host Country`='Korea Republic/ Japan'
WHERE `Year`=2002;

UPDATE world_cups
SET `Host Country`='Germany FR'
WHERE `Year`=1974;

#Updating world_cups table 
SELECT*FROM world_cups