#!/bin/bash

php artisan optimize
php artisan queue:work

