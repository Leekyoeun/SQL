--1. emp ���̺��� �����ȣ, ����̸�, ������ ����Ͻÿ�
SELECT empno, ename, sal FROM emp;

--2. emp ���̺��� ����̸��� ������ ����ϴµ� �÷����� �̸�, �������� �ٲ㼭 ����Ͻÿ�.
SELECT ename "�̸�", sal "����" FROM emp;

--3. emp ���̺��� �����ȣ, ����̸�, ����, ������ ���ϰ� ���� �÷����� �����ȣ, ����̸�, ����, �������� �ٲ㼭 ����Ͻÿ�.
SELECT empno "�����ȣ", ename "����̸�", sal "����", sal*12 "����" FROM emp;

--4. emp ���̺� �� ����(job)�� �ߺ����� �ʰ� ǥ���Ͻÿ�.
SELECT distinct job FROM emp;

--5. emp ���̺��� ������ ������ ����(SMITH, CHECK)�ؼ� ǥ���ϰ� �÷����� Employee and job���� ǥ���Ͻÿ�.
SELECT ename || 'smith' || job || 'check' "employee and job" FROM emp;

--6.emp ���̺��� �����ȣ�� 7698�� ����� �̸�, ����, �޿��� ����Ͻÿ�.
SELECT ename, job, sal, mgr FROM emp WHERE mgr='7698';

--7. emp ���̺��� ����̸��� SMITH�� ����� �̸��� ����, �μ���ȣ�� ���Ͻÿ�.
SELECT ename, sal, deptno FROM emp WHERE ename='SMITH';

--8. ������ 2500�̻� 3500�̸��� ����� �̸�, �Ի���, ������ ���Ͻÿ�.
SELECT ename, hiredate, sal FROM emp WHERE sal>=2500 and sal<3500;

--9. �޿��� 2000���� 3000���̿� ���Ե��� �ʴ� ����� �̸�, ����, �޿��� ����Ͻÿ�.
SELECT ename, job, sal FROM emp WHERE sal not between 2000 and 3000;

--10. 81��05��01�ϰ� 81��12��03�� ���̿� �Ի��� ����� �̸�, �޿�, �Ի����� ����Ͻÿ�. 
SELECT ename, sal, hiredate 
FROM emp 
WHERE hiredate between '81/05/01' and '81/12/03';

--11. emp���̺��� �����ȣ�� 7566,7782,7934�� ����� ������ ������� �����ȣ,�̸�, ������ ����Ͻÿ�.
SELECT empno, ename, sal FROM EMP WHERE empno not in('7566','7782','7934');

--12. �μ���ȣ 30(deptno)���� �ٹ��ϸ� ��2,000�޷� ���ϸ� �޴� 81��05��01�� ������ �Ի��� ����� �̸�, �޿�, �μ���ȣ, �Ի����� ����Ͻÿ�.
SELECT ename, sal, deptno, hiredate 
FROM emp 
WHERE deptno=30 and sal<2000 and hiredate <='81.05.01';

--13. emp���̺��� �޿��� 2,000�� 5,000 ���̰� �μ���ȣ�� 10 �Ǵ� 30�� ����� �̸��� �޿�,�μ���ȣ�� �����Ͻÿ�. 
SELECT ename, sal, deptno 
FROM emp 
WHERE sal between 2000 and 5000 and deptno=10 or deptno=30;

--14. ������ SALESMAN �Ǵ� MANAGER�̸鼭 �޿��� 1,600, 2,975 �Ǵ� 2,850�� �ƴ� ��� ����� �̸�, ���� �� �޿��� ǥ���Ͻÿ�.
SELECT ename, job, sal 
FROM emp 
WHERE job='SALESMAN' OR job='MANAGER' AND sal not in('1600','2975','2850');

--15. emp���̺��� �̸��� A�� E�� �ִ� ��� ����� �̸��� ǥ���Ͻÿ�.
SELECT ename FROM emp WHERE ename like '%A%' or ename like '%E%';

--16. emp���̺��� �����ڰ� ���� ��� ����� �̸��� ������ ǥ���Ͻÿ�.
SELECT ename, job FROM emp WHERE job !='MANAGER';

--17. emp���̺��� Ŀ�̼� �׸��� �Էµ� ������� �̸��� �޿�, Ŀ�̼��� ���Ͻÿ�.
SELECT ename, sal, comm FROM emp WHERE comm IS NOT NULL;
