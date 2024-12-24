# Database-Design-for-a-Logistics-Company-Using-SQL-Server
![image](https://github.com/user-attachments/assets/5b87e712-7ed2-41bf-8f0a-b52f516d361f)

## Introduction(Overview of the Project)

Effective data management is critical for any company, especially in industries like logistics, where operational efficiency and customer satisfaction are key drivers of success. A well-designed database system enables businesses to store, retrieve, and analyze vast amounts of data efficiently, ensuring smooth day-to-day operations and informed decision-making.

This project leverages SQL Server to create a scalable and efficient database for a logistics company. The project addresses the data management needs of a logistics company by providing a structured and efficient way to manage data related to customers, products, orders, payments, and shipments. This database system supports essential business operations such as order management, product tracking, customer interactions, and performance analysis. Designed with scalability and reliability in mind, it ensures the company can adapt to growing business demands while maintaining seamless operations.

## Objectives

•	Develop a relational database that effectively captures the core operations of a logistics company.

•	Ensure efficient data storage and retrieval for entities like customers, products, orders, and shipments.

•	Support comprehensive reporting and analytics by implementing relationships between entities.

•	Enhance operational efficiency through structured data organization.

•	Provide a scalable database design that accommodates business growth and evolving requirements.

## ERD and Relationship Among the Tables

### The database consists of the following entities:

1.	Users: Represents customers and sellers involved in transactions.
   
2.	Products: Contains details of products offered.
   
3.	Categories: Groups products into categories.
   
4.	Orders: Tracks customer orders.
   
5.	Order Details: Provides itemized details for each order.
   
6.	Payments: Records payment information.
   
7.	Shipments: Manages shipping and delivery details.
   
8.	Reviews: Stores customer feedback and ratings.

### Relationships:

•	A user can place multiple orders, but each order is linked to one user.

•	A product belongs to one category, but each category can have multiple products.

•	An order can include multiple order details, and each detail references a specific product.

•	A shipment is associated with one order.

•	A review is linked to a specific product and user.

## ER Diagram: 

![image](https://github.com/user-attachments/assets/20707775-fc99-4bd8-aa56-08451e110e94)

## Columns Descriptions

### Users Table:

![image](https://github.com/user-attachments/assets/80008911-72f8-4ae1-a69f-d65cec7b9819)





