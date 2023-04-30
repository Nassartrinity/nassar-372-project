# nassar-372-project
## Domain Description

### Title: Sports team management

The SQL Domain for Sports Team Management is designed to manage information using Structured Query Language (SQL) commands. This database will include various tables with information about entities such as players, coaches, teams, matches, and statistics. The purpose of this database is to provide a centralized repository of information that can be easily queried and analyzed to support various administrative and competitive functions within the sports team and the athletes.

### Entities and Relationships
The SQL Domain for Sports Team Management will include several key entities, each of which will be related to one another in various ways. These entities include:

Players: This entity will contain information about individual players, including their name, contact information, position, and other relevant details. Each player will be assigned a unique identifier to ensure that their information can be easily tracked and accessed.

Coaches: This entity will contain information about individual coaches, including their name, contact information, team affiliation, and other relevant details. Each coach will be assigned a unique identifier to ensure that their information can be easily tracked and accessed.

Teams: This entity will contain information about the various teams within the sports organization, including their name, contact information, and other relevant details. Each team will be assigned a unique identifier to ensure that its information can be easily tracked and accessed.

Matches: This entity will contain information about individual matches played by the team, including the date, location, opponents, and other relevant details. Each match will be assigned a unique identifier to ensure that its information can be easily tracked and accessed.

Statistics: This entity will contain information about individual player and team statistics, including the player or team identifier, the match identifier, and various statistical metrics such as goals, assists, and saves. This relationship will allow the database to track player and team performance over time.

along with  injury reports and contracts

Using SQL commands, users can retrieve information from these tables, join tables together to perform more complex queries, and perform various data manipulation operations such as inserting and projecting data.

-----------------------------------------
 
### Entity-Relationship Diagram
to be uploaded

 

 -------------------------------------
Relational Schema

Players(*PlayerID*, FirstName, LastName, ContactInformation, Position, TeamID)

Coaches(*CoachID*, FirstName, LastName, ContactInformation, TeamAffiliation)

Teams(*TeamID*, TeamName, ContactInformation, SportType)

Matches(*MatchID*, MatchDate, Location, Opponent, HomeTeamID, AwayTeamID)

Statistics(*StatisticID*, PlayerID, MatchID, Goals, Assists, Saves)

InjuryReports(*ReportID*, PlayerID, InjuryType, Description, ReportDate)

Contracts(*ContractID*, PlayerID, Salary, ContractStart, ContractEnd)



----------------------------------------------

### Boyce–Codd Normal Form Decomposition

Step 1: Identify the functional dependencies between attributes in each table.

Players:

PlayerID -> FirstName, LastName, ContactInformation, Position, TeamID
TeamID -> TeamName
Coaches:

CoachID -> FirstName, LastName, ContactInformation, TeamAffiliation
Teams:

TeamID -> TeamName, ContactInformation, SportType
Matches:

MatchID -> MatchDate, Location, Opponent, HomeTeamID, AwayTeamID
HomeTeamID -> TeamName
AwayTeamID -> TeamName
Statistics:

StatisticID -> PlayerID, MatchID, Goals, Assists, Saves
InjuryReports:

ReportID -> PlayerID, InjuryType, Description, ReportDate
Contracts:

ContractID -> PlayerID, Salary, ContractStart, ContractEnd
Step 2: Check if each table is in 1NF by ensuring that each attribute is atomic and there are no repeating groups or arrays.

All tables in the above schema are already in 1NF.

Step 3: Check if each table is in 2NF by ensuring that each non-key attribute is fully dependent on the primary key.

All tables in the above schema are already in 2NF.

Step 4: Check if each table is in 3NF by ensuring that each non-key attribute is not transitively dependent on the primary key.

All tables in the above schema are already in 3NF.

Step 5: Check if each table is in BCNF by ensuring that every determinant is a candidate key.

All tables in the above schema are in BCNF as every determinant is a candidate key.



Assumptions made:

Each player can only belong to one team.
Each coach can only be affiliated with one team.
Each team can have many players and one coach.
Each match involves two teams, one as the home team and one as the away team.
Each statistic is unique to one player and one match.
Each injury report is unique to one player.
Each contract is unique to one player.


