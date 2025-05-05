Hotel (
    Hotel_Id INT PRIMARY KEY,
    Hotel_name VARCHAR,
    Employee_Id INT FOREIGN KEY referencing Employee
);

Type (
    Type_Id INT PRIMARY KEY,
    Type_Name VARCHAR
);

Category (
    Category_Id INT PRIMARY KEY,
    Category_Name VARCHAR,
    Price DECIMAL,
    Beds_numbers INT
);

Room (
    Room_Id INT PRIMARY KEY,
    Floor INT,
    Type_Id INT FOREIGN KEY referencing Type,
    Hotel_Id INT FOREIGN KEY referencing Hotel,
    Category_Id INT FOREIGN KEY referencing Category
);

Employee (
    Employee_Id INT PRIMARY KEY,
    Employee_Name VARCHAR,
    Employee_Speciality VARCHAR
);

Works (
    Employee_Id INT FOREIGN KEY referencing Employee,
    Hotel_Id INT FOREIGN KEY referencing Hotel,
    PRIMARY KEY (Employee_Id, Hotel_Id)
);