#!/bin/bash

pass=`grep "password" /var/log/mysqld.log | grep "root@localhost" | awk '{print $NF}'`

`mysqladmin -uroot -p${pass} password ${1}`
