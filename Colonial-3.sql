-- 1. Group Members Name: Rojita Ghimire and Eyad Halawani



-- 2. 
EXEC	sp_columns	CUSTOMER;
Select	*
FROM	CUSTOMER;

EXEC	sp_columns	GUIDE;
Select	*
FROM	GUIDE;

EXEC	sp_columns	RESERVATION;
Select	*
FROM	RESERVATION;

EXEC	sp_columns	TRIP;
Select	*
FROM	TRIP;

EXEC	sp_columns	TRIP_GUIDES;
Select	*
FROM	TRIP_GUIDES;



-- 3. 
CREATE	TABLE	ADVENTURE(
	TripID			INTEGER		PRIMARY KEY,
	TripName		VARCHAR(75),
	StartLocation	CHAR(50),
	State			CHAR(2),
	Distance		NUMERIC(4,0),
	MaxGrpSize		NUMERIC(4,0),
	Type			CHAR(20),
	Season			CHAR(20));

EXEC sp_columns	ADVENTURE;



-- 4. 
INSERT INTO ADVENTURE
VALUES	( 45, 'Jay Peak', 'Jay', 'VT', 10, 8, 'Hiking', 'Summer'),
		( 48, 'Fall Hike', 'Jay', 'VT', 3, 12, 'Hiking', 'Fall');

SELECT	*
FROM	ADVENTURE;



-- 5. 
UPDATE	ADVENTURE
SET		MaxGrpSize = 10
WHERE	TripName = 'Jay Peak';

Select	*
FROM	ADVENTURE;



-- 6. 
/*
DELETE	
FROM	ADVENTURE
WHERE	TripName = 'Fall Hike';
*/



-- 7. 
/*
DROP TABLE	ADVENTURE;
*/
