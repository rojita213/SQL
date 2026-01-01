--Rojita Ghimire and Joseph Owusu Tikoli Annan

USE [ghimirer1ColonialFA2025]
GO

--1

CREATE TABLE	HIKING(
	TripId			DECIMAL(3,0)		PRIMARY KEY,
	TripName		CHAR(75),
	State			CHAR(2),
	Distance		DECIMAL(4,0),
	MaxGrpSize		DECIMAL(4,0),
	Season			CHAR(20)
);

EXEC sp_columns	HIKING;

--2
INSERT INTO		HIKING 
SELECT			TripID, TripName, State, Distance, MaxGrpSize, Season
FROM			TRIP
WHERE			Type = 'Hiking';

SELECT			*
FROM			HIKING;



--3
UPDATE			HIKING
SET				MaxGrpSize = MaxGrpSize + 2
WHERE			Season LIKE '%Spring';

SELECT			*
FROM			HIKING;

--4
INSERT INTO		HIKING
	VALUES		(45, 'Champlain Falls', 'VT', 5, 10, 'Summer');

SELECT			*
FROM			HIKING;

--5
DELETE FROM		HIKING
WHERE			TripId = 10;

SELECT			*
FROM			HIKING;

--6

UPDATE			HIKING
SET				Distance = NULL
WHERE			TripName = 'Black Pond';

SELECT			*
FROM			HIKING;

--7

ALTER	TABLE	HIKING
ADD				DifficultyLevel	CHAR(3);

EXEC sp_columns	HIKING;


--8
UPDATE			HIKING
SET				DifficultyLevel = 'MOD';

SELECT			*
FROM			HIKING;

UPDATE			HIKING
SET				DifficultyLevel = 'HRD'
WHERE			TripName = 'Crawford Path Presidentials Hike';

SELECT			*
FROM			HIKING;


--9
ALTER	TABLE	HIKING
ALTER	COLUMN	Season	CHAR(15);

EXEC sp_columns	HIKING;


--10
ALTER	TABLE	HIKING
ALTER	COLUMN	DifficultyLevel	CHAR(3)		NOT NULL;

EXEC sp_columns	HIKING;

--11	(Colonial Diagram in Database)


