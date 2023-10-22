
create database bank;
use bank;

-- 1.
create table nasabah_npm (
no_rek varchar(15) primary key,
nama varchar(15),
alamat varchar(20),
notelp varchar(12),
tgl_lahir varchar(12)
);

-- 2.
insert into nasabah_npm (no_rek, nama, alamat, notelp, tgl_lahir)
values
('121763456','Razbie','Jakarta','0218000063','04/05/2010'),
('121763466','Riyandi','Depok','082129880001','10/03/2011'),
('121863467','Rizki Hendro','Jakarta','081299300021','11/10/2010'),
('121864287','Dina Widiana','Cirebon','082199930212','01/10/2010'),
('124536534','Anggi Rianti','Cilandak','0219382882','19/09/2010');

select * from nasabah_npm;

-- 3. 
insert into nasabah_npm (no_rek, nama)
values ('123234564','Intan');

select * from nasabah_npm;

-- 4.
select * from nasabah_npm where no_rek = '124536534';

-- 5.
update nasabah_npm set no_rek = '124537891' 
where no_rek = '124536534'; (punya anggi)

select * from nasabah_npm;

-- 6.
delete from nasabah_npm where no_rek = '121863467'; (punya rizki)

select * from nasabah_npm;

-- 7. ((anulir))

-- 8.
update nasabah_npm set notelp = '081298999000'
where notelp = '0219382882'; (punya anggi)

-- 9.
select * from nasabah_npm;