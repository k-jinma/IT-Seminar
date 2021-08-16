CREATE Table orders (
    no int NOT NULL,
    orderdate DATE NOT NULL,
    customerno VARCHAR(4) NOT NULL,
    PRIMARY KEY(no),
    FOREIGN KEY(customerno) REFERENCES customers(no)
);

insert into orders ( no, orderdate, customerno )
    values ( 1, '2013-01-20', 'U001');

