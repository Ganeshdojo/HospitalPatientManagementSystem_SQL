-- Patients over a certain age
SELECT name, contact_number FROM patients WHERE age > 50;

-- Doctors in Cardiology department
SELECT name FROM doctors WHERE specialization = 'Cardiologist';

-- Doctor-wise appointment count
SELECT d.name, COUNT(a.doctor_id) AS appointment_count
FROM doctors d
JOIN appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id;

-- Total bill for a patient
SELECT p.name, SUM(b.total_amount) AS total_amount
FROM patients p
JOIN bills b ON p.patient_id = b.patient_id
WHERE p.name = 'Ravi Kumar'
GROUP BY b.patient_id;

-- Patients with pending bills
SELECT p.name, b.payment_status
FROM patients p
JOIN bills b ON p.patient_id = b.patient_id
WHERE b.payment_status = 'Pending';


-- Top 2 patients by billing amount
SELECT p.name, SUM(b.total_amount) AS total_amount
FROM patients p
JOIN bills b ON p.patient_id = b.patient_id
GROUP BY b.patient_id
ORDER BY total_amount DESC
LIMIT 2;

-- Doctors with no appointments
SELECT d.name
FROM doctors d
LEFT JOIN appointments a ON d.doctor_id = a.doctor_id
WHERE a.doctor_id IS NULL;
