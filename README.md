# RetroPie-config-management-script
save, load and compare Configuration file sets


The RPConfig.sh script in /opt/retropie/configs/ can be used to save, load and compare Configuration file sets. It is advised to use this utility to save a working configuration before updating or making changes to the system files. Use the compare flag to see new changes to files after an update.

Installation:
1. SSH to Pi
2. cd /opt/retropie/configs/
2. git clone https://github.com/dm303102/RetroPie-config-management-script.git

Usage:

    #Backup current Retropie configuration:
    sudo ./RPConfig.sh -s
    
    #Copy backed up Retropie configuration to current install:
    sudo ./RPConfig.sh -r
    
    
    
    

Run options are:

-s Store current RetroPie configuration

-r Read stored configuration to current RetroPie install(Overwrite prompt will come up)

-c Compare stored configuration and current RetroPie install configuration files

-x Extract current archived config

-a Archive current stored RetroPie config
