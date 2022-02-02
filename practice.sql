--1. employees table의 모든 자료를 출력하라.
SELECT * FROM EMPLOYEES;

--2. employees table의 컬럼들을 모두 출력하라.
DESC employees;

--3. employees에서 사원번호, 이름, 급여, 담당업무를 출력하라.
SELECT employee_id, last_name, first_name, salary, job_id FROM employees;

--4. 모든 종업원의 급여를 $300증가 시키기 위해서 덧셈 연산자를 사용하고 결과에 SALARY+300로 출력하라.
SELECT last_name, first_name, salary, salary*300 FROM employees;

--5. emp 테이블에서 사원번호, 이름, 급여, 보너스, 보너스 금액을 출력하여라 ( 참고로 보너스는 월급 + (월급 * 커미션))
SELECT employee_id, last_name, salary, commission_pct * salary, salary+(salary+commission_pct) 
FROM employees;

--6. EMPLOYEES 테이블에서 LSAT_NAME을 이름으로 SALARY을 급여로 출력하여라.
SELECT last_name "이름" , salary "급여" FROM employees;

--7. EMPLOYEES 테이블에서 LASY_NAME을 Name으로 SALARY*12를 Annual Salary(연봉)로 출력하여라.
SELECT last_name "Name", salary*12 "Annual Salary(연봉)" FROM employees;

--8. EMPLOYEES 테이블에서 이름과 업무를 연결하여 출력하여라.
SELECT last_name || first_name ||' '|| job_id "Employees" FROM employees;

--9. EMPLOYEES 테이블에서 이름과 업무를 "KING is a PRESIDENT" 형식으로 출력하여라.
SELECT last_name || first_name || job_id "KING is a PRESIDENT" FROM employees;

--10. EMPLOYEES 테이블에서 이름과 연봉을 "KING: 1 Year salary = 60000" 형식으로 출력하여라.
SELECT last_name || first_name|| salary || 'KING: 1 Year salary *' || salary*12 
FROM employees;

--11. EMPLOYESS 테이블에서 JOB을 모두 출력하라.
SELECT job_id FROM employees;

--12. EMPLOYEES 테이블에서 급여가 3000이상인 사원읜 정보를 사원번호, 이름, 담당업무, 급여를 출력하라. 
SELECT employee_id, last_name || first_name, job_id, salary 
FROM employees 
WHERE salary>=3000;

--13. EMPLOYEES 테이블에서 담당 업무가 ST_MAN 인 사원의 정보를 사원번호, 성명, 담당업무, 급여, 부서번호를 출력하라.
SELECT employee_id, last_name || first_name, job_id, salary, department_id 
FROM employees 
WHERE job_id='ST_MAN';

--14. EMPLOYEES 테이블에서 입사일자가 2006년 1월 1일 이후에 입사한 사원의 정보를 사원번호, 성명, 담당업무, 급여, 입사일자, 부서번호를 출력하라.
SELECT employee_id, last_name || first_name, job_id, salary, hire_date, department_id 
FROM employees 
WHERE hire_date > to_date('060101');

--15. EMPLOYEES 테이블에서 급여가 3000에서 5000사이의 정보를 성명, 담당업무, 급여, 부서번호를 출력하라.
SELECT last_name || first_name,salary, department_id 
FROM employees 
WHERE salary between 3000 and 5000;

--16. EMPLOYEES 테이블에서 사원번호가 145, 152, 203 인 사원의 정보를 사원번호, 성명, 담당업무, 급여, 입사일자를 출력하라.
SELECT employee_id, last_name || first_name, job_id, salary, hire_date 
FROM employees 
WHERE employee_id in('145','152','203');

--17. EMPLOYEES 테이블에서 입사일자가 05년도에 입사한 사원의 정보를 사원번호, 성명, 담당업무, 급여, 입사일자, 부서번호를 출력하라.
SELECT employee_id, last_name || first_name, job_id, salary, hire_date, department_id 
FROM employees 
WHERE hire_date like '05%';

--18. EMPLOYEES 테이블에서 급여가 10000이상이거나 JOB이 Manager 인 사원의 정보를 사원번호, 성명, 담당업무, 급여, 입사일자, 부서번호를 출력하라. 
SELECT employee_id, last_name || first_name, job_id, salary, hire_date, department_id 
FROM employees 
WHERE salary>=10000 or job_id='ST_MAN';

--19. EMPLOYEES 테이블에서 급여가 1100이상이고 JOB이 ST_MAN 인 사원의 정보를 사원번호, 성명, 담당업무, 급여, 입사일자, 부서번호를 출력하라.
SELECT employee_id, last_name || first_name, job_id, salary, hire_date, department_id 
FROM employees
WHERE salary>=1100 AND job_id='ST_MAN';

--20.EMPLOYEES 테이블에서 급여가 10000이상이거나 JOB이 Manager 인 사원의 정보를 사원번호, 성명, 담당업무, 급여, 입사일자, 부서번호를 출력하라.
SELECT employee_id, last_name || first_name, job_id, salary, hire_date, department_id 
FROM employees
WHERE salary>=1000 OR job_id='ST_MAN';

--21.EMPLOYEES 테이블에서 JOB이 ST_MAN, SA_MAN, SA_REP가 아닌 사원의 정보를 사원번호, 성명, 담당업무, 급여, 부서번호를 출력하라.
SELECT employee_id, last_name || first_name, job_id, salary, department_id 
FROM employees
WHERE job_id NOT in('ST_MAN','SA_MAN','SA_REF');

--22.업무가 PRESIDENT(AD_PRES) 이고 급여가 12000이상이거나 업무가 SA_MAN인 사원의 정보를 사원번호, 이름, 업무, 급여를 출력하라.
SELECT employee_id, last_name || first_name, job_id, salary 
FROM employees
WHERE job_id='AD_PRES' AND salary>=1200 OR job_id='SA_MAN';