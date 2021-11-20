DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE planets(
    id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL,
  orbits_around INTEGER NOT NULL REFERENCES stars ON DELETE SET NULL
);

CREATE TABLE stars(
    id SERIAL PRIMARY KEY,
    name text NOT NULL,
    galaxy INTEGER NOT NULL REFERENCES galaxies ON DELETE SET NULL
);

CREATE TABLE galaxies(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE satellites(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    orbits_around  INTEGER NULL FOREIGN KEY REFERENCES planets ON DELETE SET NULL
)