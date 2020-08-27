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

 CREATE TABLE "Departments" (
 "Id" SERIAL PRIMARY KEY,
 "DepartmentName" TEXT,
 "Bulding" TEXT
 );

ALTER TABLE "Employees" ADD COLUMN "DepartmentID" INT NULL REFERENCES "Department" ("Id");

CREATE TABLE "Products"(
"Id" SERIAL PRIMARY KEY,
"Price" FLOAT,
"Name" TEXT,
"Description" TEXT,
"QuantityInStock" INT
);

CREATE TABLE "Orders"(
  "Id" SERIAL PRIMARY KEY,
  "OrderNumber" TEXT,
  "DatePlaced" TIMESTAMP,
  "Email" TEXT
);

CREATE TABLE "ProductOrders"(
  "OrderId" INT NULL REFERENCES "Orders" ("Id"),
  "ProductId" INT NULL REFERENCES "Products" ("Id"),
  "OrderQuantity" INT
);

INSERT INTO "Departments" ("DepartmentName", "Building") VALUES ('Development','Main');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "DepartmentId")
VALUES ('Tim Smith', 40000, 'Programmer', '123', 'No', '1');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "DepartmentId")
VALUES ('Barbara Tamsey', 80000, 'Manager', '234', 'No', '1');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "DepartmentId")
VALUES ('Tom Jones', 32000, 'Admin', '456', 'Yes', '2');

INSERT INTO "Products" ("Price", "Name", "Description", "QuantityInStock")
VALUES ('12.45', 'Widget', 'The Original Widget', '100');

INSERT INTO "Products" ("Price", "Name", "Description", "QuantityInStock")
VALUES ('99.99', 'Flowbee', 'Perfect for Haircuts', '3');

INSERT INTO "Orders" ("OrderNumber", "DatePlaced", "Email")
VALUES ('X529', '01-01-2020 at 4:55PM', 'person@example.com');

INSERT INTO "ProductOrders" ("OrderId", "ProductId", "OrderQuantity")
VALUES ('1', '2', '2');

INSERT INTO "ProductOrders" ("OrderId", "ProductId", "OrderQuantity")
VALUES ('1','1','3');

SELECT "FullName" FROM "Employees" WHERE "DepartmentId" = '1';

SELECT "PhoneExtension" FROM "Employees" WHERE "DepartmentId" = '1';

SELECT "OrderId" FROM "ProductOrders" WHERE "ProductId" = '2';

DELETE FROM "ProductOrders" WHERE "ProductId" = '2';



