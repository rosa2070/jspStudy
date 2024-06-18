CREATE TABLE board1 (
	seq INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subject VARCHAR(150) NOT NULL,
	writer VARCHAR(12) NOT NULL,
	mail VARCHAR(50),
	password VARCHAR(42) NOT NULL,
	content VARCHAR(2000),
	hit INT NOT NULL,
	wip VARCHAR(15) NOT NULL,
	wdate DATETIME NOT NULL
);

INSERT INTO board1 values (0, '제목', '이름', 'test@test.com', password('1234'), '내용', 0, '000.000.000.000', now());

select datediff(now(), wdate) from board1;

