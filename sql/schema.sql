DROP TABLE IF EXISTS teams;
DROP TABLE IF EXISTS markets;
DROP SEQUENCE IF EXISTS team_id_seq;
DROP SEQUENCE IF EXISTS market_id_seq;
Create SEQUENCE market_id_seq START 1;
CREATE TABLE markets (
    market_id INTEGER PRIMARY KEY DEFAULT nextval('market_id_seq'),
    market_name VARCHAR NOT NULL UNIQUE,
    country VARCHAR NOT NULL
);
CREATE SEQUENCE team_id_seq START 1;
CREATE TABLE teams (
    team_id INTEGER PRIMARY KEY DEFAULT nextval('team_id_seq'),
    team_name VARCHAR NOT NULL UNIQUE,
    league VARCHAR NOT NULL,
    conference VARCHAR,
    founded INTEGER,
    market_id INTEGER REFERENCES markets(market_id)
);
INSERT INTO markets (market_name, country) VALUES
('Los Angeles', 'USA'),
('Boston', 'USA'),
('Chicago', 'USA'),
('San Francisco', 'USA'),
('Miami', 'USA');
INSERT INTO teams (team_name, market_id, league, conference, founded) VALUES
('Los Angeles Lakers', (SELECT market_id FROM markets WHERE market_name = 'Los Angeles'), 'NBA', 'Western', 1947),
('Boston Celtics', (SELECT market_id FROM markets WHERE market_name = 'Boston'), 'NBA', 'Eastern', 1946),
('Chicago Bulls', (SELECT market_id FROM markets WHERE market_name = 'Chicago'), 'NBA', 'Eastern', 1966),
('Golden State Warriors', (SELECT market_id FROM markets WHERE market_name = 'San Francisco'), 'NBA', 'Western', 1946),
('Miami Heat', (SELECT market_id FROM markets WHERE market_name = 'Miami'), 'NBA', 'Eastern', 1988);
