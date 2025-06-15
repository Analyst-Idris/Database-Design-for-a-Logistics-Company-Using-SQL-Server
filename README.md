# Database-Design-for-a-Logistics-Company-Using-SQL-Server
![Image](https://github.com/user-attachments/assets/619b51cc-19a8-4ed8-8b46-8d2e210b9935) ![Image](https://github.com/user-attachments/assets/d4eb84ce-33d0-44f6-bd3d-98006788bcfe)

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

1.	**Users:** Represent customers and sellers involved in transactions.
   
2.	**Products:** Contains details of products offered.
   
3.	**Categories:** Groups products into categories.
   
4.	**Orders:** Tracks customer orders.
   
5.	**Order Details:** Provides itemized details for each order.
   
6.	**Payments:** Records payment information.
   
7.	**Shipments:** Manages shipping and delivery details.
   
8.	**Reviews:** Stores customer feedback and ratings.

### Relationships:

•	A user can place multiple orders, but each order is linked to one user.

•	A product belongs to one category, but each category can have multiple products.

•	An order can include multiple order details, and each detail references a specific product.

•	A shipment is associated with one order.

•	A review is linked to a specific product and user.

## ER Diagram: 

![image](https://github.com/user-attachments/assets/20707775-fc99-4bd8-aa56-08451e110e94)

## Columns Descriptions
---

### Users Table:

| Column Name   | Data Type      | Description                                 |
|---------------|----------------|---------------------------------------------|
| UserID        | INT (PK)       | Unique identifier for each user.            |
| Name          | VARCHAR(100)   | Full name of the user.                      |
| Email         | VARCHAR(100)   | User's email address.                       |
| PasswordHash  | VARCHAR(255)   | Hashed password for authentication.         |
| Address       | TEXT           | User's physical address.                    |
| Role          | VARCHAR(255)   | User's role: buyer or seller.               |

---

### Categories Table:

| Column Name   | Data Type    | Description                                |
|---------------|--------------|--------------------------------------------|
| CategoryID    | INT (PK)     | Unique identifier for each category.       |
| CategoryName  | VARCHAR(100) | Name of the product category.              |

---

### Products Table:

| Column Name   | Data Type      | Description                                       |
|---------------|----------------|---------------------------------------------------|
| ProductID     | INT (PK)       | Unique identifier for each product.              |
| ProductName   | VARCHAR(100)   | Name of the product.                             |
| Description   | TEXT           | Details about the product.                       |
| Price         | DECIMAL(10,2)  | Price of the product.                            |
| StockQuantity | INT            | Available stock quantity.                        |
| SellerID      | INT            | Foreign key referencing the Users table.         |
| CategoryID    | INT            | Foreign key referencing the Categories table.    |

---

### Orders Table:

| Column Name     | Data Type      | Description                                            |
|------------------|----------------|--------------------------------------------------------|
| OrderID          | INT (PK)       | Unique identifier for each order.                     |
| UserID           | INT            | Foreign key referencing the Users table.              |
| OrderDate        | DATETIME       | Date and time of the order.                           |
| TotalAmount      | DECIMAL(10,2)  | Total cost of the order.                              |
| PaymentStatus    | VARCHAR(15)    | Status of the payment: pending, completed.            |
| DeliveryStatus   | VARCHAR(15)    | Status of the delivery: pending, shipped.             |

---

### OrderDetails Table:

| Column Name     | Data Type      | Description                                            |
|------------------|----------------|--------------------------------------------------------|
| OrderDetailID    | INT (PK)       | Unique identifier for each detail record.             |
| OrderID          | INT            | Foreign key referencing the Orders table.             |
| ProductID        | INT            | Foreign key referencing the Products table.           |
| Quantity         | INT            | Quantity of the product in the order.                 |
| Price            | DECIMAL(10,2)  | Price of the product in the order.                    |

---

### Payments Table:

| Column Name     | Data Type      | Description                                            |
|------------------|----------------|--------------------------------------------------------|
| PaymentID        | INT (PK)       | Unique identifier for each payment.                   |
| OrderID          | INT            | Foreign key referencing the Orders table.             |
| PaymentDate      | DATETIME       | Date and time of the payment.                         |
| Amount           | DECIMAL(10,2)  | Payment amount.                                       |
| PaymentMethod    | VARCHAR(50)    | Method of payment.                                    |
| PaymentStatus    | VARCHAR(15)    | Status of the payment: pending, completed.            |

---

### Shipments Table:

| Column Name     | Data Type      | Description                                            |
|------------------|----------------|--------------------------------------------------------|
| ShipmentID       | INT (PK)       | Unique identifier for each shipment.                  |
| OrderID          | INT            | Foreign key referencing the Orders table.             |
| ShipmentDate     | DATETIME       | Date of shipment.                                     |
| DeliveryDate     | DATETIME       | Date of delivery.                                     |
| ShipmentStatus   | VARCHAR(15)    | Status of the shipment.                               |

---

### Reviews Table:

| Column Name   | Data Type  | Description                                        |
|----------------|------------|----------------------------------------------------|
| ReviewID       | INT (PK)   | Unique identifier for each review.                |
| ProductID      | INT        | Foreign key referencing the Products table.       |
| UserID         | INT        | Foreign key referencing the Users table.          |
| Rating         | INT        | Rating given by the user (1-5).                   |
| Comments       | TEXT       | Feedback or comments by the user.                 |



## Conclusion:


This database design project offers a strong basis for overseeing the vital functions of a logistics company. The system effectively manages important data entities like users, products, orders, payments, shipments, and reviews by utilizing SQL Server to create a relational database structure. Accurate tracking, reporting, and decision-making across a range of business functions are made possible by the interconnected tables and well-defined relationships, which also facilitate smooth data storage and retrieval.

The logistics company can use this system to streamline its operations in a scalable and dependable data environment, from order processing and inventory tracking to payment handling and shipment delivery. Data that is structured improves customer service quality, decreases redundancy, and increases operational efficiency. Additionally, the database's analytics capabilities enable the company to measure performance, obtain insights, and promptly adjust to changing market demands.

Lastly, this SQL-based solution illustrates how a well-designed database can support long-term business growth and revolutionize logistical operations.

---

**Are you a business owner or organization finding it difficult to effectively manage and monitor your operations?**

I can assist you in creating a scalable and well-organized database system that is customized to your unique workflow, and I am open to cooperation and teamwork. I can create effective database solutions that enhance data organization, expedite processes, and facilitate better decision-making, regardless of whether you are managing employee data, transactions, inventory, customer records, or any other operational process. 
Together, let's transform your data into an effective tool for expansion and productivity.

![Image](https://github.com/user-attachments/assets/a0645e25-7114-4c59-be4c-a3d7b283cd3b)

For any collaborative work or gigs, reach out to me at:

📧 Email: oladejoidris55@gmail.com
📞 Phone: 07025062857
