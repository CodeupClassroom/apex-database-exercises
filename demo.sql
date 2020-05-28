USE apex_db;

drop table if exists quotes;
drop table if exists authors;

create table if not exists authors
(
    id         INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name varchar(255) not null,
    last_name  varchar(255) not null,
    unique (first_name, last_name),
    primary key (id)
);

CREATE TABLE IF NOT EXISTS quotes
(
    id        INT UNSIGNED NOT NULL AUTO_INCREMENT,
    author_id int unsigned not null,
    content   VARCHAR(240) NOT NULL unique,
    PRIMARY KEY (id),
    foreign key (author_id) references authors (id)
);