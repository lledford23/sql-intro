CREATE TABLE "Employees"(
  "FullName"   TEXT,
  "Salary"     MONEY,
  "JobPosition"  TEXT,
  "PhoneExtension" TEXT,
  "IsPartTime"  TEXT
);

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Lazy Larry', 15000, 'Manager', '6636', 'No');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Alexis Cook', 300, 'Cook', '7963','Yes');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Ashtyn Crockett', 450, 'Admin', '2020', 'No');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Lila Eve', 50000, 'Puppers', '8996', 'No');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Lindsay Ledford', 250, 'Developer', '0236', 'Yes');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Sassy Sally', 100, 'HR', '1333', 'No');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Janice Weste', 300, 'Cook', '9746', 'Yes');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Daniel Currier', 450, 'Admin', '1366', 'No');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Joe Maddux', 50000, 'Senior', '1596', 'No');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Slone Thacker', 250, 'Analyst', '3535', 'Yes');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Appler Tart', 450, 'Developer', '3566', 'Yes');

SELECT * FROM "Employees";

ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(10);

SELECT "FullName", "PhoneExtension" FROM "Employees" WHERE "IsPartTime" = 'No';

DELETE FROM "Employees" WHERE "FullName" = 'Lazy Larry';

UPDATE "Employees" SET "Salary" = 500 WHERE "JobPosition" = 'Cook';

