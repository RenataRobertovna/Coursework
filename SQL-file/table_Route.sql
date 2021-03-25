create table Route
(
    ID_route          int      not null comment 'Уникальный идентификатор рейса',
    Flight_number     text     not null comment 'Номер рейса',
    Distination       text     not null comment 'Пункт назначения',
    Departure_country text     not null comment 'Страна вылета',
    Departure_city    text     not null comment 'Город вылета',
    Distance          double   not null comment 'Расстояние между населенными пунктами',
    Arrival_contry    text     not null comment 'Страна прилета',
    Arrival_city      text     not null comment 'Город прилета',
    Timezone          time     not null comment 'Часовой пояс',
    Departure_time    datetime not null comment 'Время вылета',
    Arrival_time      datetime not null comment 'Время прилета',
    Airplane_ID       int      not null comment 'Идентификатор марки самолета для данного маршрута/рейса',
    `Airport name`    text     not null comment 'Название аэропорта',
    constraint Route_ID_route_uindex
        unique (ID_route),
    constraint Route_Airplane_ID_airplane_fk
        foreign key (Airplane_ID) references Airplane (ID_airplane)
)
    comment 'Таблица "Маршут/Рейс"';

alter table Route
    add primary key (ID_route);