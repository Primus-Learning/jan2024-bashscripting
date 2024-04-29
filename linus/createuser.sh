#!/bin/bash

create(){
aws iam create-user --user-name $1
}
createuser=0
echo "Enter a username to create"
read name

for user in $(aws iam list-users | jq .Users[].UserName | sed 's#"##g')
do
        if [ $user = $name ]
        then
               echo "username exist"
        createuser=1
        fi
done
echo $createuser
if [ $createuser -eq 0 ]
        then
            echo "creating user $name..."
            create $name
            echo "user $name has been created"
fi

