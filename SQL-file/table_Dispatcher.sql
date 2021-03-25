create table Dispatcher
(
    ID_dispatcher int  not null comment 'Уникальный идентификатор диспечера',
    Full_name     text not null comment 'Ф.И.О. диспечера	',
    Date_of_birth date not null comment 'Дата рождения',
    Address       text not null comment 'Адрес проживания диспечера',
    Phone_number  int  not null comment 'Номер телефона',
    Route_Id      int  not null,
    constraint Dispatcher_ID_dispatcher_uindex
        unique (ID_dispatcher),
    constraint Dispatcher_Route_ID_route_fk
        foreign key (Route_Id) references Route (ID_route)
)
    comment 'Таблица "Диспечер"';

alter table Dispatcher
    add primary key (ID_dispatcher);