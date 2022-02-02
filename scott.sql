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

