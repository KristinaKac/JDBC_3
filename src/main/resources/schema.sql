create table CUSTOMERS (
                           id int primary key auto_increment,
                           name varchar(255),
                           surname varchar(255),
                           age int check ( age > 0 AND age < 100),
                           phone_number varchar(20)
);

create table ORDERS (
                        id int primary key auto_increment,
                        date timestamp not null default now(),
                        customer_id int,
                        product_name varchar(255),
                        amount int,
                        foreign key (customer_id) references CUSTOMERS (id)
);

INSERT INTO CUSTOMERS (name, surname, age, phone_number)
VALUES ('Ivan', 'Belov', 22, '89995556677'),
       ('Masha', 'Kruglova', 32, '89995556678'),
       ('Katya', 'Ivanova', 40, '89995556679'),
       ('Sonya', 'Chernova', 18, '89995556670'),
       ('Kolya', 'Frolov', 24, '89995556671'),
       ('Ivan', 'Chernykh', 28, '89995556672'),
       ('Alexey', 'Prokhorov', 45, '89995556673'),
       ('ALEXEY', 'Petrov', 51, '89995556674');

INSERT INTO ORDERS (customer_id, product_name, amount)
VALUES (1, 'Cheesecake', 1),
       (2, 'Cream slice cake', 3),
       (3, 'Fruitcake', 2),
       (4, 'Chocolate cake', 1),
       (5, 'Cheesecake', 1),
       (6, 'Chocolate cake', 2),
       (7, 'Lemon sorbet', 1),
       (8, 'Chiffon cake', 2);