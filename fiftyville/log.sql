-- Keep a log of any SQL queries you execute as you solve the mystery.
-- CREATE TABLE crime_scene_reports (
--     id INTEGER,
--     year INTEGER,
--     month INTEGER,
--     day INTEGER,
--     street TEXT,
--     description TEXT,
--     PRIMARY KEY(id)
-- );
-- CREATE TABLE interviews (
--     id INTEGER,
--     name TEXT,
--     year INTEGER,
--     month INTEGER,
--     day INTEGER,
--     transcript TEXT,
--     PRIMARY KEY(id)
-- );
-- CREATE TABLE courthouse_security_logs (
--     id INTEGER,
--     year INTEGER,
--     month INTEGER,
--     day INTEGER,
--     hour INTEGER,
--     minute INTEGER,
--     activity TEXT,
--     license_plate TEXT,
--     PRIMARY KEY(id)
-- );
-- CREATE TABLE atm_transactions (
--     id INTEGER,
--     account_number INTEGER,
--     year INTEGER,
--     month INTEGER,
--     day INTEGER,
--     atm_location TEXT,
--     transaction_type TEXT,
--     amount INTEGER,
--     PRIMARY KEY(id)
-- );
-- CREATE TABLE bank_accounts (
--     account_number INTEGER,
--     person_id INTEGER,
--     creation_year INTEGER,
--     FOREIGN KEY(person_id) REFERENCES people(id)
-- );
-- CREATE TABLE airports (
--     id INTEGER,
--     abbreviation TEXT,
--     full_name TEXT,
--     city TEXT,
--     PRIMARY KEY(id)
-- );
-- CREATE TABLE flights (
--     id INTEGER,
--     origin_airport_id INTEGER,
--     destination_airport_id INTEGER,
--     year INTEGER,
--     month INTEGER,
--     day INTEGER,
--     hour INTEGER,
--     minute INTEGER,
--     PRIMARY KEY(id),
--     FOREIGN KEY(origin_airport_id) REFERENCES airports(id),
--     FOREIGN KEY(destination_airport_id) REFERENCES airports(id)
-- );
-- CREATE TABLE passengers (
--     flight_id INTEGER,
--     passport_number INTEGER,
--     seat TEXT,
--     FOREIGN KEY(flight_id) REFERENCES flights(id)
-- );
-- CREATE TABLE phone_calls (
--     id INTEGER,
--     caller TEXT,
--     receiver TEXT,
--     year INTEGER,
--     month INTEGER,
--     day INTEGER,
--     duration INTEGER,
--     PRIMARY KEY(id)
-- );
-- CREATE TABLE people (
--     id INTEGER,
--     name TEXT,
--     phone_number TEXT,
--     passport_number INTEGER,
--     license_plate TEXT,
--     PRIMARY KEY(id)
-- )

-- CREATE TABLE crime_scene_reports (
--     id INTEGER,
--     year INTEGER,
--     month INTEGER,
--     day INTEGER,
--     street TEXT,
--     description TEXT,
--     PRIMARY KEY(id)
-- );

-- select description from crime_scene_reports
-- where month = 7
-- and day = 28
-- and street = "Chamberlin Street"

-- Theft of the CS50 duck took place at 10:15am at the Chamberlin Street courthouse. Interviews were conducted today with
--  three witnesses who were present at the time — each of their interview transcripts mentions the courthouse.

-- CREATE TABLE courthouse_security_logs (
--     id INTEGER,
--     year INTEGER,
--     month INTEGER,
--     day INTEGER,
--     hour INTEGER,
--     minute INTEGER,
--     activity TEXT,
--     license_plate TEXT,
--     PRIMARY KEY(id)

-- select license_plate from courthouse_security_logs
-- where year = 2020
-- and day = 28
-- and month = 7
-- and hour = 10
-- and minute >10 and minute < 20
-- G412CB7

-- CREATE TABLE interviews (
--     id INTEGER,
--     name TEXT,
--     year INTEGER,
--     month INTEGER,
--     day INTEGER,
--     transcript TEXT,
--     PRIMARY KEY(id)

-- select name,transcript,id from interviews
-- where year = 2020
-- and month = 7
-- and day = 28


-- CREATE TABLE phone_calls (
--     id INTEGER,
--     caller TEXT,
--     receiver TEXT,
--     year INTEGER,
--     month INTEGER,
--     day INTEGER,
--     duration INTEGER,
--     PRIMARY KEY(id)



-- select receiver,duration from phone_calls
-- where year = 2020
-- and month = 7
-- and day = 28
-- and caller = "(367) 555-5533"



-- CREATE TABLE people (
--     id INTEGER,
--     name TEXT,
--     phone_number TEXT,
--     passport_number INTEGER,
--     license_plate TEXT,
--     PRIMARY KEY(id)
-- )

-- select name from people
-- where phone_number in
-- ("(130) 555-0289",
-- "(499) 555-9472",
-- "(367) 555-5533",
-- "(499) 555-9472",
-- "(286) 555-6063",
-- "(770) 555-1861",
-- "(031) 555-6622",
-- "(826) 555-1652",
-- "(338) 555-6650")
-- and license_plate in 
-- ("13FNH73",
-- "5P2BI95",
-- "94KL13X",
-- "6P58WS2",
-- "4328GD8")

-- select phone_number from people
-- where name = "Ernest"

-- select name from people
-- where phone_number = "(375) 555-8161"


-- select passport_number from people
-- where name = 'Berthold'
-- 5773159633


-- CREATE TABLE flights (
--     id INTEGER,
--     origin_airport_id INTEGER,
--     destination_airport_id INTEGER,
--     year INTEGER,
--     month INTEGER,
--     day INTEGER,
--     hour INTEGER,
--     minute INTEGER,
--     PRIMARY KEY(id),
--     FOREIGN KEY(origin_airport_id) REFERENCES airports(id),
--     FOREIGN KEY(destination_airport_id) REFERENCES airports(id)

-- select destination_airport_id from flights
-- where 

-- CREATE TABLE passengers (
--     flight_id INTEGER,
--     passport_number INTEGER,
--     seat TEXT,
--     FOREIGN KEY(flight_id) REFERENCES flights(id)

-- select flight_id from passengers
-- where passport_number = "5773159633"

-- select destination_airport_id from flights
-- where id = 36

-- CREATE TABLE airports (
--     id INTEGER,
--     abbreviation TEXT,
--     full_name TEXT,
--     city TEXT,
--     PRIMARY KEY(id)

-- select city from airports
-- where id = 4


-- select receiver,duration from phone_calls
-- where year = 2020
-- and month = 7
-- and day = 28
-- and caller = "(367) 555-5533"

-- select passport_number from people
-- where phone_number in
-- ("(375) 555-8161",
-- "(344) 555-9601",
-- "(022) 555-4052",
-- "(704) 555-5790")

-- CREATE TABLE passengers (
--     flight_id INTEGER,
--     passport_number INTEGER,
--     seat TEXT,
--     FOREIGN KEY(flight_id) REFERENCES flights(id)

-- select flight_id from passengers
-- where passport_number in
-- (3355598951,
-- 7771405611,
-- 8714200946)



-- CREATE TABLE atm_transactions (
--     id INTEGER,
--     account_number INTEGER,
--     year INTEGER,
--     month INTEGER,
--     day INTEGER,
--     atm_location TEXT,
--     transaction_type TEXT,
--     amount INTEGER,
--     PRIMARY KEY(id)
-- );
-- CREATE TABLE bank_accounts (
--     account_number INTEGER,
--     person_id INTEGER,
--     creation_year INTEGER,
--     FOREIGN KEY(person_id) REFERENCES people(id)


-- select account_number from bank_accounts
-- where person_id = 864400

-- select transaction_type, amount from atm_transactions
-- where account_number = 94751264
-- and year = 2020
-- and month = 7
