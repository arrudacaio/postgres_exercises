-- Q1
select * from cd.facilities;

-- Q2
select fc.name, fc.membercost from cd.facilities as fc;

-- Q3

select fc.* from cd.facilities as fc where fc.membercost > 0;

-- Q4
select fc.facid, fc.name, fc.membercost, fc.monthlymaintenance from cd.facilities as fc where fc.membercost > 30;

-- Q5 Basic string searches
select fc.* from cd.facilities as fc where fc.name like '%Tennis%';

-- Q6  Matching against multiple possible values 
select fc.* from cd.facilities as fc where fc.facid in (1,5); 

-- Q7  Classify results into buckets 
select fac.name,
		case when (fac.monthlymaintenance > 100) then
			'expensive'
		else
		 	'cheap'
		end as cost
	from cd.facilities as fac;

-- Q8 Working with dates
select memid, surname, firstname, joindate from cd.members where  joindate > '2012-09-01';

-- Q9 Removing duplicates, and ordering results
select distinct surname from cd.members order by surname limit 10;

-- Q10 Combining results from multiples queries using UNION
select name
		from cd.facilities
union
select surname 
	from cd.members;

-- Q11 Simple aggregation
select max(joindate) as latest 
	from cd.members;

-- Q12 More aggregation
select firstname, surname, joindate 
	from cd.members order by joindate desc limit 1;
	
