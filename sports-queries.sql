--queries
select * from Players;
select * from Coaches;
select * from Teams;
select * from Matches;
select * from statistics;
select * from Injuryreports;
select * from Contracts;

--all players and their team name
SELECT Players.FirstName, Players.LastName, Teams.TeamName 
FROM Players 
INNER JOIN Teams ON Players.TeamID = Teams.TeamID;

-- all players who scored more than 20 points in a match
SELECT Players.FirstName, Players.LastName, Matches.MatchDate, Statistics.Points 
FROM Players 
INNER JOIN Statistics ON Players.PlayerID = Statistics.PlayerID 
INNER JOIN Matches ON Statistics.MatchID = Matches.MatchID 
WHERE Statistics.Points > 20;

--all players who scored more than 40 points in a match
--shows match date and points
SELECT Players.FirstName, Players.LastName, Matches.MatchDate, Statistics.Points 
FROM Players 
INNER JOIN Statistics ON Players.PlayerID = Statistics.PlayerID 
INNER JOIN Matches ON Statistics.MatchID = Matches.MatchID 
WHERE Statistics.Points > 40;

--query with more than 4 relations
--shows  the teams and the sum of its players points and their average rebounds
--(only the players in the database or the seed file)
--only matches after 01-01-2-22 (which applies all matches in this case)
SELECT Teams.TeamName, SUM(Statistics.Points) as TotalPoints, AVG(Statistics.Rebounds) as AverageRebounds
FROM Teams
JOIN Players ON Players.TeamID = Teams.TeamID
JOIN Statistics ON Players.PlayerID = Statistics.PlayerID
JOIN Matches ON Statistics.MatchID = Matches.MatchID
WHERE Matches.MatchDate >= '01-01-2023'
GROUP BY Teams.TeamName
HAVING AVG(Statistics.Rebounds) > 5

--all players with a salary higher than 400000000
--using outer join
SELECT Players.FirstName, Players.LastName, Contracts.Salary
FROM Players
LEFT OUTER JOIN Contracts ON Players.PlayerID = Contracts.PlayerID
WHERE Contracts.Salary > 40000000

--aggregate function
--counts the number of players for each team
SELECT Teams.TeamName, COUNT(DISTINCT Players.PlayerID) as NumPlayers
FROM Teams
JOIN Players ON Teams.TeamID = Players.TeamID
GROUP BY Teams.TeamName

--using subqueries
--shows if selected injury is present in a specific team

SELECT FirstName, LastName, ContactInformation
FROM Players
WHERE PlayerID IN (
    SELECT PlayerID
    FROM InjuryReports
    WHERE InjuryType = 'Ankle'
)
AND TeamID = (
    SELECT TeamID
    FROM Teams
    WHERE TeamName = 'Lakers'
);


--using set comparison




--using grouping
--shows average saklary per each team  grouped by team name
SELECT Teams.TeamName, AVG(Contracts.Salary) as AverageSalary
FROM Teams
JOIN Players ON Teams.TeamID = Players.TeamID
JOIN Contracts ON Players.PlayerID = Contracts.PlayerID
GROUP BY Teams.TeamName

--usinfg set operations
--shows all players in both selections together usin g union
SELECT FirstName, LastName, Position
FROM Players
WHERE Position = 'Small Forward'
UNION
SELECT FirstName, LastName, Position
FROM Players
WHERE Position = 'Power Forward';
--
