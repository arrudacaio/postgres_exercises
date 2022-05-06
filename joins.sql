-- Q1  Retrieve the start times of members' bookings 

select b.starttime from cd.members as m
	inner join cd.bookings as b
		on m.memid = b.memid
	where m.firstname = 'David' and m.surname = 'Farrell';