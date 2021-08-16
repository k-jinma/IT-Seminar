SELECT * from likesanddislikes;

--MEAT好き or Vegetable好き 以下で抽出可能→テキストの例は良くない
SELECT no, name, meat, vegetables from likesanddislikes
    where meat = 'like'
        OR vegetables = 'like';

--UNIONの使いどころ（準備）
CREATE TABLE syain(
    id int not null primary key,
    name varchar(40),
    saraly int
);

INSERT INTO syain
    VALUES(1, '田中', 200000),(2, '佐藤', 250000),(3,'橋本', 300000);

CREATE TABLE part(
    id int not null primary key,
    name varchar(40),
    saraly int
);

INSERT INTO part
    VALUES(1, 'P山本', 120000),(2, 'P鈴木', 80000),(3,'P横田', 110000);

--社員とパートの情報を出力するにはどうするか？　以下ではダメ
select syain.id, syain.name, syain.saraly, part.id, part.name, part.saraly
    from syain, part;

--以下のようにUNIONを使用する
select id, name, saraly from syain
UNION
select id, name, saraly from part;

