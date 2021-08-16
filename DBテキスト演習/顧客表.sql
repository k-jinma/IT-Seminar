use orders;

CREATE Table customers (
    no VARCHAR(4) NOT NULL,
    name VARCHAR(30) NOT NULL,
    address VARCHAR(100),
    PRIMARY KEY(no)
);

insert into customers (no, name, address)
    values ('U001', '山田一郎', '東京都');
