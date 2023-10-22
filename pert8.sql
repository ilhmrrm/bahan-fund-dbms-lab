create database pert8_10119113
use pert8_10119113

-- 1.
create table pegawai_10119113 (
id int(10) primary key,
nama varchar(20) not null,
jabatan varchar(20) not null,
alamat varchar(20) not null
);

-- 2.
insert into pegawai_10119113 values
(1,'agi','direktur','jakarta');
insert into pegawai_10119113 values
(2,'minong','staff keuangan','depok');
insert into pegawai_10119113 values
(3,'soni','manager','bandung');
insert into pegawai_10119113 values
(4,'sabbil','programmer','pamulang');
insert into pegawai_10119113 values
(5,'ratna','analis','depok');

-- 2 (pert 7)
alter table pegawai_10119113 add (
constraint no_slip_pk 
primary key (no_slip)
);

-- 3. ❌
update pegawai_10119113 set alamat = 'depok'
where alamat = 'jakarta';

-- 4.
update pegawai_10119113 set jabatan = 'designer'
, alamat = 'pamulang' where id = 2;

-- 4(pert 7)
alter table pegawai_10119113 add (no_slip number(10));

-- 5. ❌
delete from pegawai_10119113 where alamat = 'pamulang';

-- 6. ❌
select * from pegawai_10119113;

-- 6(pert 7).
alter table pegawai_10119113 drop constraint no_slip_pk;

-- 7. ❌
select nama, jabatan from pegawai_10119113
where id = 3;

-- 8. ❌
select * from pegawai_10119113 where id = 2
or id = 4;

-- 8(pert 7).
drop table pegawai_10119113;