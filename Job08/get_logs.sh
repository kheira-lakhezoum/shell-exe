last |wc -l > number_connection-`date +%d-%m-%Y-%H-%M`.txt

tar -cvf "number_connection-`date +%d-%m-%Y-%H-%M`.tar" "number_connection-`date +%d-%m-%Y-%H-%M`.txt"

mv "number_connection-`date +%d-%m-%Y-%H-%M`.tar" /mnt/c/Users/Keira/Documents/shell-exe/Job08/Backup
