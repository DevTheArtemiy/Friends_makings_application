-- Created by Redgate Data Modeler (https://datamodeler.redgate-platform.com)
-- Last modification date: 2026-08-26 11:34:58.783

-- foreign keys
ALTER TABLE Friend
    DROP CONSTRAINT Friend_Gender;

ALTER TABLE Friend
    DROP CONSTRAINT Friend_Status;

-- tables
DROP TABLE Friend;

DROP TABLE Gender;

DROP TABLE Status;

-- End of file.

