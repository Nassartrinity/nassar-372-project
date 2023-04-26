drop table if exists Players;
drop table if exists Coaches;
drop table if exists Teams;
drop table if exists Matches;
drop table if exists statistics;
drop table if exists Injuryreports;
drop table if exists Contracts;


CREATE TABLE Players (
  PlayerID INT PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  ContactInformation VARCHAR(100),
  Position VARCHAR(50),
  TeamID INT,
  FOREIGN KEY (TeamID) REFERENCES Teams(TeamID)
);

CREATE TABLE Coaches (
  CoachID INT PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  ContactInformation VARCHAR(100),
  TeamAffiliation VARCHAR(50),
  TeamID INT,
  FOREIGN KEY (TeamID) REFERENCES Teams(TeamID)
);

CREATE TABLE Teams (
  TeamID INT PRIMARY KEY,
  TeamName VARCHAR(50),
  ContactInformation VARCHAR(100),
  SportType VARCHAR(50)
);

CREATE TABLE Matches (
  MatchID INT PRIMARY KEY,
  MatchDate DATE,
  Location VARCHAR(50),
  Opponent VARCHAR(50),
  HomeTeamID INT,
  AwayTeamID INT,
  FOREIGN KEY (HomeTeamID) REFERENCES Teams(TeamID),
  FOREIGN KEY (AwayTeamID) REFERENCES Teams(TeamID)
);

CREATE TABLE Statistics (
  StatisticID INT PRIMARY KEY,
  PlayerID INT,
  MatchID INT,
  Points INT,
  Assists INT,
  Rebounds INT,
  FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID),
  FOREIGN KEY (MatchID) REFERENCES Matches(MatchID)
);

CREATE TABLE InjuryReports (
  ReportID INT PRIMARY KEY,
  PlayerID INT,
  InjuryType VARCHAR(50),
  Description VARCHAR(200),
  ReportDate DATE,
  FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID)
);

CREATE TABLE Contracts (
  ContractID INT PRIMARY KEY,
  PlayerID INT,
  Salary DECIMAL(10,2),
  ContractStart DATE,
  ContractEnd DATE,
  FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID)
);
