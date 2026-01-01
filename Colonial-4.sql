--Rojita Ghimire and Samriddhi Limbu

USE [ghimirer1ColonialFA2025]
GO

-- 1.

SELECT		*
FROM		GUIDE
WHERE		State = 'NH';

-- 2.
SELECT		TripName
FROM		TRIP
WHERE		TYPE = 'Hiking' AND MaxGrpSize < 10;

-- 3.
SELECT		FirstName, LastName, State
FROM		GUIDE
WHERE		STATE IN ('CT','ME','VT','MA')
ORDER BY	State	DESC, LastName;

-- 4.
SELECT		State, Count (*) AS NumberOfCustomers
FROM		CUSTOMER
GROUP BY	State;

-- 5.
SELECT		COUNT(*) AS	TotalNumberOfReservations, 
			SUM(TripPrice * NumPersons) AS TotalTripPrice,
			AVG(NumPersons) AS AverageNumber
FROM		RESERVATION;

-- 6.
SELECT		ReservationID, TripId, CustomerNum,
			((TripPrice + OtherFees)* NumPersons)	AS	TotalPrice
FROM		RESERVATION
WHERE		NumPersons > 3;

-- 7.
SELECT		TripName
FROM		TRIP
WHERE		Season Like '%Spring%';


-- 8.
SELECT		FirstName, LastName, HireDate
FROM		GUIDE
WHERE		HireDate > '2014-06-01'
ORDER BY	HireDate;

-- 9. 
SELECT		DISTINCT(State)
FROM		TRIP;


-- 10.
SELECT		ReservationID
FROM		RESERVATION
WHERE		TripId	IN
			(SELECT TripId
			FROM	TRIP
			WHERE	Type = 'Hiking');

-- 11.
SELECT		MIN(Distance) AS ShortestBikingDistance
FROM		TRIP
WHERE		Type = 'Biking';


-- 12.
SELECT		TripId, SUM(TripPrice * NumPersons) As SumTripPrice
FROM		RESERVATION
GROUP By	TripId
HAVING		Count(TripId) > 1;