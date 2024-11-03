
sudo apt update 
sudo apt upgrade -y 
sudo timedatectl set-timezone "Asia/Kolkata" 
sudo apt install neofetch -y 
sudo apt install nano -y 
sudo apt install ufw -y 
sudo apt install net-tools 
sudo apt install htop 

sudo apt install docker.io -y 
sudo chmod 666 /var/run/docker.sock 
docker pull portainer/portainer-ce:2.9.3
sudo apt install docker.io -y 
sudo chmod 666 /var/run/docker.sock 
docker ps
docker run -d -p 9000:9000 --name portainer --restart=always \
-v /var/run/docker.sock:/var/run/docker.sock \
-v portainer_data:/data \
portainer/portainer-ce:2.9.3
docker restart portainer 

docker pull filebrowser/filebrowser 
docker volume create filebrowser_data 
docker run -d \
  --name=filebrowser \
  --restart=unless-stopped \
  -p 8080:80 \
  -v /:/srv \
  filebrowser/filebrowser 

docker ps 

#!/bin/bash

# Get the IP address
ip_address=$(hostname -I | awk '{print $1}')

# ANSI escape sequences for colors
white='\033[0m'         # White
light_blue='\033[1;36m' # Light blue
dark_blue='\033[1;34m'  # Dark blue

# Function to print a line of hyphens
print_hyphens() {
    printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
}

# Print the boxed content
print_hyphens
echo -e "${white}Your IP Address is : ${ip_address}${white}"
echo -e "${light_blue}Portainer is accessible at http://${ip_address}:9000${white}"
echo -e "${dark_blue}File Browser is accessible at http://${ip_address}:8080${white}"
print_hyphens

echo -e '\e[1;32mInstallation Completed Successfully!\e[0m'

echo -e "Developed by \e[1mTech Team, Navisto : \e[0mDarshan Malagimani, Ajay Shanbhog & Kiran Easwar :) "

#!/bin/bash

# Define your ASCII art as a multi-line string
ascii_art=$(cat << "EOF"
                                                
                        ::                        
                      .*%%*:                      
                    .*%%%%%%*:                    
                  .+%%%%%%%%%%*:                  
                  -#%%%%%%%%%%%% .                
               -*.=:=%%%%%%%%%%%.+-.              
             -***.++=:+%%%%%%%%%.+++-.            
            -****.++++-:*%%%%%%%.+++++ :          
         =%:-:=**.+++++=--#%%%%%.+++++.%*:        
       -#%%:=+-:=.+++++++=:=%%%%.+++++.%%%*.      
     -#%%%%:=++=- =++++++++=:+%%.+++++.%%%%%*.    
    =%%%%%%:=+++=.=:=++++++++=:*.+++++.%%%%%%%-   
     .*%%%%:=+++=:%%=:=++++++++- =++++.%%%%%+.    
       :*%%:=+++=:%%%#--=+++++++.-:=++.%%%+.      
         :#:=+++=:%%%%%*:-++++++.**-:=.%+.        
            =+++=:%%%%%%%+:=++++.***+: .          
             :=+=:%%%%%%%%%+:=++.***=.            
               :=:%%%%%%%%%%%=:=.*=.              
                 .%%%%%%%%%%%%#- .                
                   +%%%%%%%%%%+.                  
                    .+%%%%%%+.                    
                      .*%%+.                      
                        :.                        
                                                
EOF
)

# Print the ASCII art
echo "$ascii_art"

echo -e "\e[1;97mNavisto Cloud \e[1;34mPreserving the Future, Today\e[0m"
