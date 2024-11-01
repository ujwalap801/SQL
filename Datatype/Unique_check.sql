
-- Unique, check
use compan;

CREATE TABLE contact(
mobile VARCHAR(15) UNIQUE 
);

CREATE TABLE contact1(
mobile VARCHAR(15) UNIQUE check (length(mobile) >=10)
);


CREATE TABLE contact2(
mobile VARCHAR(15) UNIQUE ,
constraint mobo_less_than_10digits check (length(mobile) >=10)
);


INSERT INTO contact values (1234);

INSERT INTO contact1 values(11234566777);

INSERT INTO contact2 values (1234);
DESC contact;


