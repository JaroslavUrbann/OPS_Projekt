#!/bin/sh
mysql --user root --password='root' << SQL >> session.log 2>&1

CREATE TABLE Users(
    id int auto_increment primary key
    name text null
)


commit;
quit