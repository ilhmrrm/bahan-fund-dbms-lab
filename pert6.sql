use penduduk_npm /* masukin nama database masing2 */

alter table datapenduduk alter column STATUS varchar(25) null

--no.1
insert into datapenduduk values
(1,'Shinta','Jl. Gugus Depan','Belum Menikah','13120'),
(2,'Amin','Jl. Margonda Raya','Menikah','16424'),
(3,'Dea','Jl. Lenteng Agung','Belum Menikah','12342'),
(4,'Bagas','Jl. Matraman Raya','Menikah','16279'),
(5,'Wato','Jl. Pramuka','Belum Menikah','14324')

select * from datapenduduk

--no.2 ❌
select * from datapenduduk where ALAMAT = 'Jl. Pramuka'

--no.3 
select * from datapenduduk where NAMA like '%n%'

--no.4 ❌
select * from datapenduduk where KD_POS like '_2%'

--no.5
update datapenduduk set STATUS = 'Menikah' where NAMA = 'Shinta'
select * from datapenduduk

--no.6 ❌
update datapenduduk set NAMA = 'Dena' where NAMA = 'Dea'
select * from datapenduduk

--no.7 ❌
delete from datapenduduk where ALAMAT = 'Jl. Pramuka'
select * from datapenduduk

--no.8 ❌
delete from datapenduduk where KD_POS like '%0%'
select * from datapenduduk