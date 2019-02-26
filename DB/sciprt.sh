#!/bin/sh
mysql --user root --password='root' 

CREATE TABLE Users(
    id int auto_increment primary key
    name text null
)


commit;
quit
