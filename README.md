 E-Learning Platform (DBMS Project)

 📌 Project Overview
This project represents an E-Learning Platform database designed using an ER Diagram.  
The system manages Students, Faculty, Courses, Enrollments, Assignments, and Submissions.

The ER Diagram includes entities, attributes, relationships, primary keys, and cardinality.

---

 🗂️ Entities and Attributes (As per ER Diagram)

 1️⃣ STUDENT
- Student_id (Primary Key)
- Phone.No
- Registration_date
- Student_Email
- NAME (Composite Attribute)
  - First_name
  - Middle_name
  - Last_Name

---

 2️⃣ ENROLLMENT
- En_id (Primary Key)
- student_id (Foreign Key)
- Course_id (Foreign Key)
- Enrollment_date

---

 3️⃣ FACULTY
- Faculty_id (Primary Key)
- Faculty_Name
- Faculty_Email
- Faculty_Qualification
- Faculty_exp

---

 4️⃣ ASSIGNMENT
- Assignment_id (Primary Key)
- Title_Des
- Due_Date
- Course_id (Foreign Key)

---

5️⃣ SUBMISSION
- Submission_id (Primary Key)
- Assignment_id (Foreign Key)
- Student_id (Foreign Key)
- Submission_date
- Marks

---

🔗 Relationships (As Shown in ER Diagram)

1. STUDENT **ENROLLS** in ENROLLMENT  
   - Cardinality: M : M

2. ENROLLMENT related to COURSE  
   - Cardinality: M : M

3. COURSE connected with FACULTY  

4. COURSE **HAS** ASSIGNMENT  
   - Cardinality: 1 : M

5. ENROLLMENT **SUBMITS** SUBMISSION  
   - Cardinality: 1 : M

---

 📊 Cardinality Summary

- One Course → Many Assignments  
- One Enrollment → Many Submissions  
- Many Students → Many Courses (via Enrollment)

---

 🛠️ Tools Used
- Draw.io (ER Diagram)
- MySQL
- VS Code
- GitHub

---

 📁 Project Files
```
E-Learning-Platform/
│── ER_Diagram.drawio
│── schema.sql
│── README.md
```

---

 👨‍💻 Group Members
Dibyesh Biswal
Ayush Rathore
Shubham Kumar Singh
Tanmay Goyal



---

## 📌 Conclusion
This ER model demonstrates database design for an E-Learning Platform using entities, composite attributes, relationships, primary keys, foreign keys, and proper cardinality.
