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

