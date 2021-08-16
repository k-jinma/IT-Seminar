use orders;

CREATE Table items (
    no VARCHAR(4) NOT NULL,
    name VARCHAR(50) NOT NULL,
    price int,
    PRIMARY KEY(no)
);

insert into items (no, name, price)
    values ('S100', 'シャープペンシル', 700);
insert into items (no, name, price)
    values ('S200', '消しゴム', 100);
