-- Describe the data at a high level
select * from virginia

-- What is the gender breakdown in population by county?
select county, totalpop, men, women,
  ROUND(CAST(men AS NUMERIC(10, 2)) / totalpop * 100, 2) AS male_percent,
  ROUND(CAST(women AS NUMERIC(10, 2)) / totalpop * 100, 2) AS female_percent
from virginia order by county


-- What is the race breakdown in population by county?
select county, totalpop, hispanic, white, black, native, asian, pacific,
	ROUND(CAST(hispanic AS NUMERIC(10, 2)) / totalpop * 100, 2) AS hispanic_percent,
	ROUND(CAST(white AS NUMERIC(10, 2)) / totalpop * 100, 2) AS white_percent,
	ROUND(CAST(black AS NUMERIC(10, 2)) / totalpop * 100, 2) AS black_percent,
	ROUND(CAST(native AS NUMERIC(10, 2)) / totalpop * 100, 2) AS native_percent,
	ROUND(CAST(asian AS NUMERIC(10, 2)) / totalpop * 100, 2) AS asain_percent,
	ROUND(CAST(pacific AS NUMERIC(10, 2)) / totalpop * 100, 2) AS pacific_percent
from virginia order by county


-- What is the type of work breakdown by county?
select, county, public_work, private_work, self_employed, family_work

-- What counties have the highest highest unemployment rate?
select county, unemployment,  from virginia order by unemployment

