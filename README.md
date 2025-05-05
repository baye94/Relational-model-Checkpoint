# Relational-model-Checkpoint

## Entity-Relationship Model to Relational Diagram

This document describes the relational schema derived from the given Entity-Relationship (ER) model.

### Entities and Their Corresponding Tables:

* **Hotel:**

    `Hotel (Hotel_Id (Primary Key), Hotel_name)`
* **Type:**

    `Type (Type_Id (Primary Key), Type_Name)`
* **Room:**

    `Room (Room_Id (Primary Key), Floor, Type_Id (Foreign Key referencing Type))`
* **Category:**

    `Category (Category_Id (Primary Key), Category_Name, Price, Beds_numbers)`
* **Employee:**

    `Employee (Employee_Id (Primary Key), Employee_Name, Employee_Speciality)`

### Relationships and Their Implementation:

* **Hotel "is" Type (1:N):** This relationship is incorporated into the `Room` table using the `Type_Id` as a foreign key.  Each room belongs to one type, and one type can have multiple rooms across different hotels.
* **Hotel "is composed" of Room (1:N):** This relationship is represented by the `Room` table having a `Hotel_Id` as a foreign key. Each room belongs to one hotel, and one hotel can have multiple rooms.

    `Room (Room_Id (Primary Key), Floor, Type_Id (Foreign Key referencing Type), Hotel_Id (Foreign Key referencing Hotel))`
* **Room "is of" Category (1:1):** This relationship indicates that each room belongs to exactly one category. We include the `Category_Id` as a foreign key in the `Room` table.

    `Room (Room_Id (Primary Key), Floor, Type_Id (Foreign Key referencing Type), Hotel_Id (Foreign Key referencing Hotel), Category_Id (Foreign Key referencing Category))`
* **Employee "Works" in Hotel (N:N):** This is a many-to-many relationship, which requires an intermediary table.

    `Works (Employee_Id (Foreign Key referencing Employee), Hotel_Id (Foreign Key referencing Hotel), Primary Key (Employee_Id, Hotel_Id))`
* **Employee "leads" Hotel (1:1):** This relationship indicates that each hotel has one leading employee, and each employee can lead at most one hotel. We include `Employee_Id` as a foreign key in the `Hotel` table.

    `Hotel (Hotel_Id (Primary Key), Hotel_name, Employee_Id (Foreign Key referencing Employee))`