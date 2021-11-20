-- from the terminal run:
-- psql < air_traffic.sql

DROP DATABASE IF EXISTS air_traffic;

CREATE DATABASE air_traffic;

\c air_traffic

CREATE TABLE passengers(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  seat TEXT NOT NULL,
  flightID INT NOT NULL REFERENCES flights ON DELETE CASCADE
  }

CREATE TABLE flightID(
  id SERIAL PRIMARY KEY,
  depDate DATE NOT NULL,
  arrDate DATE NOT NULL,
  depCityID INT NOT NULL REFERENCES cities ON DELETE CASCADE,
  arrCityID INT NOT NULL REFERENCES cities ON DELETE CASCADE,
  airlineID INT NOT NULL REFERENCES airlines ON DELETE CASCADE
)

CREATE TABLE cities(
  id SERIAL PRIMARY KEY,
  city_name TEXT NOT NULL,
  countryID INT NOT NULL REFERENCES countries ON DELETE CASCADE,
)

CREATE TABLE countries(
  id SERIAL PRIMARY KEY,
  country_name TEXT NOT NULL,
)

CREATE TABLE airlines(
  id SERIAL PRIMARY KEY,
  airline_name TEXT NOT NULL,
)

