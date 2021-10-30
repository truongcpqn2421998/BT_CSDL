create database tourManager;
use tourManager;
create table city
(
    id       int,
    nameCity varchar(20),
    primary key (id)
);
create table customer
(
    id          int,
    name        varchar(20),
    code        char(10),
    dateOfBirth date,
    cityID      int,
    primary key (id),
    foreign key (cityID) references city (id)
);
create table tourClass
(
    id       int,
    class    varchar(10),
    nameTour varchar(20),
    primary key (id)
);
create table DiemDenDuLich
(
    id          int,
    name        varchar(20),
    description varchar(50),
    avgPrice    int,
    cityID      int,
    primary key (id),
    foreign key (cityID) references city (id)
);
create table tour
(
    id       int,
    tourID   int,
    Class    int,
    dayStart date,
    dayEnd   date,
    primary key (id),
    foreign key (Class) references tourclass (id)
);
create table bill
(
    id          int,
    tour_id     int,
    customer_id int,
    status      varchar(10),
    primary key (id),
    foreign key (tour_id) references tour (id),
    foreign key (customer_id) references customer (id)
);
select C.nameCity, count(t.id)
from city C
         left join customer c2 on C.id = c2.cityID
         left join bill b on c2.id = b.customer_id
         left join tour t on b.tour_id = t.id
group by (C.nameCity);

select *
from tour
where MONTH(dayStart) >= 3
  and YEAR(dayStart) >= 2020;

select *
from tour
where MONTH(dayEnd)>=4
and YEAR(dayEnd)>=2020;