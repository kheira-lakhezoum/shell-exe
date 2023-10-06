while IFS="," read -r Id Prenom Nom Mdp Role ;

do
echo " le mot de passe de $Prenom est : $Mdp"

#pass_crypte=$(mkpasswd -m sha-512 "$Mdp")

if [ "$Role" = "Admin" ] ;

then

sudo useradd --badname -s /bin/bash -m -G sudo -p `mkpasswd "$Mdp"` "$Prenom"

#echo "$Prenom:$pass_crypte" | sudo chpasswd

else

sudo useradd --badname -s /bin/bash -m -G users -p `mkpasswd "$Mdp"` "$Prenom"

#echo "$Prenom:$pass_crypte" | sudo chpasswd

sudo usermod -aG Equipe "$Prenom"

fi

done < "Shell_Userlist.csv"

