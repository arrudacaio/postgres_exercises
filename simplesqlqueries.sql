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