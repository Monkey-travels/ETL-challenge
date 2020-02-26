-- Create a table for the cleaned data (us wildfires) to be loaded into
DROP TABLE IF EXISTS yelp_businesses CASCADE;

CREATE TABLE yelp_businesses (
business_id TEXT PRIMARY KEY,
name TEXT,
address TEXT,
city TEXT,
state TEXT,
postal_code TEXT,
latitude FLOAT,
longitude FLOAT,
stars FLOAT,
review_count INT,
is_open INT,
categories TEXT,
Monday TEXT,
Tuesday TEXT,
Wednesday TEXT,
Thursday TEXT,
Friday TEXT,
Saturday TEXT,
Sunday TEXT
);

DROP TABLE IF EXISTS yelp_checkins CASCADE;

CREATE TABLE yelp_checkins (
business_id TEXT PRIMARY KEY,
date TEXT 
);


DROP TABLE IF EXISTS yelp_users_first CASCADE;

CREATE TABLE yelp_users_first (
user_id TEXT PRIMARY KEY,
name TEXT,
review_count INT,
yelping_since TEXT,
useful INT,
funny INT,
cool INT,
elite TEXT,
friends TEXT,
fans INT,
average_stars FLOAT,
compliment_hot INT,
compliment_more INT,
compliment_profile INT,
compliment_cute INT,
compliment_list INT,
compliment_note INT,
compliment_plain INT,
compliment_cool INT,
compliment_funny INT,
compliment_writer INT,
compliment_photos INT  
);


DROP TABLE IF EXISTS yelp_users_second CASCADE;

CREATE TABLE yelp_users_second (
user_id TEXT PRIMARY KEY,
name TEXT,
review_count INT,
yelping_since TEXT,
useful INT,
funny INT,
cool INT,
elite TEXT,
friends TEXT,
fans INT,
average_stars FLOAT,
compliment_hot INT,
compliment_more INT,
compliment_profile INT,
compliment_cute INT,
compliment_list INT,
compliment_note INT,
compliment_plain INT,
compliment_cool INT,
compliment_funny INT,
compliment_writer INT,
compliment_photos INT  
);



DROP TABLE IF EXISTS yelp_reviews_first CASCADE;

CREATE TABLE yelp_reviews_first (
review_id TEXT PRIMARY KEY,
user_id TEXT,
business_id TEXT,
stars FLOAT,
useful INT,
funny INT,
cool INT,
text TEXT,
date TEXT
);


DROP TABLE IF EXISTS yelp_reviews_second CASCADE;

CREATE TABLE yelp_reviews_second (
review_id TEXT PRIMARY KEY,
user_id TEXT,
business_id TEXT,
stars FLOAT,
useful INT,
funny INT,
cool INT,
text TEXT,
date TEXT
);


DROP TABLE IF EXISTS yelp_reviews_third CASCADE;

CREATE TABLE yelp_reviews_third (
review_id TEXT PRIMARY KEY,
user_id TEXT,
business_id TEXT,
stars FLOAT,
useful INT,
funny INT,
cool INT,
text TEXT,
date TEXT
);

DROP TABLE IF EXISTS yelp_tips CASCADE;

CREATE TABLE yelp_tips (
user_id TEXT,
business_id TEXT,
text TEXT,
date TEXT,
compliment_count INT  
);