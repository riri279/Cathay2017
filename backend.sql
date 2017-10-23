CREATE TABLE passengers (id TEXT PRIMARY KEY, name TEXT, mode INTEGER, aisle TEXT, request TEXT);

INSERT INTO passengers VALUES ("A10", "Alice Wong", 1, "A", "N/A");
INSERT INTO passengers VALUES ("A11", "Kylie Li", 2, "A", "N/A");
INSERT INTO passengers VALUES ("A12", "Esther Chan", 1, "A",  "Can I have more water please");
INSERT INTO passengers VALUES ("C7", "Gary Wong", 1, "C", "N/A");
INSERT INTO passengers VALUES ("C8", "Rita Kong", 1, "C", "N/A");
INSERT INTO passengers VALUES ("B13", "Tim Lo", 3, "B", "N/A");
INSERT INTO passengers VALUES ("B14", "Agnes Chung", 2, "B", "N/A");
INSERT INTO passengers VALUES ("B15", "Alexander Loha", 3, "B", "extra blanket"); 
INSERT INTO passengers VALUES ("D4", "Roh Lez", 2, "D", "N/A");
INSERT INTO passengers VALUES ("D5", "Alex Leung", 3, "D", "do not disturb");
INSERT INTO passengers VALUES ("E6", "Rebecca Sha", 2, "E", "N/A");
INSERT INTO passengers VALUES ("E7", "May Lam", 1, "E", "do not disturb");

CREATE TABLE timeline (mode INTEGER PRIMARY KEY, description TEXT, meal1 NUMERIC, meal2 NUMERIC);

INSERT INTO timeline VALUES (1, "sleeper", 0600, 1030);
INSERT INTO timeline VALUES (2, "classic", 0200, 0830);
INSERT INTO timeline VALUES (3, "working", 0600, 1030);

SELECT * from passengers;

SELECT * from timeline;

SELECT passengers.id, passengers.name, passengers.mode, timeline.description, timeline.meal1, timeline.meal2 FROM passengers, timeline WHERE passengers.mode=timeline.mode ORDER BY passengers.mode;