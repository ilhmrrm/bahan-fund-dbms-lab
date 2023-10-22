-- 1.
create table pasien_npm (
no_pasien varchar(15) primary key,
nama varchar(15),
no_kamar varchar(20),
usia varchar(12),
tgl_lahir varchar(12)
);

-- 2.
alter table pasien_npm modify column tgl_lahir date;

-- 3.
alter table pasien_npm drop primary key;

-- 4.
insert into pasien_npm values
('123','Ridho','12','20','1992/1/12'),
('125','Sania','13','21','1991/1/13'),
('126','Zaki','20','20','1991/1/14'),
('127','Mulyadi','12','19','1991/1/16'),
('128','Ruth','15','20','1991/1/17');

-- 5.
select * from pasien_npm where no_kamar = '12' or no_kamar = '15';

-- 6.
insert into pasien_npm values
('129','Rian','15','17','1993/10/18');

-- 7.
select no_pasien, nama, no_kamar from pasien_npm 
where nama like '%i';

-- 8.
select no_pasien, nama, usia from pasien_npm
where nama like '%u%' ;

-- 9.
select * from pasien_npm where usia <= '20';

-- 10.
select * from pasien_npm where nama != 'Ruth';