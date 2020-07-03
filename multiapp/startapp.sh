#!/bin/bash

if [  $web == 1  ]
then
  cp -rvf  /website/app1/*   /var/www/html/
  httpd -DFOREGROUND

elif  [  $web == 2  ]
then
  cp -rvf  /website/app2/*   /var/www/html/
  httpd -DFOREGROUND

elif  [  $web == 3  ]
then
  cp -rvf  /website/app3/*   /var/www/html/
  httpd -DFOREGROUND

else 
    echo   "this is an error page" >/var/www/html/index.html
    httpd -DFOREGROUND

fi 
