create table Ticket
(
    ID_ticket     int  not null comment 'Уникальный идентификатор билета',
    Full_name     text not null comment 'Ф.И.О.пассажира',
    Passport      text not null comment 'Серия и номер паспорта',
    Privilege     text null comment 'Льготы пассажира',
    Seat          int  not null comment 'Посадочное место',
    Gate          int  null comment 'Выход',
    Class         text null comment 'Класс обслуживания',
    Ticket_number int  not null comment 'Номер билета',
    Cost          int  null comment 'Цена билета',
    Route_ID      int  not null comment 'Ключ к таблицы Маршрута',
    constraint Tickets_ID_ticket_uindex
        unique (ID_ticket),
    constraint Ticket_Route_ID_route_fk
        foreign key (Route_ID) references Route (ID_route)
)
    comment 'Таблица "Билет"';

alter table Ticket
    add primary key (ID_ticket);