-- Create patients table
CREATE TABLE patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    gender ENUM('Male', 'Female', 'Gay', 'Other'),
    contact_number VARCHAR(15),
    address VARCHAR(255)
);

-- Create departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) UNIQUE
);

-- Create doctors table
CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    specialization VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Create appointments table
CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    status ENUM('Scheduled', 'Completed', 'Cancelled'),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

-- Create treatments table
CREATE TABLE treatments (
    treatment_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_id INT,
    description TEXT,
    cost DECIMAL(10,2),
    FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id)
);

-- Create bills table
CREATE TABLE bills (
    bill_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    total_amount DECIMAL(10,2),
    payment_status ENUM('Paid', 'Pending'),
    billing_date DATE,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);
