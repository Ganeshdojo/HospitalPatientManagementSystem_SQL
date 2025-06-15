-- Insert into patients
INSERT INTO patients (patient_id, name, age, gender, contact_number, address) VALUES
(1, 'Ravi Kumar', 45, 'Male', '9876543210', 'Hyderabad'),
(2, 'Priya Mehta', 30, 'Female', '9123456780', 'Bangalore'),
(3, 'Aman Singh', 62, 'Male', '9012345678', 'Mumbai');

-- Insert into departments
INSERT INTO departments (department_id, name) VALUES
(1, 'Cardiology'),
(2, 'Neurology'),
(3, 'Orthopedics');

-- Insert into doctors
INSERT INTO doctors (doctor_id, name, specialization, department_id) VALUES
(1, 'Dr. Anil Sharma', 'Cardiologist', 1),
(2, 'Dr. Nisha Rao', 'Neurologist', 2),
(3, 'Dr. Karan Patel', 'Orthopedic Surgeon', 3);

-- Insert into appointments
INSERT INTO appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_time, status) VALUES
(1, 1, 1, '2025-06-10', '10:30:00', 'Completed'),
(2, 2, 2, '2025-06-12', '12:00:00', 'Scheduled'),
(3, 3, 3, '2025-06-09', '14:00:00', 'Completed');

-- Insert into treatments
INSERT INTO treatments (treatment_id, appointment_id, description, cost) VALUES
(1, 1, 'Heart ECG and consultation', 1500.00),
(2, 3, 'Knee replacement consultation', 2000.00),
(3, 1, 'Blood pressure check', 300.00);

-- Insert into bills
INSERT INTO bills (bill_id, patient_id, total_amount, payment_status, billing_date) VALUES
(1, 1, 1800.00, 'Paid', '2025-06-11'),
(2, 3, 2000.00, 'Pending', '2025-06-10');
