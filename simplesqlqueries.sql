-- Q1
select * from cd.facilities;

-- Q2
select fc.name, fc.membercost from cd.facilities as fc;

-- Q3

select fc.* from cd.facilities as fc where fc.membercost > 0;