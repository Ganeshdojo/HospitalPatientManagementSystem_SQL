# Hospital Patient Management System

A simple relational database design for managing patients, doctors, departments, appointments, treatments, and billing in a hospital system. This project includes SQL scripts for creating tables, inserting sample data, and performing useful queries.

## Table of Contents

- [Project Structure](#project-structure)
- [Schema Overview](#schema-overview)
- [How to Use](#how-to-use)
- [Files and Scripts](#files-and-scripts)
- [Sample Queries](#sample-queries)

## Project Structure

```

HospitalPatientManagementSystem/
├── README.md
├── sql/
│   ├── create\_tables.sql
│   ├── insert\_data.sql
│   ├── queries.sql

```

## Schema Overview

- `patients`: Stores basic patient info like name, age, gender, contact.
- `departments`: Lists all medical departments in the hospital.
- `doctors`: Doctors with their specialization and linked department.
- `appointments`: Records appointments between patients and doctors.
- `treatments`: Stores treatment details for each appointment.
- `bills`: Contains billing info including total amount and status.

## How to Use

1. Clone or download the project.
2. Open a MySQL client or GUI like MySQL Workbench.
3. Execute `1_create_tables.sql` to create the schema.
4. Execute `2_insert_data.sql` to add sample data.
5. Run queries from `3_queries.sql` as needed.

## Files and Scripts

### 1. `create_tables.sql`

Creates all six tables and sets up relationships using foreign keys:
- `patients`
- `departments`
- `doctors`
- `appointments`
- `treatments`
- `bills`

### 2. `insert_data.sql`

Inserts sample records into all tables to simulate a real-world hospital scenario.

### 3. `queries_easy.sql`

Contains basic select and join queries, such as:
- List of patients over age 50
- Doctors in Cardiology
- Appointment count per doctor
- Bills for a patient
- Patients with pending bills
- Top 2 patients by total billed amount
- Doctors who have never had an appointment

## Sample Output Expectations

- Properly grouped and aggregated outputs
- Clean formatting for JOIN-based queries
- Useful insights like pending bills or idle doctors

---

This project is ideal for:
- Practicing SQL fundamentals and joins
- Understanding relational schema design
- Using real-world healthcare-based data examples

```
