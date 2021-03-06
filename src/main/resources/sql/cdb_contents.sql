
SELECT
    SCN,
    START_SCN,
    COMMIT_SCN,
    TIMESTAMP,
    TX_NAME,
    OPERATION,
    OPERATION_CODE,
    SEG_OWNER,
    SEG_NAME,
    TABLE_NAME,
    SEG_TYPE_NAME,
    TABLE_SPACE,
    ROW_ID,
    USERNAME,
    SESSION#,
    SERIAL#,
    SESSION_INFO,
    THREAD#,
    SEQUENCE#,
    RBASQN,
    RBABLK,
    SQL_REDO,
    RS_ID,
    CSF,
    INFO,
    STATUS,
    SRC_CON_ID
FROM
    V$LOGMNR_CONTENTS
WHERE
    OPERATION_CODE IN (
        1,
        2,
        3
    )
    AND COMMIT_SCN >= ?
        AND 