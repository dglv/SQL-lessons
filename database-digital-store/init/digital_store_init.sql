-- init schema
drop schema if exists digital_store;
create schema digital_store;

use digital_store;

-- Product table
create table if not exists product (
    model varchar(50) not null,
    manufacturer varchar(50) default null,

    primary key (model)
) engine=InnoDB default charset=utf8;

-- PC table
create table if not exists pc (
    id bigint not null auto_increment,
    model varchar(50) not null,
    ram_size smallint default null,
    hdd_size real default null,
    cd varchar(10) default null,
    price decimal(10,2) default null,
    
    primary key (id),
    foreign key (model) references product (model)   
) engine=InnoDB default charset=utf8;

-- Phone table
create table if not exists phone (
    id bigint not null auto_increment,
    model varchar(50) not null,
    ram_size smallint default null,
    hdd_size real default null,
    screen_size tinyint default null,
    price decimal(10,2) default null,
    
    primary key (id),
    foreign key (model) references product (model)   
) engine=InnoDB default charset=utf8;

-- Printer table
create table if not exists printer (
    id bigint not null auto_increment,
    model varchar(50) not null,
    color varchar(10) default null,
    type varchar(50) default null,
    price decimal(10,2) default null,

    primary key (id),
    foreign key (model) references product (model)   
) engine=InnoDB default charset=utf8;

insert into product(model, manufacturer) values ("iPhone 5", "Apple");
insert into product(model, manufacturer) values ("iPhone 5s", "Apple");
insert into product(model, manufacturer) values ("iPhone 7", "Apple");
insert into product(model, manufacturer) values ("iPhone 7s", "Apple");
insert into product(model, manufacturer) values ("MacBook", "Apple");
insert into product(model, manufacturer) values ("Mac mini", "Apple");
insert into product(model, manufacturer) values ("HP-PC1001", "Hewlett-Packard");
insert into product(model, manufacturer) values ("HP-PrinterVAC1000", "Hewlett-Packard");
insert into product(model, manufacturer) values ("HP-PrinterVAC2000", "Hewlett-Packard");
insert into product(model, manufacturer) values ("HP-PrinterVAC3000", "Hewlett-Packard");
insert into product(model, manufacturer) values ("C1500", "Epson");
insert into product(model, manufacturer) values ("FX-2017", "Canon");
insert into product(model, manufacturer) values ("Samsung Galaxy S5", "Samsung");
insert into product(model, manufacturer) values ("Samsung Galaxy S6", "Samsung");
insert into product(model, manufacturer) values ("Samsung Galaxy S7", "Samsung");
insert into product(model, manufacturer) values ("Nokia L1", "Nokia");
insert into product(model, manufacturer) values ("Nokia 1000", "Nokia");
insert into product(model, manufacturer) values ("F-1", "Farmoza");
insert into product(model, manufacturer) values ("F-100", "Farmoza");
insert into product(model, manufacturer) values ("Corsair SuperPC", "Dell");

insert into pc(model, ram_size, hdd_size, cd, price) values ("MacBook", 2048, 512.5, "x48", 812.75);
insert into pc(model, ram_size, hdd_size, cd, price) values ("Mac mini", 1024, 256.3, "x48", 516.12);
insert into pc(model, ram_size, hdd_size, cd, price) values ("HP-PC1001", 2048, 512.5, "x64", 312);
insert into pc(model, ram_size, hdd_size, cd, price) values ("F-1", 512, 128.3, "x12", 123.2);
insert into pc(model, ram_size, hdd_size, cd, price) values ("F-100", 1024, 256.5, "x48", 399.9);
insert into pc(model, ram_size, hdd_size, cd, price) values ("Corsair SuperPC", 4096, 1024.8, "x64", 1013.6);

insert into phone(model, ram_size, hdd_size, screen_size, price) values ("iPhone 5s", 256, 8.6, 14, 333.5);
insert into phone(model, ram_size, hdd_size, screen_size, price) values ("iPhone 5", 512, 16, 17, 508.2);
insert into phone(model, ram_size, hdd_size, screen_size, price) values ("iPhone 7", 1024, 32.3, 20, 612);
insert into phone(model, ram_size, hdd_size, screen_size, price) values ("iPhone 7s", 2048, 32.3, 14, 612);
insert into phone(model, ram_size, hdd_size, screen_size, price) values ("Samsung Galaxy S5", 256, 16.1, 14, 212.2);
insert into phone(model, ram_size, hdd_size, screen_size, price) values ("Samsung Galaxy S6", 512, 32.1, 16, 410);
insert into phone(model, ram_size, hdd_size, screen_size, price) values ("Samsung Galaxy S7", 1024, 32.1, 20, 515.7);
insert into phone(model, ram_size, hdd_size, screen_size, price) values ("Nokia L1", 256, 8.2, 14, 156.9);
insert into phone(model, ram_size, hdd_size, screen_size, price) values ("Nokia 1000", 1024, 32.3, 20, 612);

insert into printer(model, color, type, price) values ("C1500", "white", "Matrix", 98.2);
insert into printer(model, color, type, price) values ("HP-PrinterVAC1000", "white", "Matrix", 102.0);
insert into printer(model, color, type, price) values ("HP-PrinterVAC2000", "black", "Jet", 215.4);
insert into printer(model, color, type, price) values ("HP-PrinterVAC3000", "black", "Laser", 358.12);
insert into printer(model, color, type, price) values ("FX-2017", "white", "Laser", 502.48);


