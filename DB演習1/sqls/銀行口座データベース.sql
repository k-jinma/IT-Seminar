--銀行口座データベース作成(bank)
CREATE database bank;

--口座テーブル作成
CREATE Table accounts(
    no CHAR(7) NOT NULL,
    name VARCHAR(40) NOT NULL,
    kind CHAR(1) NOT NULL,
    balance INT NOT NULL,
    updatedate DATE,
    PRIMARY KEY(no)
);

--廃止口座テーブル作成
CREATE Table abolitionAccounts(
    no CHAR(7) NOT NULL,
    name VARCHAR(40) NOT NULL,
    kind CHAR(1) NOT NULL,
    cancellationBalance INT NOT NULL,
    cancellationDate DATE,
    PRIMARY KEY(no)
);

--取引事由テーブル作成
CREATE Table reasons(
    id INT NOT NULL,
    reason VARCHAR(20) NOT NULL,
    PRIMARY KEY(id)
);

--取引テーブル作成
CREATE Table transactions(
    no INT NOT NULL,
    reasonId INT NOT NULL,
    transactionDate DATE NOT NULL,
    accountNo CHAR(7) NOT NULL,
    deposit INT,
    withdrawal INT,
    PRIMARY KEY(no),
    FOREIGN KEY(reasonId) REFERENCES reasons(id)
);

--口座テーブルにデータを挿入する
insert into accounts (no, name, kind, balance, updatedate)
    values('0642191', 'アオキ　ハルカ', '1', 3640551, '2013-03-13'),
            ('1039410', 'キノシタ　リュウジ', '1', 259017, '2012-11-30');

insert into accounts (no, name, kind, balance)
    values('1239855', 'タカシナ　ミツル', '2', 6509773 );