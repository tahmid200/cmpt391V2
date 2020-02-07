﻿CREATE TABLE [dbo].takes
(
	id INT NOT NULL PRIMARY KEY,
	student_id INT NULL,
	section_id INT NULL,
	grade INT NULL,
	CONSTRAINT fk_takes_student FOREIGN KEY (student_id) REFERENCES student (id),
	CONSTRAINT fk_takes_section FOREIGN KEY (section_id) REFERENCES section (id),
)