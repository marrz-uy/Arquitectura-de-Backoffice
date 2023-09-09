#!/bin/bash

# Función para manejar errores 
handle_error() {
  echo "Hubo un error al ejecutar el último comando: $1" 
  exit 1
}

chmod o+w ./storage/ -R || handle_error 'chmod o+w'

php artisan optimize

php artisan key:generate || handle_error 'php artisan key:generate'

sleep 2

php artisan optimize || handle_error 'php artisan optimize' 

./optimize.sh || handle_error 'Ejecutar optimize.sh'
