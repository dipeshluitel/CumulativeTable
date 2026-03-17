SELECT * FROM player_seasons;(THIS WAS THE PARENT TABLE)

CREATE TABLE players(
player_name TEXT,
height TEXT,
college TEXT,
country TEXT,
draft_year TEXT,
draft_round TEXT,
draft_number TEXT,
season_stats season_stats[],
scoring_class scoring_class,
years_since_last_season INTEGER,
current_season INTEGER,
is_active BOOLEAN,
PRIMARY KEY(player_name, current_season)
)