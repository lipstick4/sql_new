create table employees1(
	id serial primary key,
	employee_name Varchar(50) not null
);


insert into employees1 (employee_name)
values  ('Смирнов'),
('Иванов'),
('Кузнецов'),
('Соколов'),
('Попов'),
('Лебедев'),
('Козлов'),
('Новиков'),
('Морозов'),
('Петров'),
('Волков'),
('Соловьёв'),
('Васильев'),
('Зайцев'),
('Павлов'),
('Семёнов'),
('Голубев'),
('Виноградов'),
('Богданов'),
('Воробьёв'),
('Фёдоров'),
('Михайлов'),
('Беляев'),
('Тарасов'),
('Белов'),
('Комаров'),
('Орлов'),
('Киселёв'),
('Макаров'),
('Андреев'),
('Ковалёв'),
('Ильин'),
('Гусев'),
('Титов'),
('Кузьмин'),
('Кудрявцев'),
('Баранов'),
('Куликов'),
('Алексеев'),
('Степанов'),
('Яковлев'),
('Сорокин'),
('Сергеев'),
('Романов'),
('Захаров'),
('Борисов'),
('Королёв'),
('Герасимов'),
('Пономарёв'),
('Григорьев'),
('Лазарев'),
('Медведев'),
('Ершов'),
('Никитин'),
('Соболев'),
('Рябов'),
('Поляков'),
('Цветков'),
('Николаев'),
('Крылов'),
('Максимов'),
('Сидоров'),
('Осипов'),
('Белоусов'),
('Федотов'),
('Дорофеев'),
('Данилов'),
('Жуков'),
('Фролов'),
('Журавлёв');
	
select employee_name from employees1;


create table salary2(
	id serial primary key,
	monthly_salary int not null
);

insert into salary2 (monthly_salary)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400);


select monthly_salary from salary2;



create table employee_salary2(
	id serial primary key,
	employee_id int not null,
	salary_id int not null);

insert into employee_salary2 (employee_id, salary_id)
values  (3,7),
		(1,4),
		(63,9),
		(40,13),
		(29,4),
		(19,2),
		(52,10),
		(15,13),
		(26,4),
		(16,1),
		(33,7),
		(6,9),
		(41,13),
		(28,4),
		(12,3),
		(53,11),
		(19,13),
		(27,4),
		(37,1),
		(24,7),
		(34,7),
		(61,5),
		(5,5),
		(49,3),
		(25,6),
		(11,3),
		(54,6),
		(18,16),
		(23,4),
		(17,1),
		(72,7),
		(100,9),
		(80,13),
		(83,4),
		(77,2),
		(76,10),
		(75,13),
		(79,4),
		(88,1),
		(99,7);
		
	select * from employee_salary2;	




create table roles2(
	id serial primary key,
	role_name int unique not null
);

ALTER TABLE roles2 ALTER COLUMN role_name type varchar(30);

insert into roles2 (role_name)
values  ('Junior Python developer'),
        ('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
	    ('Senior Automation QA engineer');

select * from roles2;

create table roles_employee1(
	id serial primary key,
	employee_id Int unique not null,
	role_id Int not null,
		foreign key (employee_id)
		  references employees(id),
		foreign key (role_id)
		  references roles(id)
);

insert into roles_employee1 (employee_id,role_id)
values  (1,2),
		(2,3),
		(3,4),
		(4,5),
		(5,6),
		(6,7),
		(7,8),
		(8,9),
		(9,10),
		(10,11),
		(11,12),
		(12,13),
		(13,14),
		(14,15),
		(15,16),
		(16,17),
		(17,18),
		(18,19),
		(19,20),
		(20,2),
		(21,3),
		(31,4),
		(41,5),
		(51,6),
		(67,7),
		(69,8),
		(44,9),
		(33,10),
		(32,11),
		(34,12),
		(35,13),
		(30,14),
		(54,15),
		(55,16),
		(66,17),
		(47,18),
		(38,19),
		(29,20),
		(61,10),
		(62,4);
		
	select * from roles_employee1;

