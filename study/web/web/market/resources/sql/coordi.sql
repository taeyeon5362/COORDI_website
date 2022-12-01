use CoordiDB;

CREATE TABLE IF NOT EXISTS coordi(
    c_id VARCHAR(10) NOT NULL,
    c_name VARCHAR(10),
    c_description TEXT,
    c_category VARCHAR(20),
    c_releaseDate VARCHAR(20),
    c_temperature VARCHAR(20),
    c_filename VARCHAR(20),
    PRIMARY KEY (c_id)
)default CHARSET=utf8;

TRUNCATE coordi;

