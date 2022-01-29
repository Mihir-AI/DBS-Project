use customer;

insert into countries_info values('AML-CTY-HR-01', 'AF'),
('AML-CTY-HR-01', 'JI'),
('AML-CTY-HR-01', 'PK'),
('AML-CTY-HR-01', 'IS'),
('AML-CTY-HR-01', 'TR'),
('AML-CTY-HR-01', 'SR');

insert into customer_info values('S1659194G_00', 'Vinay', 'MY', 01/01/1980),
('AS25CS0001L_00', 'Mihir', 'MY', 01/01/1980),
('C04120777G_00', 'Shamson', 'MY', 01/01/1980),
('C04120000G_00', 'Navneeth', 'MY', 01/01/1980);

insert into account_info values('CASP_D04050165300009', 'C1245363788_00', 28/02/2015),
('CASP_D04050165300003', 'C014581971C_00', 28/02/2015),
('CASP_D04050165300002', 'C014831981K_00', 31/03/2015),
('CASP_D04050165300001', 'C015471980N_00', 28/02/2015);

insert into customer_transaction values('K1', 'CASP_D04050165300009', 50, 'INN', 'AF', 01/01/2019),
('K2', 'CASP_D04050165300009', 50, 'INN', 'SR', 02/01/2019),
('K3', 'CASP_D00630169780002', 50, 'INN', 'MM', 03/01/2019),
('K4', 'CASP_D00630169780002', 50, 'INN', 'AF', 04/01/2019);
