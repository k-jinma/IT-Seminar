CREATE Table orders (
    orderno int NOT NULL,
    orderdate DATE NOT NULL,
    customerno VARCHAR(4) NOT NULL,
    PRIMARY KEY(orderno),
    FOREIGN KEY(customerno) REFERENCES customer(no)
);

insert into orders ( orderno, orderdate, customerno )
    values ( 1, '2013-01-20', 'U001');

