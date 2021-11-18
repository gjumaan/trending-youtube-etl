CREATE TABLE merged_us (
title VARCHAR NOT NULL,
category_id INT NOT NULL,
views INT NOT NULL,
likes INT NOT NULL,
dislikes INT NOT NULL,
comments INT NOT NULL,
category_title VARCHAR NOT NULL,
country VARCHAR NOT NULL,
primary key (title)
);

SELECT * FROM merged_us;

CREATE TABLE merged_ca (
title VARCHAR NOT NULL,
category_id INT NOT NULL,
views INT NOT NULL,
likes INT NOT NULL,
dislikes INT NOT NULL,
comments INT NOT NULL,
category_title VARCHAR NOT NULL,
country VARCHAR NOT NULL,
primary key (title)
);

CREATE TABLE combined_us_ca
AS (SELECT *
FROM merged_us
UNION ALL
SELECT *
FROM merged_ca);

SELECT * FROM combined_us_ca;