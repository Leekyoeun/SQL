--1. employees table�� ��� �ڷḦ ����϶�.
SELECT * FROM EMPLOYEES;

--2. employees table�� �÷����� ��� ����϶�.
DESC employees;

--3. employees���� �����ȣ, �̸�, �޿�, �������� ����϶�.
SELECT employee_id, last_name, first_name, salary, job_id FROM employees;

--4. ��� �������� �޿��� $300���� ��Ű�� ���ؼ� ���� �����ڸ� ����ϰ� ����� SALARY+300�� ����϶�.
SELECT last_name, first_name, salary, salary*300 FROM employees;

--5. emp ���̺��� �����ȣ, �̸�, �޿�, ���ʽ�, ���ʽ� �ݾ��� ����Ͽ��� ( ����� ���ʽ��� ���� + (���� * Ŀ�̼�))
SELECT employee_id, last_name, salary, commission_pct * salary, salary+(salary+commission_pct) 
FROM employees;

--6. EMPLOYEES ���̺��� LSAT_NAME�� �̸����� SALARY�� �޿��� ����Ͽ���.
SELECT last_name "�̸�" , salary "�޿�" FROM employees;

--7. EMPLOYEES ���̺��� LASY_NAME�� Name���� SALARY*12�� Annual Salary(����)�� ����Ͽ���.
SELECT last_name "Name", salary*12 "Annual Salary(����)" FROM employees;

--8. EMPLOYEES ���̺��� �̸��� ������ �����Ͽ� ����Ͽ���.
SELECT last_name || first_name ||' '|| job_id "Employees" FROM employees;

--9. EMPLOYEES ���̺��� �̸��� ������ "KING is a PRESIDENT" �������� ����Ͽ���.
SELECT last_name || first_name || job_id "KING is a PRESIDENT" FROM employees;

--10. EMPLOYEES ���̺��� �̸��� ������ "KING: 1 Year salary = 60000" �������� ����Ͽ���.
SELECT last_name || first_name|| salary || 'KING: 1 Year salary *' || salary*12 
FROM employees;

--11. EMPLOYESS ���̺��� JOB�� ��� ����϶�.
SELECT job_id FROM employees;

--12. EMPLOYEES ���̺��� �޿��� 3000�̻��� ����� ������ �����ȣ, �̸�, ������, �޿��� ����϶�. 
SELECT employee_id, last_name || first_name, job_id, salary 
FROM employees 
WHERE salary>=3000;

--13. EMPLOYEES ���̺��� ��� ������ ST_MAN �� ����� ������ �����ȣ, ����, ������, �޿�, �μ���ȣ�� ����϶�.
SELECT employee_id, last_name || first_name, job_id, salary, department_id 
FROM employees 
WHERE job_id='ST_MAN';

--14. EMPLOYEES ���̺��� �Ի����ڰ� 2006�� 1�� 1�� ���Ŀ� �Ի��� ����� ������ �����ȣ, ����, ������, �޿�, �Ի�����, �μ���ȣ�� ����϶�.
SELECT employee_id, last_name || first_name, job_id, salary, hire_date, department_id 
FROM employees 
WHERE hire_date > to_date('060101');

--15. EMPLOYEES ���̺��� �޿��� 3000���� 5000������ ������ ����, ������, �޿�, �μ���ȣ�� ����϶�.
SELECT last_name || first_name,salary, department_id 
FROM employees 
WHERE salary between 3000 and 5000;

--16. EMPLOYEES ���̺��� �����ȣ�� 145, 152, 203 �� ����� ������ �����ȣ, ����, ������, �޿�, �Ի����ڸ� ����϶�.
SELECT employee_id, last_name || first_name, job_id, salary, hire_date 
FROM employees 
WHERE employee_id in('145','152','203');

--17. EMPLOYEES ���̺��� �Ի����ڰ� 05�⵵�� �Ի��� ����� ������ �����ȣ, ����, ������, �޿�, �Ի�����, �μ���ȣ�� ����϶�.
SELECT employee_id, last_name || first_name, job_id, salary, hire_date, department_id 
FROM employees 
WHERE hire_date like '05%';

--18. EMPLOYEES ���̺��� �޿��� 10000�̻��̰ų� JOB�� Manager �� ����� ������ �����ȣ, ����, ������, �޿�, �Ի�����, �μ���ȣ�� ����϶�. 
SELECT employee_id, last_name || first_name, job_id, salary, hire_date, department_id 
FROM employees 
WHERE salary>=10000 or job_id='ST_MAN';

--19. EMPLOYEES ���̺��� �޿��� 1100�̻��̰� JOB�� ST_MAN �� ����� ������ �����ȣ, ����, ������, �޿�, �Ի�����, �μ���ȣ�� ����϶�.
SELECT employee_id, last_name || first_name, job_id, salary, hire_date, department_id 
FROM employees
WHERE salary>=1100 AND job_id='ST_MAN';

--20.EMPLOYEES ���̺��� �޿��� 10000�̻��̰ų� JOB�� Manager �� ����� ������ �����ȣ, ����, ������, �޿�, �Ի�����, �μ���ȣ�� ����϶�.
SELECT employee_id, last_name || first_name, job_id, salary, hire_date, department_id 
FROM employees
WHERE salary>=1000 OR job_id='ST_MAN';

--21.EMPLOYEES ���̺��� JOB�� ST_MAN, SA_MAN, SA_REP�� �ƴ� ����� ������ �����ȣ, ����, ������, �޿�, �μ���ȣ�� ����϶�.
SELECT employee_id, last_name || first_name, job_id, salary, department_id 
FROM employees
WHERE job_id NOT in('ST_MAN','SA_MAN','SA_REF');

--22.������ PRESIDENT(AD_PRES) �̰� �޿��� 12000�̻��̰ų� ������ SA_MAN�� ����� ������ �����ȣ, �̸�, ����, �޿��� ����϶�.
SELECT employee_id, last_name || first_name, job_id, salary 
FROM employees
WHERE job_id='AD_PRES' AND salary>=1200 OR job_id='SA_MAN';