# Cumulative Player Table (PostgreSQL)

This project demonstrates how to build a **cumulative table** in PostgreSQL to track player statistics across multiple seasons.

Instead of storing each season independently, the table maintains a **running history of a player's seasons** using PostgreSQL composite types and arrays. Each time a new season arrives, the pipeline merges **previous season data (yesterday)** with **new season data (today)** to generate the updated player record.

## Key Concepts

- **Cumulative Tables** – Maintain historical records inside a single row.
- **PostgreSQL Composite Types** – Used to define structured season statistics.
- **Arrays of Composite Types** – Store a player's season history.
- **Enum Types** – Classify players based on scoring performance.
- **FULL OUTER JOIN** – Merge previous and current season datasets.
- **COALESCE** – Handle missing player attributes across seasons.
- **Incremental Data Updates** – Append new season statistics while preserving history.

## Database Structure

The `players` table stores:

- Player metadata (name, college, draft information, etc.)
- Season history as an **array of `season_stats`**
- Player performance classification (`scoring_class`)
- Activity status per season
- Years since last active season

## Workflow

1. Extract **yesterday's player state** from the cumulative table.
2. Extract **today's season data** from the raw season dataset.
3. Merge both datasets using `FULL OUTER JOIN`.
4. Append new season stats to the existing array.
5. Update player scoring classification and activity status.
6. Insert the updated records back into the cumulative table.

## Learning Outcome

This project demonstrates a practical **data engineering pattern** used in analytics pipelines to maintain historical state efficiently while processing incremental data updates.

## Tech Stack

- PostgreSQL
- SQL (CTE, arrays, composite types, enums)