-- 1
CREATE DATABASE BANK;

-- 2
CREATE TABLE nasabah_ferrari(
    No_rek varchar(15),
    Nama varchar(15),
    Alamat varchar(20),
    Notelp varchar(12),
    Tgl_lahir varchar(12)
);

-- 3
alter table nasabah rename to nasabah_baru;
show tables;

-- 4
alter table nasabah_baru change column nama nama_nasabah varchar(12);
desc nasabah_baru;

-- 5
alter table nasabah_baru add tgl_nasabah varchar(15);
desc nasabah_baru;

-- 6
alter table nasabah_baru modify column tgl_nasabah date;
desc nasabah_baru;

-- 7
alter table nasabah_baru drop tgl_nasabah;

-- 8
desc nasabah_baru;

-- hapus table (drop table nasabah_baru;)
-- hapus database (drop database bank;)