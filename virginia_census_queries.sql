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
select county, public_work, private_work, self_employed, family_work, unemployment,
	ROUND(CAST(public_work AS NUMERIC(10, 2)) / totalpop * 100, 2) AS puw_percent,
	ROUND(CAST(private_work AS NUMERIC(10, 2)) / totalpop * 100, 2) AS prw_percent,
	ROUND(CAST(self_employed AS NUMERIC(10, 2)) / totalpop * 100, 2) AS sew_percent,
	ROUND(CAST(family_work AS NUMERIC(10, 2)) / totalpop * 100, 2) AS fw_percent,
	ROUND(CAST(unemployment AS NUMERIC(10, 2)) / totalpop * 100, 2) AS u_percent
from virginia order by county

-- What is the transportation breakdown in population by county?
select county, totalpop, drive, carpool, transit, walk, other_transp, work_at_home,
	ROUND(CAST(drive AS NUMERIC(10, 2)) / totalpop * 100, 2) AS drive_percent,
	ROUND(CAST(carpool AS NUMERIC(10, 2)) / totalpop * 100, 2) AS carpool_percent,
	ROUND(CAST(transit AS NUMERIC(10, 2)) / totalpop * 100, 2) AS transit_percent,
	ROUND(CAST(walk AS NUMERIC(10, 2)) / totalpop * 100, 2) AS walk_percent,
	ROUND(CAST(other_transp AS NUMERIC(10, 2)) / totalpop * 100, 2) AS other_transp_percent,
	ROUND(CAST(work_at_home AS NUMERIC(10, 2)) / totalpop * 100, 2) AS work_at_home_percent
from virginia order by county

-- What counties have the highest highest unemployment rate?
select county, unemployment,  from virginia order by unemployment

