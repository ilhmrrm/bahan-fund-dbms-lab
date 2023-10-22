-- 1. ❌
create table supplier_10119113 (
kode_supplier number(10) primary key, 
nama_supplier varchar(20) not null,
alamat varchar(10) not null, 
kota number(20), 
no_telp varchar(10), 
waktu_pembayaran date
);

create table pembelian_10119113 (
no_slip number(10),
tanggal date,
kode_supplier number(10),
nama_produk varchar(40)
);

-- 2. 
alter table pembelian_10119113 add (
constraint no_slip_pk 
primary key (no_slip)
);

-- 3. ❌
alter table pembelian_10119113 add (
constraint kode_supplier_fk 
foreign key (kode_supplier)
references supplier_10119113 (kode_supplier)
);

-- 4. 
alter table pembelian_10119113 add (total number(20));

-- 5. ❌
alter table pembelian_10119113 modify (total number(15));

-- 6.
alter table pembelian_10119113 drop constraint kode_supplier_fk; ❌
alter table pembelian_10119113 drop constraint no_slip_pk;

-- 7. 
drop table supplier_10119113;