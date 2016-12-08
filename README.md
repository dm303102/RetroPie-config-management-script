# RetroPie-config-management-script
save, load and compare Configuration file sets


The RPConfig.sh script in /opt/retropie/configs/ can be used to save, load and compare Configuration file sets. It is advised to use this utility to save a working configuration before updating or making changes to the system files. Use the compare flag to see new changes to files after an update. This differs from Backing up the image show here, which will restore a complete backed up image of the operating system.

Usage:
ftp or ssh RPConfig.sh to /opt/retropie/configs/
cd /opt/retropie/configs/
sudo ./RPConfig.sh <run option>


Run options are:
-s Store current RetroPie configuration
-r Read stored configuration to current RetroPie install
-c Compare stored configuration and current RetroPie install configuration files
-x Extract current archived config
-a Archive current stored RetroPie config


Contact Email
Dev303102@gmail.com
