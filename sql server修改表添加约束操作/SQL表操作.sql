alter table students drop column salary;
alter table studentS add EMAIL VARCHAR(100);
ALTER TABLE STUDENTS ALTER COLUMN ID INT;
ALTER TABLE STUDENTS ADD GID INT;
CREATE TABLE GRADES(
   ID INT PRIMARY KEY ,
   GNAME VARCHAR(20)
   
);

INSERT INTO GRADES(ID,GNAME) VALUES(10,'JAVA��ҵ��');
INSERT INTO GRADES(ID,GNAME) VALUES(20,'c#��ҵ��');
INSERT INTO GRADES(ID,GNAME) VALUES(30,'vb.net��ҵ��');
INSERT INTO GRADES(ID,GNAME) VALUES(40,'python��ҵ��');

select * from GRADES;

SELECT * FROM STUDENTS;
--Ϊstudents��id���ӷǿ�Լ��
alter table students alter column id int not null;
--Ϊstudents����������Լ��
alter table students add constraint PK_STUDENTS_ID primary key(id);
--Ϊstudents��gender���ӷǿ�Լ��
alter table students alter column gender varchar(6) not null;
--Ϊstudents�����Ӽ��Լ�����Ա�ֻ������(MALE)��Ů(FEMALE)
alter table students add constraint CK_STUDENTS_GENDER check(gender='��' or gender='Ů' or gender='MALE' OR GENDER='FEMALE');
--Ϊstudents��gender�ֶ�����Ĭ��ֵԼ��
alter table students add constraint DF_STUDENTS_GENDER default('��') for gender;
--Ϊstudents��name�ֶ�����ΨһԼ��
alter table students add constraint UQ_STUDENTS_NAME unique(name);
--Ϊstudents��gid���ӷǿ�Լ��

alter table students alter column gid int not null;

--Ϊstudents���������Լ�������Ϊgrades���id�ֶ�
alter table students add constraint FK_STUDENTS_GRADES foreign key(gid) references grades(id);