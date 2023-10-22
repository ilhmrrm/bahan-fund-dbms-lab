-- 1.
create database penduduk_npm;

-- 2.
create table datapenduduk (
id_pddk int not null,
nama nvarchar(30) null,
alamat nvarchar(25) null,
status varchar(10) null
);

-- 3.
alter table datapenduduk add primary key(id_pddk);

-- 4.
alter table datapenduduk add kd_pos nvarchar(5) null;

-- 5.
alter table datapenduduk modify column nama varchar(50) not null;
/* kalo pake mysql > modify column, kalo pake sql server > alter column */

/* kalo pake mysql > varchar, kalo pake sql server > nvarchar */