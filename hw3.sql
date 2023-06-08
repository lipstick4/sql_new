Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

 select employee_name, monthly_salary from 
  employees1 inner join employee_salary2 
  on  employee_salary2.employee_id = employees1.id
  inner join salary2 
  on  salary2.id = employee_salary2.salary_id;  

 
Вывести всех работников у которых ЗП меньше 2000.

 select employee_name, monthly_salary from 
  employees1 inner join employee_salary2
  on  employee_salary2.employee_id = employees1.id
  inner join salary2
  on  salary2.id = employee_salary2.salary_id
 where monthly_salary < 2000 ;  
	

 Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 
 select monthly_salary from 
  employees1 inner join employee_salary2
  on  employee_salary2.employee_id = employees1.id
  inner join salary2
  on  salary2.id = employee_salary2.salary_id;


Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select monthly_salary from 
  employees1 inner join employee_salary2
  on  employee_salary2.employee_id = employees1.id
  inner join salary2 
  on  salary2.id = employee_salary2.salary_id
 where monthly_salary < 2000 ;

Найти всех работников кому не начислена ЗП.

select employee_name from 
  employees1 left join employee_salary2
  on  employee_salary2.employee_id = employees1.id
  where employee_salary2.id is Null;
 
 
 Вывести всех работников с названиями их должности.
 
 select employee_name, role_name from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join roles2
  on  roles2.id = roles_employee1.role_id;
 
 Вывести имена и должность только Java разработчиков.
 
 select employee_name, role_name from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join roles2
  on  roles2.id = roles_employee1.role_id
 where roles2.id = 4 or roles2.id = 5 or roles2.id = 6;


Вывести имена и должность только Python разработчиков.

select employee_name, role_name from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join roles2 
  on  roles2.id = roles_employee1.role_id
 where roles2.id = 4 or roles2.id = 5 or roles2.id = 6;

Вывести имена и должность всех QA инженеров.

select employee_name, role_name from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join roles2
  on  roles2.id = roles_employee1.role_id
 where roles2.id = 10 or roles2.id = 11 or roles2.id = 12 or roles2.id = 18 or roles2.id = 19 or roles2.id = 20;

Вывести имена и должность ручных QA инженеров.

select employee_name, role_name from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join roles2
  on  roles2.id = roles_employee1.role_id
 where roles2.id = 10 or roles2.id = 11 or roles2.id = 12;

Вывести имена и должность автоматизаторов QA

select employee_name, role_name from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join roles2
  on  roles2.id = roles_employee1.role_id
 where roles2.id = 18 or roles2.id = 19 or roles2.id = 20;
 
Вывести имена и зарплаты Junior специалистов

select employee_name, monthly_salary from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join employee_salary2
  on  employee_salary2.employee_id = roles_employee1.employee_id
  inner join salary2
  on salary2.id = employee_salary2.salary_id
  where role_id= 1 or role_id= 4 or role_id= 7 or role_id= 10 or role_id= 18;
 
 
 Вывести имена и зарплаты Middle специалистов
 
 select employee_name, monthly_salary from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join employee_salary2
  on  employee_salary2.employee_id = roles_employee1.employee_id
  inner join salary2
  on salary2.id = employee_salary2.salary_id
  where role_id= 2 or role_id= 5 or role_id= 8 or role_id= 11 or role_id= 19;
 
 
 Вывести имена и зарплаты Senior специалистов

 select employee_name, monthly_salary  from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join employee_salary2
  on  employee_salary2.employee_id = roles_employee1.employee_id
  inner join salary2
  on salary2.id = employee_salary2.salary_id
  where role_id= 3 or role_id= 6 or role_id= 9 or role_id= 12 or role_id= 20;
  
 Вывести зарплаты Java разработчиков
 
 select employee_name, monthly_salary  from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join employee_salary2
  on  employee_salary2.employee_id = roles_employee1.employee_id
  inner join salary2
  on salary2.id = employee_salary2.salary_id
  where role_id= 4 or role_id= 6 or role_id= 5;
 
 Вывести зарплаты Python разработчиков
 
  select employee_name, monthly_salary  from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join employee_salary2
  on  employee_salary2.employee_id = roles_employee1.employee_id
  inner join salary2
  on salary2.id = employee_salary2.salary_id
  where role_id= 1 or role_id= 2 or role_id= 3;
 
 
 Вывести имена и зарплаты Junior Python разработчиков
 
 select employee_name, monthly_salary  from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join employee_salary2
  on  employee_salary2.employee_id = roles_employee1.employee_id
  inner join salary2
  on salary2.id = employee_salary2.salary_id
  where role_id= 1;
 
 
 Вывести имена и зарплаты Middle JS разработчиков

 select employee_name, monthly_salary  from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join employee_salary2
  on  employee_salary2.employee_id = roles_employee1.employee_id
  inner join salary2
  on salary2.id = employee_salary2.salary_id
  where role_id= 7;
  
 
 Вывести имена и зарплаты Senior Java разработчиков

 select employee_name, monthly_salary  from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join employee_salary2
  on  employee_salary2.employee_id = roles_employee1.employee_id
  inner join salary2
  on salary2.id = employee_salary2.salary_id
  where role_id= 6;
  
 Вывести зарплаты Junior QA инженеров

  select employee_name, monthly_salary  from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join employee_salary2
  on  employee_salary2.employee_id = roles_employee1.employee_id
  inner join salary2
  on salary2.id = employee_salary2.salary_id
  where role_id= 10 or role_id= 18;
 
 
 Вывести среднюю зарплату всех Junior специалистов

 select sum(monthly_salary)/count(monthly_salary) as average_salary_junior from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join employee_salary2
  on  employee_salary2.employee_id = roles_employee1.employee_id
  inner join salary2
  on salary2.id = employee_salary2.salary_id
  where role_id= 1 or role_id= 4 or role_id= 7 or role_id= 10 or role_id= 18;
 
 Вывести сумму зарплат JS разработчиков

   select sum(monthly_salary) as sum_js from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join employee_salary2
  on  employee_salary2.employee_id = roles_employee1.employee_id
  inner join salary2
  on salary2.id = employee_salary2.salary_id
  where role_id= 7 or role_id= 8 or role_id= 9;
  
 Вывести минимальную ЗП QA инженеров
 
 select min(monthly_salary)  as min_qa from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join employee_salary2
  on  employee_salary2.employee_id = roles_employee1.employee_id
  inner join salary2
  on salary2.id = employee_salary2.salary_id
  where role_id= 10 or role_id= 11 or role_id= 12 or role_id= 18 or role_id= 19 or role_id= 20;
  
 
 Вывести максимальную ЗП QA инженеров
 
 select max(monthly_salary)  as max_qa from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join employee_salary2
  on  employee_salary2.employee_id = roles_employee1.employee_id
  inner join salary2
  on salary2.id = employee_salary2.salary_id
  where role_id= 10 or role_id= 11 or role_id= 12 or role_id= 18 or role_id= 19 or role_id= 20;
 
 Вывести количество QA инженеров
 
 select count(role_id)  as max_qa from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join employee_salary2
  on  employee_salary2.employee_id = roles_employee1.employee_id
  inner join salary2
  on salary2.id = employee_salary2.salary_id
  where role_id= 10 or role_id= 11 or role_id= 12 or role_id= 18 or role_id= 19 or role_id= 20;
 
 Вывести количество Middle специалистов.
 
 select count(role_id)  from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join employee_salary2
  on  employee_salary2.employee_id = roles_employee1.employee_id
  inner join salary2
  on salary2.id = employee_salary2.salary_id
  where role_id= 2 or role_id= 5 or role_id= 8 or role_id= 11 or role_id= 19;
 
 Вывести количество разработчиков
 
 select count(role_id) from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join employee_salary2
  on  employee_salary2.employee_id = roles_employee1.employee_id
  inner join salary2
  on salary2.id = employee_salary2.salary_id
  where role_id >= 1 and role_id <= 9;
 
 
 Вывести фонд (сумму) зарплаты разработчиков.
 
  select sum(monthly_salary) from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join employee_salary2
  on  employee_salary2.employee_id = roles_employee1.employee_id
  inner join salary2
  on salary2.id = employee_salary2.salary_id
  where role_id >= 1 and role_id <= 9;
 
 
 Вывести имена, должности и ЗП всех специалистов по возрастанию
 
 
  select employee_name, role_name, monthly_salary from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join roles2
  on roles2.id = roles_employee1.role_id
  inner join employee_salary2
  on  employee_salary2.employee_id = roles_employee1.employee_id
  inner join salary2
  on salary2.id = employee_salary2.salary_id
 order by monthly_salary;
 

 Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

 select employee_name, role_name, monthly_salary from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join roles2
  on roles2.id = roles_employee1.role_id
  inner join employee_salary2
  on  employee_salary2.employee_id = roles_employee1.employee_id
  inner join salary2
  on salary2.id = employee_salary2.salary_id
  where monthly_salary>=1700 and monthly_salary<=2300
 order by monthly_salary;
 
Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select employee_name, role_name, monthly_salary from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join roles2
  on roles2.id = roles_employee1.role_id
  inner join employee_salary2
  on  employee_salary2.employee_id = roles_employee1.employee_id
  inner join salary2
  on salary2.id = employee_salary2.salary_id
  where monthly_salary<2300
 order by monthly_salary;


Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select employee_name, role_name, monthly_salary from 
  employees1 inner join roles_employee1
  on  roles_employee1.employee_id = employees1.id
  inner join roles2
  on roles2.id = roles_employee1.role_id
  inner join employee_salary2
  on  employee_salary2.employee_id = roles_employee1.employee_id
  inner join salary2
  on salary2.id = employee_salary2.salary_id
  where monthly_salary=1100 or monthly_salary=1500 or monthly_salary=2000
 order by monthly_salary;




