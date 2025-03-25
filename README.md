# **Movie Show Database**  

## **Overview**  
This project involves designing a **normalized relational database** for a movie ticket booking system, similar to BookMyShow. The database stores information about **theatres, movies, and shows** while ensuring data integrity and minimizing redundancy through **1NF, 2NF, 3NF, and BCNF** compliance.  

The project also includes **SQL queries** for creating tables, inserting sample data, and retrieving movie show details based on a selected **date and theatre**.  

---

## **Database Schema**  

The database consists of the following tables:  

1. **Theatre** – Stores theatre details.  
2. **Movie** – Stores movie details like title, language, and format.  
3. **Show** – Links movies to theatres with show date, time, and screen type.  

The **Show** table ensures a many-to-many relationship between movies and theatres.  

---

## **Key Features**  

1. **Well-structured and normalized database** (1NF, 2NF, 3NF, BCNF)  
2. **Efficient querying** for movie shows on a selected date and theatre  
3. **Directly executable MySQL scripts** for table creation and data insertion  

---

## **SQL Implementation**  

1. **Table creation scripts** ensure foreign key relationships and referential integrity.  
2. **Sample data insertion** for testing.  
3. **Query to list movie shows** for a given theatre and date.  
