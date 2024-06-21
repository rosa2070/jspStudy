create table pds_board1 (
seq       int              not null     primary key auto_increment,
subject   varchar(150)     not null,
writer    varchar(12)      not null, 
mail      varchar(50),
password  varchar(42)      not null,
content   varchar(2000),
filename  varchar(50),
filesize  int,
hit       int              not null,
wip       varchar(15)      not null,
wdate     datetime         not null
);

insert into pds_board1 values ( 0, '제목', '이름', 'test@test.com', password( '1234' ), '내용', 'test.txt', 10, 0, '000.000.000.000', now() );