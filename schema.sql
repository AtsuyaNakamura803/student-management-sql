-- 受講生テーブル
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    furigana VARCHAR(100),
    nickname VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL,
    region VARCHAR(100),
    age INT,
    gender VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 受講生コーステーブル
CREATE TABLE students_courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    course_name VARCHAR(100) NOT NULL,
    start_date TIMESTAMP,
    expected_end_date TIMESTAMP,
    enrolled_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE
);
