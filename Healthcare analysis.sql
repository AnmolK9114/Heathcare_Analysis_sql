use etl1;

-- names of all patients in the database.
select name from healthcare;

-- unique medical conditions present in the dataset.
select distinct medical_condition from healthcare;

-- total number of doctors in the healthcare system.
select count(distinct doctor) from healthcare;

-- details of all female patients.
select * from healthcare where gender='Female';

-- average age of patients in the database.
select avg(age) from healthcare;

-- patients who have more than one medical condition.
select name,count(medical_condition) from healthcare group by name having count(medical_condition)>1;

-- names of all doctors. 
select doctor from healthcare;

-- most common medical condition among patients.
select medical_condition,count(medical_condition) from healthcare group by medical_condition
 having count(medical_condition)>1 order by count(medical_condition) desc limit 1;
 
 -- patients who are older than 60 years and have diabetes.
 select name,age,medical_condition from healthcare where age>60 and medical_condition='diabetes' order by age;
 
 -- total revenue generated by the healthcare system.
 select sum(billing_amount) from healthcare;
 
 -- doctor with the oldest patient.
 select doctor,name,age from healthcare order by age desc limit 1;
 
 -- average duration of medical visits.
 select avg(duration) from healthcare;
 
  -- names of patients whose name starts with A. 
 select name from healthcare where name like 'a%';
 
 -- number of male and female patients that are there in dataset.
 select gender,count(gender) from healthcare group by gender;
 
 -- number of patients that are normal.
 select test_results,count(test_results) from healthcare group by test_results having test_results='normal';
 
 -- number of patients that are abnormal or Inconclusive.
 select test_results,count(test_results) from healthcare group by test_results 
 having test_results='abnormal' or test_results='inconclusive';
 
 -- number of patients of blood group AB+ that are there of age above 52.  
 select count(name) from healthcare where blood_type='ab+' and age>52;
 
 -- number of patients those have paid the bill above 24890. 
 select count(name) from healthcare where billing_amount>24890;
 
 -- names of patients having Asthma. 
 select name from healthcare where medical_condition='Asthma';
 
 -- number of patients having cancer. 
 select count(name) from healthcare where medical_condition='cancer';
 
 -- names and blood groups of patients admitted to room no. 292.
 select name,blood_type from healthcare where room_number=292;
 
 -- number of males having Arthritis. 
 select count(gender) from healthcare where gender='Male' and medical_condition='arthritis';
 
 -- number of patients that were admitted to Harris and Sons hospital.
 select count(name) from healthcare where hospital='harris and sons';
 
 -- names of patients whose Insurance Provider are Cigna.
 select name from healthcare where insurance_provider='cigna';
 
 -- Medical Condition having patients whose ages is greater than average age.
 select medical_condition,age from healthcare group by medical_condition having age>(select avg(age) from healthcare);
 