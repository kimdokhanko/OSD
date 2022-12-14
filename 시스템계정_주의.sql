-- 사용자 계정 생성, 권한부여 및 해제 --는 주석처리 
CREATE USER STUDENT IDENTIFIED BY STUDENT;
-- User STUDENT이(가) 생성되었습니다.
-- 상태: 실패 -테스트 실패: 
-- ORA-01045: user STUDENT lacks CREATE SESSION privilege; logon denied
GRANT CONNECT TO STUDENT;
-- Grant을(를) 성공했습니다.
GRANT RESOURCE TO STUDENT;
-- Grant을(를) 성공했습니다.

CREATE TABLE STUDENT_TBL(
    STUDENT_NAME VARCHAR(20),
    STUDENT_AGE NUMBER,
    STUDENT_GRADE NUMBER,
    STUDENT_ADDRESS VARCHAR(100)
);
-- KH 계정을 만들고 그 비밀번호는 KH로 해주세요
CREATE USER KH IDENTIFIED BY KH;
-- 접속이 가능하고 테이블이 할 수 있도록 해주세요
GRANT CONNECT TO KH;
GRANT RESOURCE TO KH;
