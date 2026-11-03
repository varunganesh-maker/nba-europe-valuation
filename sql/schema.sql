CREATE SEQUENCE nba_team START 1;
CREATE TABLE nba_teams (
    team_id INTEGER PRIMARY KEY DEFAULT nextval('nba_team'),
    team_name VARCHAR NOT NULL UNIQUE,
    city VARCHAR NOT NULL,
    conference VARCHAR,
    founded INTEGER
);
INSERT INTO nba_teams (team_name, city, conference, founded) VALUES
('Los Angeles Lakers', 'Los Angeles', 'Western', 1947),
('Boston Celtics', 'Boston', 'Eastern', 1946),
('Chicago Bulls', 'Chicago', 'Eastern', 1966),
('Golden State Warriors', 'San Francisco', 'Western', 1946),
('Miami Heat', 'Miami', 'Eastern', 1988);
