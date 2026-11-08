DROP TABLE IF EXISTS teams;
DROP SEQUENCE IF EXISTS team_id_seq;
CREATE SEQUENCE team_id_seq START 1;
CREATE TABLE teams (
    team_id INTEGER PRIMARY KEY DEFAULT nextval('team_id_seq'),
    team_name VARCHAR NOT NULL UNIQUE,
    league VARCHAR NOT NULL,
    conference VARCHAR,
    founded INTEGER
);
INSERT INTO teams (team_name, league, conference, founded) VALUES
('Los Angeles Lakers', 'NBA', 'Western', 1947),
('Boston Celtics', 'NBA', 'Eastern', 1946),
('Chicago Bulls', 'NBA', 'Eastern', 1966),
('Golden State Warriors', 'NBA', 'Western', 1946),
('Miami Heat', 'NBA', 'Eastern', 1988);
