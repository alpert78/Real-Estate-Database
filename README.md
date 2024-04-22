---

# Employee and Property Management System

## Overview
This project is a simple Employee and Property Management System designed to manage employees, customers, owners, properties, consultations, offers, and listings. It provides a relational database schema along with MySQL scripts to create and populate the database tables with dummy data.

## Features
- **Employees:** Manage employee information including their IDs, names, emails, and office addresses.
- **Customers:** Store customer details such as IDs, names, and emails.
- **Owners:** Keep track of property owners' information including their IDs, names, emails, and property addresses.
- **Properties:** Record details of properties including addresses, states, cities, types (office or residence), and the number of employees associated (if applicable).
- **Consultations:** Track consultations between employees and customers, linking them by employee and customer IDs.
- **Offers:** Manage offers made by customers for properties, including offer amounts, customer and owner IDs, listing IDs, and offer statuses.
- **Listings:** Store listings of properties including addresses, prices, and listing IDs.

## Installation
1. Clone the repository to your local machine.
2. Execute the provided MySQL scripts to create the database schema and populate tables with sample data.

## Usage
- Use the provided SQL scripts to interact with the database, such as querying employee information, managing property listings, and tracking offers.
