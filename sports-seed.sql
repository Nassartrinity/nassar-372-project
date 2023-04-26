-- Teams
INSERT or ignore into Teams (TeamID, TeamName, ContactInformation, SportType)
VALUES
    (1, 'Los Angeles Lakers', 'contact@lakers.com', 'Basketball'),
    (2, 'Brooklyn Nets', 'contact@nets.com', 'Basketball'),
    (3, 'Miami Heat', 'contact@heat.com', 'Basketball'),
    (4, 'Golden State Warriors', 'contact@warriors.com', 'Basketball'),
    (5, 'Houston Rockets', 'contact@rockets.com', 'Basketball');

-- Players
INSERT or ignore into Players (PlayerID, FirstName, LastName, ContactInformation, Position, TeamID)
VALUES
    (1, 'LeBron', 'James', 'lebron@lakers.com', 'Small Forward', 1),
    (2, 'Anthony', 'Davis', 'anthonydavis@lakers.com', 'Power Forward', 1),
    (3, 'Mikal', 'Bridges', 'mikelbridges@nets.com', 'Small Forward', 2),
    (4, 'Soenser', 'Dinwiddie', 'spencerdidwiddie@nets.com', 'Point Guard', 2),
    (5, 'Bam', 'Adebayo', 'bamadebayo@heat.com', 'Center', 3),
    (6, 'Jimmy', 'Butler', 'jimmybutler@heat.com', 'Small Forward', 3),
    (7, 'Stephen', 'Curry', 'stephencurry@warriors.com', 'Point Guard', 4),
    (8, 'Klay', 'Thompson', 'klaythompson@warriors.com', 'Shooting Guard', 4),
    (9, 'John', 'Wall', 'johnwall@rockets.com', 'Point Guard', 5),
    (10, 'Jalen', 'Green', 'jalengreen@rockets.com', 'Power Forward', 5);

-- Coaches
INSERT or ignore into Coaches (CoachID, FirstName, LastName, ContactInformation, TeamAffiliation, TeamID)
VALUES
    (1, 'Darwin', 'Ham', 'darwinham@lakers.com', 'Head Coach', 1),
    (2, 'Jaque', 'Vaughn', 'jquevaughn@nets.com', 'Head Coach', 2),
    (3, 'Erik', 'Spoelstra', 'erikspoelstra@heat.com', 'Head Coach', 3),
    (4, 'Steve', 'Kerr', 'stevekerr@warriors.com', 'Head Coach', 4),
    (5, 'Ime', 'Udoka', 'imeudoka@rockets.com', 'Head Coach', 5);

-- Matches
INSERT or ignore into Matches (MatchID, MatchDate, Location, Opponent, HomeTeamID, AwayTeamID)
VALUES
    (1, '01-01-2023', 'Staples Center', 'Chicago Bulls', 1, null),
    (2, '01-02-2023', 'Barclays Center', 'Boston Celtics', 2, null),
    (3, '01-03-2023', 'American Airlines Arena', 'Denver Nuggets', 3, null),
    (4, '01-04-2023', 'Chase Center', 'San Antonio Spurs', 4, null),
    (5, '01-05-2023', 'Toyota Center', 'Phoenix Suns', 5, null);

-- Seed data for Statistics table
INSERT or ignore into Statistics (StatisticID, PlayerID, MatchID, Points, Assists, Rebounds)
VALUES
  (1, 1, 1, 56, 8, 10),
  (2, 2, 1, 44, 4, 12),
  (3, 3, 2, 28, 10, 5),
  (4, 4, 2, 20, 12, 6),
  (5, 5, 3, 18, 4, 11),
  (6, 6, 3, 25, 7, 8),
  (7, 7, 4, 35, 9, 6),
  (8, 8, 4, 25, 6, 8),
  (9, 9, 5, 19, 10, 5),
  (10, 10, 5, 18, 8, 12);

-- Seed data for InjuryReports table
INSERT or ignore into InjuryReports (ReportID, PlayerID, InjuryType, Description, ReportDate)
VALUES
  (1, 1, 'Ankle', 'Sprained ankle during the second quarter', '2023-01-01'),
  (2, 4, 'Knee', 'Sore knee, questionable for next game', '2023-01-02'),
  (3, 5, 'Back', 'Strained back, day-to-day', '2023-01-03'),
  (4, 9, 'Hamstring', 'Pulled hamstring, out for the next two weeks', '2023-01-04'),
  (5, 10, 'Concussion', 'Concussion protocol, out indefinitely', '2023-01-05');

-- Seed data for Contracts table
INSERT or ignore into Contracts (ContractID, PlayerID, Salary, ContractStart, ContractEnd)
VALUES
  (1, 1, 42000000, '2021-07-01', '2026-06-30'),
  (2, 2, 37000000, '2022-07-01', '2027-06-30'),
  (3, 3, 40000000, '2019-07-01', '2024-06-30'),
  (4, 4, 33000000, '2019-07-01', '2024-06-30'),
  (5, 5, 28500000, '2021-07-01', '2026-06-30'),
  (6, 6, 34000000, '2019-07-01', '2024-06-30'),
  (7, 7, 43000000, '2022-07-01', '2027-06-30'),
  (8, 8, 39000000, '2019-07-01', '2024-06-30'),
  (9, 9, 46000000, '2021-07-01', '2026-06-30'),
  (10, 10, 33000000, '2020-07-01', '2025-06-30');
