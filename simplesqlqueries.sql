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