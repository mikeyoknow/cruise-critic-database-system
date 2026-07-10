# Cruise Critic Database System

A normalized relational database project inspired by Cruise Critic, designed to model cruise listings, ships, itineraries, ports, departure dates, partner deals, bonus offers, customers, reviews, and ratings.

This repository is a cleaned, portfolio-ready version of an EECS3421 database systems project. It focuses on relational database design, data integrity, normalized schema construction, sample data loading, and analytical SQL query design.

## Project Overview

Cruise-planning platforms need to support searchable cruise listings, trip schedules, departure ports, itineraries, partner deals, bonus offers, and user-generated reviews. This project models those operational requirements as a relational database system.

The database supports:

- Cruise, ship, cruise line, itinerary, and port management
- Departure-date tracking for cruises
- Partner deals and cabin/price-tier information
- Bonus-offer tracking
- Customer reviews and category-based ratings
- Analytical queries for management-style reporting

## Key Features

- **Normalized relational schema** with junction tables for many-to-many relationships
- **Primary key and foreign key constraints** to preserve referential integrity
- **Sample seed data** covering cruises, ships, ports, deals, customers, reviews, and ratings
- **Management queries** using joins, grouping, aggregation, filtering, and `HAVING`
- **SQL Server-compatible scripts** for schema creation and data loading

## Repository Structure

```text
cruise-critic-database-system/
├── README.md
├── .gitignore
├── sql/
│   ├── 01_schema.sql
│   ├── 02_seed.sql
│   ├── 03_queries.sql
│   └── 99_drop.sql
├── docs/
│   ├── DESIGN_NOTES.md
│   └── PROJECT_SUMMARY.md
└── data/
    └── sample-data-overview.md
```

## Database Entities

The database includes the following main entities:

- `SHIP`
- `CRUISE`
- `CRUISE_LINE`
- `DEPARTURE_DATE`
- `CRUISE_DATE`
- `BONUS_OFFER`
- `CRUISE_OFFER`
- `DEAL`
- `PRICE_TIER`
- `DEAL_TIER`
- `CUSTOMER`
- `REVIEW`
- `REVIEW_TYPE`
- `RATING`
- `ITINERARY`
- `PORT`
- `ITINERARY_PORT`

## How to Run

### Option 1: SQL Server Management Studio or Azure Data Studio

1. Open SQL Server Management Studio or Azure Data Studio.
2. Create/select a database, for example:

```sql
CREATE DATABASE CruiseCriticDB;
GO

USE CruiseCriticDB;
GO
```

3. Run the scripts in this order:

```text
sql/01_schema.sql
sql/02_seed.sql
sql/03_queries.sql
```

### Option 2: Reset and Re-run

To clean the database objects before rebuilding:

```text
sql/99_drop.sql
sql/01_schema.sql
sql/02_seed.sql
sql/03_queries.sql
```

## Example Analytical Queries

The repository includes queries to answer questions such as:

1. Which cruises have an average rating score of at least 4?
2. Which cruises depart from Toronto?
3. Which cruises include two or more bonus offers?
4. Which cruises use ships with capacity of at least 3000 passengers and depart after November 1, 2025?
5. What is the minimum and maximum advertised price by cruise?
6. Which cruise lines have the highest average customer rating?

## Skills Demonstrated

- SQL
- SQL Server
- Relational database design
- Normalization
- Entity-relationship modelling
- Primary and foreign key design
- Data integrity constraints
- Joins and aggregations
- `GROUP BY`, `HAVING`, and conditional filtering
- Analytical reporting queries

## Portfolio Note

This repository removes student identifiers and course-submission formatting from the original academic deliverable. It is intended to present the technical database design and SQL implementation in a clean, recruiter-friendly format.
