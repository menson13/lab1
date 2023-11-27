#!/bin/bash

echo "Программа для работы с паролями"
echo "Программа реализации блокировки и разблокировки пользователя"
echo "Подойницын Кирилл"

while true; do
	echo "Выберите действие:"
	echo "1. Заблокировать пользователя"
	echo "2. Разблокировать пользователя"
	echo "Введите номер действия: " 
	read action

	case $action in
    1)
        echo "Введите имя пользователя, которого нужно заблокировать: " 
        read username
        passwd -l "$username" 
        echo "Пользователь $username заблокирован"
        ;;
    2)
        echo "Введите имя пользователя, которого нужно разблокировать: " 
        read username
        passwd -u "$username"
        echo "Пользователь $username разблокирован"
        ;;
    *)
        echo "Неверный выбор!"
        ;;
	esac

	echo "Вы хотите завершить программу? (Y/N): "
	read choice
	if [ "$choice" == "Y" ]; then break
	fi
done
