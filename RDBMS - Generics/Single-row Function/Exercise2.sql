--Show transaction date, first 20 characters of transaction description (change the column heading to "trans_desc") and amounts of all 'Credit' transactions done during June, 2010.

alter session set current_schema=bank;
SET heading OFF;
SELECT TRANS_DT,SUBSTR(TRANS_DESC,1,20) AS "tRANS_DESC", TRANS_AMT FROM BANK_TRANSACTION WHERE TRANS_TYPE='CR' AND TO_CHAR(TRANS_DT,'MON-YY')='JUN-10';
