﻿CREATE TABLE [dbo].course
(
	id INT NOT NULL PRIMARY KEY IDENTITY,
	subject NCHAR(10) NULL,
	level INT NULL,
	title NCHAR(30) NULL,
	description NCHAR(100) NULL,
	dept NCHAR(100) NULL,
	credit INT NULL,
	CONSTRAINT fk_course_department FOREIGN KEY (dept) REFERENCES department (dept_name),
)

GO

CREATE INDEX [IX_course_subject] ON [dbo].[course] ([subject])
