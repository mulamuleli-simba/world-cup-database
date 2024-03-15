CREATE DATABASE worldcup;
\c worldcup;

CREATE TABLE teams(team_id SERIAL PRIMARY KEY NOT NULL, name text UNIQUE NOT NULL);


CREATE TABLE games(game_id SERIAL PRIMARY KEY NOT NULL, 
    year INT NOT NULL,
    round VARCHAR NOT NULL, 
    winner_goals INT NOT NULL, 
    opponent_goals INT NOT NULL,
    winner_id INT NOT NULL,
    FOREIGN KEY(winner_id) REFERENCES teams(team_id),
    opponent_id INT NOT NULL,
    FOREIGN KEY(opponent_id) REFERENCES teams(team_id));

