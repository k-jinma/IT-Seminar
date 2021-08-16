CREATE Table ordersdetails (
    orderno int NOT NULL,
    itemno varchar(4) NOT NULL,
    quantity int DEFAULT 0,
    PRIMARY KEY(orderno, itemno),
    FOREIGN KEY(orderno) REFERENCES orders(orderno),
    FOREIGN KEY(itemno) REFERENCES item(no)
);

insert into ordersdetails ( orderno, itemno, quantity )
    values ( 1, 'S100', 4 ), ( 2, 'S200', 5);

