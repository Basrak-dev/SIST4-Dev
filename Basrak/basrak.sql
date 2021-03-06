----테이블 생성 쿼리
--사용자 테이블 생성
CREATE TABLE USERS
(
    NICKNAME    VARCHAR2(20),
    EMAIL           VARCHAR2(100) CONSTRAINT USERS_EMAIL_NN NOT NULL,
    PASSWD   VARCHAR2(20) CONSTRAINT USERS_PASSWORD_NN NOT NULL,
    CONSTRAINT USERS_NICKNAME_PK PRIMARY KEY(NICKNAME)
);

--자주묻는질문 테이블 생성
CREATE TABLE FAQ_BOARD
(
    F_SEQ        CHAR(5),
    TITLE        VARCHAR2(60)     CONSTRAINT FAQ_BOARD_TITLE_NN NOT NULL, 
    CONTENT      VARCHAR2(3000)   CONSTRAINT FAQ_BOARD_CONTENT_NN NOT NULL,
    REGDATE      DATE  DEFAULT SYSDATE   CONSTRAINT FAQ_BOARD_REGDATE_NN NOT NULL,
    READNUM      NUMBER(6)  DEFAULT 0   CONSTRAINT FAQ_BOARD_READNUM_NN NOT NULL,
    CONSTRAINT FAQ_BOARD_F_SEQ_PK PRIMARY KEY(F_SEQ)
);

--유저게시판 테이블 생성
CREATE TABLE USER_BOARD
(
    U_SEQ        VARCHAR2(10),
    TITLE        VARCHAR2(60)     CONSTRAINT USER_BOARD_TITLE_NN NOT NULL, 
    CONTENT      VARCHAR2(3000)   CONSTRAINT USER_BOARD_CONTENT_NN NOT NULL,
    REGDATE      DATE   DEFAULT SYSDATE  CONSTRAINT USER_BOARD_REGDATE_NN NOT NULL,
    READNUM      NUMBER(6)  DEFAULT 0   CONSTRAINT USER_BOARD_READNUM_NN NOT NULL,
    NICKNAME     VARCHAR2(20)     CONSTRAINT USER_BOARD_NICKNAME_NN NOT NULL,
    CONSTRAINT USER_BOARD_U_SEQ_PK PRIMARY KEY(U_SEQ),
    CONSTRAINT USER_BOARD_NICKNAME_FK    FOREIGN KEY (NICKNAME)
    REFERENCES USERS(NICKNAME)
);

--문의게시판 테이블 생성       ---NEW!!!
CREATE TABLE QNA_BOARD
(
    Q_SEQ        VARCHAR2(10),
    TITLE        VARCHAR2(60)     CONSTRAINT QNA_BOARD_TITLE_NN NOT NULL,
    CONTENT      VARCHAR2(3000)   CONSTRAINT QNA_BOARD_CONTENT_NN NOT NULL,
    REGDATE      DATE  DEFAULT SYSDATE CONSTRAINT QNA_BOARD_REGDATE_NN NOT NULL,
    GRP			NUMBER(10)		  CONSTRAINT QNA_BOARD_GRP_NN NOT NULL,
    LVL			NUMBER(1)	DEFAULT 0	CONSTRAINT QNA_BOARD_LVL_NN NOT NULL,
    STEP		NUMBER(4)	DEFAULT 0	CONSTRAINT QNA_BOARD_STEP_NN NOT NULL,
    NICKNAME     VARCHAR2(20)     CONSTRAINT QNA_BOARD_NICKNAME_NN NOT NULL,
    CONSTRAINT QNA_BOARD_Q_SEQ_PK PRIMARY KEY(Q_SEQ),
    CONSTRAINT QNA_BOARD_NICKNAME_FK    FOREIGN KEY (NICKNAME)
    REFERENCES USERS(NICKNAME)
);

--댓글게시판 생성
CREATE TABLE COMMENTS
(
    C_SEQ       VARCHAR2(10),
    CONTENT     VARCHAR2(1500)  CONSTRAINT COMMENTS_CONTENT_NN NOT NULL,
    REGDATE     DATE   DEFAULT SYSDATE CONSTRAINT COMMENTS_REGDATE_NN NOT NULL,
    NICKNAME    VARCHAR2(20)    CONSTRAINT COMMENTS_NICKNAME_NN NOT NULL,
    U_SEQ       VARCHAR2(10)    CONSTRAINT COMMENTS_U_SEQ_NN NOT NULL,
    CONSTRAINT COMMENTS_C_SEQ_PK          PRIMARY KEY(C_SEQ),
    CONSTRAINT COMMENTS_NICKNAME_FK    FOREIGN KEY (NICKNAME)
    REFERENCES USERS(NICKNAME),
    CONSTRAINT COMMENTS_U_SEQ_FK    FOREIGN KEY (U_SEQ)
    REFERENCES USER_BOARD(U_SEQ)
);

--요일 테이블 생성
CREATE TABLE DAY
(
    D_SEQ   VARCHAR2(20),
    DAY      CHAR(3)    CONSTRAINT DAY_DAY_NN NOT NULL,
    CONSTRAINT DAY_D_SEQ_PK     PRIMARY KEY(D_SEQ)
);

--종목 테이블 생성
CREATE TABLE SPORTS
(
    S_SEQ           VARCHAR2(20),
    SPORTS         VARCHAR2(10) CONSTRAINT SPORTS_SPORTS_NN NOT NULL,
    CONSTRAINT SPORTS_S_SEQ_PK     PRIMARY KEY(S_SEQ)
);

--사용자선택 테이블 생성
CREATE TABLE USER_CHOICE
(
    CHOICE_SEQ  NUMBER(3),
    S_SEQ           VARCHAR2(20)        CONSTRAINT USER_CHOICE_S_SEQ_NN NOT NULL,
    D_SEQ           VARCHAR2(20)       CONSTRAINT USER_CHOICE_D_SEQ_NN NOT NULL,
    NICKNAME    VARCHAR2(20)    CONSTRAINT USER_CHOICE_NICKNAME_NN NOT NULL,
    CONSTRAINT USER_CHOICE_CHOICE_SEQ_PK    PRIMARY KEY(CHOICE_SEQ),
    CONSTRAINT USER_CHOICE_D_SEQ_FK FOREIGN KEY(D_SEQ)
    REFERENCES DAY(D_SEQ),
    CONSTRAINT USER_CHOICE_S_SEQ_FK FOREIGN KEY(S_SEQ)
    REFERENCES SPORTS(S_SEQ)
);

------------시퀀스 생성 쿼리
--자주묻는질문 FAQ일련용 시퀀스(CHAR(5))
CREATE SEQUENCE SEQ_FAQ_BOARD_F_SEQ
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 99999
    NOCYCLE;

--아래 시퀀스는 알파벳 한 자리+숫자 9자리
--유저게시판 유저일련용 시퀀스(VARCHAR2(10))
CREATE SEQUENCE SEQ_USERS_BOARD_U_SEQ
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 999999999
    NOCYCLE;

--문의게시판 문의일련용 시퀀스(VARCHAR2(10))     -----NEW!!!
CREATE SEQUENCE SEQ_QNA_BOARD_Q_SEQ
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 999999999
    NOCYCLE;

--댓글 댓글일련용 시퀀스(VARCHAR2(10))
CREATE SEQUENCE SEQ_COMMENTS_C_SEQ
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 999999999
    NOCYCLE;

--사용자선택 사용자선택일련용 시퀀스(VARCHAR2(10))
CREATE SEQUENCE SEQ_USER_CHOICE_CHOICE_SEQ
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 999999999
    NOCYCLE;

--요일 테이블 데이터 추가(INSERT문 한 개씩 실행해주세요!)
INSERT INTO BASRAK.DAY(d_seq, day) VALUES('1', '월');
INSERT INTO BASRAK.DAY(d_seq, day) VALUES('2', '화');
INSERT INTO BASRAK.DAY(d_seq, day) VALUES('3', '수');
INSERT INTO BASRAK.DAY(d_seq, day) VALUES('4', '목');
INSERT INTO BASRAK.DAY(d_seq, day) VALUES('5', '금');

--종목 테이블 데이터 추가(INSERT문 한 개씩 실행해주세요!)
INSERT INTO BASRAK.SPORTS (S_SEQ, SPORTS) VALUES ('1', '축구');
INSERT INTO BASRAK.SPORTS (S_SEQ, SPORTS) VALUES ('2', '야구');
INSERT INTO BASRAK.SPORTS (S_SEQ, SPORTS) VALUES ('3', '농구');
INSERT INTO BASRAK.SPORTS (S_SEQ, SPORTS) VALUES ('4', '배구');
INSERT INTO BASRAK.SPORTS (S_SEQ, SPORTS) VALUES ('5', 'OTHER');

