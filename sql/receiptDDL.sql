DROP TABLE people cascade constraint;
DROP TABLE receipt cascade constraint;

CREATE TABLE people (
       id   				       	VARCHAR2(20) PRIMARY KEY,
       password               	VARCHAR2(20) NOT NULL,
       name         				VARCHAR2(20) NOT NULL,
       gender					VARCHAR2(20) NOT NULL,
       age                		VARCHAR2(20) NOT NULL
);

CREATE SEQUENCE receipt_id_seq;

CREATE TABLE receipt (
       receipt_id        		NUMBER(5) PRIMARY KEY,
       person_id				VARCHAR2(20) NOT NULL,
       food_exp					VARCHAR2(20) NOT NULL,
       trans_exp				VARCHAR2(20) NOT NULL,
       shop_exp				VARCHAR2(20) NOT NULL,
       leisure_exp				VARCHAR2(20) NOT NULL,
       tele_exp					VARCHAR2(20) NOT NULL
);

ALTER TABLE receipt  ADD FOREIGN KEY (person_id) REFERENCES people  (id);

SELECT * from people;
SELECT * from receipt;