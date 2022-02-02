--1. emp 테이블에서 사원번호, 사원이름, 월급을 출력하시오
SELECT empno, ename, sal FROM emp;

--2. emp 테이블에서 사원이름과 월급을 출력하는데 컬럼명은 이름, 월급으로 바꿔서 출력하시오.
SELECT ename "이름", sal "월급" FROM emp;

--3. emp 테이블에서 사원번호, 사원이름, 월급, 연봉을 구하고 각각 컬럼명은 사원번호, 사원이름, 월급, 연봉으로 바꿔서 출력하시오.
SELECT empno "사원번호", ename "사원이름", sal "월급", sal*12 "연봉" FROM emp;

--4. emp 테이블 오 업무(job)을 중복되지 않게 표시하시오.
SELECT distinct job FROM emp;

--5. emp 테이블의 사원명과 업무로 연결(SMITH, CHECK)해서 표시하고 컬럼명은 Employee and job으로 표시하시오.
SELECT ename || 'smith' || job || 'check' "employee and job" FROM emp;

--6.emp 테이블에서 사원번호가 7698인 사원의 이름, 업무, 급여를 출력하시오.
SELECT ename, job, sal, mgr FROM emp WHERE mgr='7698';

--7. emp 테이블에서 사원이름이 SMITH인 사람의 이름과 월급, 부서번호를 구하시오.
SELECT ename, sal, deptno FROM emp WHERE ename='SMITH';

--8. 월급이 2500이상 3500미만인 사원의 이름, 입사일, 월급을 구하시오.
SELECT ename, hiredate, sal FROM emp WHERE sal>=2500 and sal<3500;

--9. 급여가 2000에서 3000사이에 포함되지 않는 사원의 이름, 업무, 급여를 출력하시오.
SELECT ename, job, sal FROM emp WHERE sal not between 2000 and 3000;

--10. 81년05월01일과 81년12월03일 사이에 입사한 사원의 이름, 급여, 입사일을 출력하시오. 
SELECT ename, sal, hiredate 
FROM emp 
WHERE hiredate between '81/05/01' and '81/12/03';

--11. emp테이블에서 사원번호가 7566,7782,7934인 사원을 제외한 사람들의 사원번호,이름, 월급을 출력하시오.
SELECT empno, ename, sal FROM EMP WHERE empno not in('7566','7782','7934');

--12. 부서번호 30(deptno)에서 근무하며 월2,000달러 이하를 받는 81년05월01일 이전에 입사한 사원의 이름, 급여, 부서번호, 입사일을 출력하시오.
SELECT ename, sal, deptno, hiredate 
FROM emp 
WHERE deptno=30 and sal<2000 and hiredate <='81.05.01';

--13. emp테이블에서 급여가 2,000와 5,000 사이고 부서번호가 10 또는 30인 사원의 이름과 급여,부서번호를 나열하시오. 
SELECT ename, sal, deptno 
FROM emp 
WHERE sal between 2000 and 5000 and deptno=10 or deptno=30;

--14. 업무가 SALESMAN 또는 MANAGER이면서 급여가 1,600, 2,975 또는 2,850이 아닌 모든 사원의 이름, 업무 및 급여를 표시하시오.
SELECT ename, job, sal 
FROM emp 
WHERE job='SALESMAN' OR job='MANAGER' AND sal not in('1600','2975','2850');

--15. emp테이블에서 이름에 A와 E가 있는 모든 사원의 이름을 표시하시오.
SELECT ename FROM emp WHERE ename like '%A%' or ename like '%E%';

--16. emp테이블에서 관리자가 없는 모든 사원의 이름과 업무를 표시하시오.
SELECT ename, job FROM emp WHERE job !='MANAGER';

--17. emp테이블에서 커미션 항목이 입력된 사원들의 이름과 급여, 커미션을 구하시오.
SELECT ename, sal, comm FROM emp WHERE comm IS NOT NULL;
