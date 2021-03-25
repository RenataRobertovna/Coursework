create table Steward
(
    ID_steward    int  not null comment 'Уникальный идентификатор бортпроводника',
    Full_name     text not null comment 'Ф.И.О. бортпроводника',
    Date_of_birth date not null comment 'Дата рождения',
    Passport      text not null comment 'Серия и номер паспорта',
    Address       text not null comment 'Адрес проживания',
    Route_ID      int  not null comment 'Идентификатор маршрута для данной таблицы',
    constraint Steward_ID_steward_uindex
        unique (ID_steward),
    constraint Steward_Route_ID_route_fk
        foreign key (Route_ID) references Route (ID_route)
)
    comment 'Таблица "Бортпроводника"';

alter table Steward
    add primary key (ID_steward);