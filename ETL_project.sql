-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "states" (
    "countyid" Varchar   NOT NULL,
    "state" Varchar   NOT NULL,
    CONSTRAINT "pk_states" PRIMARY KEY (
        "countyid"
     )
);

CREATE TABLE "county_names" (
    "countyid" Varchar   NOT NULL,
    "county" Varchar   NOT NULL,
    CONSTRAINT "pk_county_names" PRIMARY KEY (
        "countyid"
     )
);

CREATE TABLE "counties" (
    "countyid" Varchar   NOT NULL,
    "totalpop" Varchar   NOT NULL,
    "white" Varchar   NOT NULL,
    "income" Varchar   NOT NULL,
    "incomepercap" Varchar   NOT NULL,
    "employed" Varchar   NOT NULL,
    "broadband_usage" Varchar   NOT NULL,
    CONSTRAINT "pk_counties" PRIMARY KEY (
        "countyid"
     )
);

ALTER TABLE "states" ADD CONSTRAINT "fk_states_countyid" FOREIGN KEY("countyid")
REFERENCES "counties" ("countyid");

ALTER TABLE "county_names" ADD CONSTRAINT "fk_county_names_countyid" FOREIGN KEY("countyid")
REFERENCES "counties" ("countyid");

