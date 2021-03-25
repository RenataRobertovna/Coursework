create table Pilot
(
    ID_pilot      int  not null comment 'Уникальный идентификатор пилота',
    Full_name     text not null comment 'Ф.И.О. пилота',
    Date_of_birth date not null comment 'Дата рождения',
    Pasport       text not null comment 'Серия и номер паспорта пилота',
    Route_ID      int  not null comment 'Идентификатор маршрута для пилота',
    constraint Pilot_ID_pilort_uindex
        unique (ID_pilot),
    constraint Pilot_Route_ID_route_fk
        foreign key (Route_ID) references Route (ID_route)
)
    comment 'Таблица "Пилот"';

alter table Pilot
    add primary key (ID_pilot);