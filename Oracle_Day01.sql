-- ORA-01031: insufficient privileges ���Ѻο� �� ������ �ؾ��� 
--Table STUDENT_TBL��(��) �����Ǿ����ϴ�.
CREATE TABLE STUDENT_TBL(
    STUDENT_NAME VARCHAR(20),
    STUDENT_AGE NUMBER,
    STUDENT_GRADE NUMBER,
    STUDENT_ADDRESS VARCHAR2(100)
);
-- ���� -> ���� + ���� 
-- ���̺� ����
-- 00942. 00000 -  "table or view does not exist"
DROP TABLE STUDENT_TBL;
-- Table STUDENT_TBL��(��) �����Ǿ����ϴ�.

-- TABLE�� �����͸� �ִ� ���! -> ȸ������
INSERT INTO STUDENT_TBL(STUDENT_NAME, STUDENT_AGE, STUDENT_GRADE, STUDENT_ADDRESS)
VALUES('�Ͽ���', 22, 1, '����');
-- 1 �� ��(��) ���ԵǾ����ϴ�.

-- �÷��� �������� 
INSERT INTO STUDENT_TBL VALUES ('�̿���', 33, 2, '����� ���α�');
INSERT INTO STUDENT_TBL VALUES ('�����', 33, 1, '����');
INSERT INTO STUDENT_TBL VALUES ('�ֿ���', 44, 2, '�λ�');
INSERT INTO STUDENT_TBL VALUES ('�ſ���', 55, 3, '��û��');

-- ���� ���� 
UPDATE STUDENT_TBL
SET STUDENT_AGE = 99
WHERE STUDENT_GRADE = 2;

DELETE FROM STUDENT_TBL WHERE STUDENT_GRADE = 2;

INSERT INTO STUDENT_TBL
VALUES (' ', 55, 4, NULL);

-- ��ü ������ ���� -> ȸ��Ż��
DELETE FROM STUDENT_TBL; 
-- 5�� �� ��(��) �����Ǿ����ϴ�.

-- Table DATATYPE_TEL��(��) �����Ǿ����ϴ�.
CREATE TABLE DATATYPE_TBL (
    MOONJJA CHAR(10),
    -- ���ĺ��� 10����, �ѱ��� 3����
    MOONJJAYUL VARCHAR2(100), 
    -- ���ĺ��� 100����, �ѱ��� 33����
    SOOJJA NUMBER,
    NALJJA DATE,
    NALJJA2 TIMESTAMP
);
DROP TABLE DATATYPE_TEL;

DESC DATATYPE_TBL;
INSERT INTO DATATYPE_TBL
VALUES('����','���ڿ�', 22, SYSDATE, SYSTIMESTAMP);
SELECT MOONJJA, MOONJJAYUL, SOOJJA, NALJJA, NALJJA2
FROM DATATYPE_TBL;
INSERT INTO DATATYPE_TBL
VALUES('����2', '���ڿ�2', 33, SYSDATE, SYSTIMESTAMP);

UPDATE DATATYPE_TBL
SET MOONJJAYUL = '����Ŭ'
WHERE SOOJJA = 33;
-- 1 �� ��(��) ������Ʈ�Ǿ����ϴ�.

DELETE FROM DATATYPE_TBL
WHERE SOOJJA = 22;
-- 1 �� ��(��) �����Ǿ����ϴ�.

-- ������ ��ȸ
-- FROM -> WHERE -> SELECT
SELECT STUDENT_NAME, STUDENT_AGE, STUDENT_GRADE, STUDENT_ADDRESS
FROM STUDENT_TBL
WHERE STUDENT_GRADE = 1;
