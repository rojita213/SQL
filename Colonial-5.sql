--Rojita Ghimire and Adesh Dara

USE [ghimirer1ColonialFA2025]
GO

--1. 
SELECT		R.TripID, TripName, TripDate
FROM		RESERVATION	R,	TRIP	T
WHERE		R.TripId = T.TripID 
	AND		NumPersons > 3;

--2. 
SELECT		TripID, TripName
FROM		TRIP	
WHERE		TripID	IN
	(SELECT		TripID
	FROM		TRIP_GUIDES
	WHERE		GuideNum IN
		(SELECT		GuideNum
		FROM		GUIDE
		WHERE		FirstName = 'Sam' And LastName = 'Kelly'));

--3
SELECT		ReservationID, TripId, TripDate
FROM		RESERVATION
WHERE		CustomerNum	IN
	(SELECT		CustomerNum
	FROM		CUSTOMER
	WHERE		CustomerNum = '124');

--4
SELECT		ReservationID, TripId, TripDate
FROM		RESERVATION	R, CUSTOMER	C
WHERE		R.CustomerNum = C.CustomerNum
	AND			R.CustomerNum = '124';

--5
SELECT		ReservationID, TripId, TripDate
FROM		RESERVATION	R JOIN CUSTOMER	C
	ON		R.CustomerNum = C.CustomerNum
WHERE		R.CustomerNum = '124';

--6
SELECT		C. CustomerNum, LastName, FirstName, ReservationID
FROM		CUSTOMER	C LEFT JOIN	RESERVATION	R
	ON		C.CustomerNum = R.CustomerNum
ORDER BY	LastName, FirstName;

--7
SELECT		TripID, TripName
FROM		TRIP
WHERE		Distance > ALL
	(SELECT		Distance
	FROM		TRIP
	WHERE		Type = 'Hiking');

--8
SELECT		TripID, TripName
FROM		TRIP
WHERE		Distance > 
	(SELECT		MAX(Distance)
	FROM		TRIP
	WHERE		Type = 'Hiking');

--9
SELECT		T.TripID, T.TripName, T.StartLocation, TT.TripID, TT.TripName
FROM		TRIP	T, TRIP		TT
WHERE		T.StartLocation = TT.StartLocation
	AND		T.TripID < TT.TripID
ORDER By	T.TripID, TT.TripID;

--10.
SELECT		FirstName, LastName
FROM		GUIDE
WHERE State	=	'NH'

UNION

SELECT		FirstName, LastName
FROM		TRIP_GUIDES T, GUIDE G
WHERE		T.GuideNum = G.GuideNum;