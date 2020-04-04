alter table students drop column salary;
alter table studentS add EMAIL VARCHAR(100);
ALTER TABLE STUDENTS ALTER COLUMN ID INT;
ALTER TABLE STUDENTS ADD GID INT;
CREATE TABLE GRADES(
   ID INT PRIMARY KEY ,
   GNAME VARCHAR(20)
   
);

INSERT INTO GRADES(ID,GNAME) VALUES(10,'JAVA就业班');
INSERT INTO GRADES(ID,GNAME) VALUES(20,'c#就业班');
INSERT INTO GRADES(ID,GNAME) VALUES(30,'vb.net就业班');
INSERT INTO GRADES(ID,GNAME) VALUES(40,'python就业班');

select * from GRADES;

SELECT * FROM STUDENTS;
--为students表id增加非空约束
alter table students alter column id int not null;
--为students表增加主键约束
alter table students add constraint PK_STUDENTS_ID primary key(id);
--为students表gender增加非空约束
alter table students alter column gender varchar(6) not null;
--为students表增加检查约束，性别只能是男(MALE)或女(FEMALE)
alter table students add constraint CK_STUDENTS_GENDER check(gender='男' or gender='女' or gender='MALE' OR GENDER='FEMALE');
--为students表gender字段增加默认值约束
alter table students add constraint DF_STUDENTS_GENDER default('男') for gender;
--为students表name字段增加唯一约束
alter table students add constraint UQ_STUDENTS_NAME unique(name);
--为students表gid增加非空约束

alter table students alter column gid int not null;

--为students表增加外键约束，外键为grades表的id字段
alter table students add constraint FK_STUDENTS_GRADES foreign key(gid) references grades(id);