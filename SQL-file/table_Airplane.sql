create table Airplane
(
    ID_airplane     int        not null comment 'Уникальный идентификатор воздушного транспортного средства (самолета)',
    Airplane_number text       not null comment 'Номер воздушного ТС',
    Model           int        not null comment 'Модель воздушного ТС',
    Number_of_seat  tinyint(1) not null comment 'Количество посадочных мест',
    constraint Airplane_ID_airplane_uindex
        unique (ID_airplane)
)
    comment 'Таблица "Самолет"';

alter table Airplane
    add primary key (ID_airplane);
