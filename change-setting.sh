#!/bin/bash
PS3='Please enter your choice: '
options=("settings_home" "settings_work" "quit")
select opt in "${options[@]}"
do
    case $opt in
        "settings_home")
        ln -sf settings_home.xml settings.xml
            echo "change to settings_home!"
            ;;
        "settings_work")
        ln -sf settings_work.xml settings.xml
            echo "change to settings_work!"
            ;;
        "quit")
            break
            ;;
        *) echo invalid option;;
    esac
done