USE apex_db;

drop table if exists authors;
drop table if exists quotes;

create table if not exists authors
(
    id         INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name varchar(255) not null,
    last_name  varchar(255) not null,
    primary key (id)
);

CREATE TABLE IF NOT EXISTS quotes
(
    id        INT UNSIGNED NOT NULL AUTO_INCREMENT,
    author_id int unsigned not null,
    content   VARCHAR(240) NOT NULL,
    PRIMARY KEY (id),
    foreign key (author_id) references authors (id)
);