-- ����� ���� ����, ���Ѻο� �� ���� --�� �ּ�ó�� 
CREATE USER STUDENT IDENTIFIED BY STUDENT;
-- User STUDENT��(��) �����Ǿ����ϴ�.
-- ����: ���� -�׽�Ʈ ����: 
-- ORA-01045: user STUDENT lacks CREATE SESSION privilege; logon denied
GRANT CONNECT TO STUDENT;
-- Grant��(��) �����߽��ϴ�.
GRANT RESOURCE TO STUDENT;
-- Grant��(��) �����߽��ϴ�.

CREATE TABLE STUDENT_TBL(
    STUDENT_NAME VARCHAR(20),
    STUDENT_AGE NUMBER,
    STUDENT_GRADE NUMBER,
    STUDENT_ADDRESS VARCHAR(100)
);
-- KH ������ ����� �� ��й�ȣ�� KH�� ���ּ���
CREATE USER KH IDENTIFIED BY KH;
-- ������ �����ϰ� ���̺��� �� �� �ֵ��� ���ּ���
GRANT CONNECT TO KH;
GRANT RESOURCE TO KH;
