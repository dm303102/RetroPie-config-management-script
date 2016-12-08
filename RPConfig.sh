#!/bin/bash

Check_Config() 
{
echo "Checking $Store_Dir integrity..." 
if [ ! -d $Store_Dir/BIOS ];then
	echo "Invalid $Store_Dir configuration"
	exit
elif [ ! -d $Store_Dir/configs/all ];then
	echo "Invalid $Store_Dir configuration"
	exit
elif [ ! -d $Store_Dir/configs/alljoy ];then
	echo "Invalid $Store_Dir configuration"
	exit
elif [ ! -d $Store_Dir/configs/dc ];then
	echo "Invalid $Store_Dir configuration"
	exit
elif [ ! -d $Store_Dir/configs/mame ];then
	echo "Invalid $Store_Dir configuration"
	exit
elif [ ! -d $Store_Dir/configs/n64 ];then
	echo "Invalid $Store_Dir configuration"
	exit
elif [ ! -d $Store_Dir/configs/psx ];then
	echo "Invalid $Store_Dir configuration"
	exit

elif [ ! -d $Store_Dir/configs/psp ];then
	echo "Invalid $Store_Dir configuration"
	exit
elif [ ! -d $Store_Dir/configs/atari800 ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi

echo "Checking Files..."
file=$Store_Dir/mupenGameList.txt
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

file=$Store_Dir/mupen64plus.sh
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exitfi	
file=$Store_Dir/neogeo.zip.neogeo
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	
file=$Store_Dir/neogeo.zip.mame
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	
file=$Store_Dir/gngeorc
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

echo "..." 
file=$Store_Dir/configs/psp/controls.ini
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

file=$Store_Dir/configs/psp/ppsspp.ini
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

#for i in `ls $Store_Dir/BIOS`
#	cp $i /home/pi/RetroPie/BIOS/

file=$Store_Dir/configs/psx/retroarch.cfg
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

file=$Store_Dir/configs/n64/retroarch.cfg
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

echo "..." 
file=$Store_Dir/configs/n64/videocore.conf
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

file=$Store_Dir/configs/n64/InputAutoCfg.ini
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

file=$Store_Dir/configs/n64/mupen64plus.ini
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

file=$Store_Dir/configs/n64/gles2n64.conf
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

echo "..." 
file=$Store_Dir/configs/n64/mupen64plus.cfg
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

file=$Store_Dir/configs/mame/advmame-0.94.0.rc
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

file=$Store_Dir/configs/mame/advmame-1.4.rc
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

file=$Store_Dir/configs/dc/retroarch.cfg
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

echo "..." 
file=$Store_Dir/configs/dc/emulators.cfg
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

file=$Store_Dir/configs/dc/emu.cfg
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

file=$Store_Dir/configs/all/retroarch.cfg
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

file=$Store_Dir/configs/all/retroarch-core-options.cfg
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

echo "..." 
file=$Store_Dir/configs/all/autoconf.cfg
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

file="$Store_Dir/configs/alljoy/PLAYSTATION(R)3Controller.cfg"
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

file=$Store_Dir/configs/alljoy/SHANWANPS3GamePad.cfg
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

file=$Store_Dir/configs/all/es_systems.cfg
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	


file=$Store_Dir/configs/atari800/emulators.cfg.800
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

echo "..." 
file=$Store_Dir/configs/atari800/atari800
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

file=$Store_Dir/configs/atari800/atari5200.py
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

file=$Store_Dir/configs/atari800/.atari800.cfg
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi	

file=$Store_Dir/configs/atari800/emulators.cfg.5200
if [ ! -f $file ];then
	echo "Invalid $Store_Dir configuration"
	exit
fi
echo "Stored configuration validated successfully"
}

Set_Config()
{
echo "Overwrite current RetroPie configurations with $Store_Dir!!!!"
read option
if [ "$option" = "Y" ] || [ "$option" = "y" ]; then
	Check_Config
	cp $Store_Dir/configs/all/es_systems.cfg /etc/emulationstation/es_systems.cfg 
	cp $Store_Dir/configs/all/retroarch.cfg /opt/retropie/configs/all/
	cp $Store_Dir/configs/all/retroarch-core-options.cfg /opt/retropie/configs/all/
	cp $Store_Dir/configs/all/autoconf.cfg /opt/retropie/configs/all/autoconf.cfg 
	
	cp $Store_Dir/configs/alljoy/* /opt/retropie/configs/all/retroarch-joypads/
	
	cp $Store_Dir/configs/dc/retroarch.cfg /opt/retropie/configs/dreamcast/retroarch.cfg 
	cp $Store_Dir/configs/dc/emulators.cfg /opt/retropie/configs/dreamcast/emulators.cfg 
	cp $Store_Dir/configs/dc/emu.cfg /opt/retropie/configs/dreamcast/emu.cfg 
	
	cp $Store_Dir/configs/mame/advmame-0.94.0.rc /opt/retropie/configs/mame-advmame/
	cp $Store_Dir/configs/mame/advmame-1.4.rc /opt/retropie/configs/mame-advmame/
	
	cp $Store_Dir/configs/n64/retroarch.cfg /opt/retropie/configs/n64/retroarch.cfg 
	cp $Store_Dir/configs/n64/videocore.conf /opt/retropie/configs/n64/videocore.conf 
	cp $Store_Dir/configs/n64/InputAutoCfg.ini /opt/retropie/configs/n64/InputAutoCfg.ini 
	cp $Store_Dir/configs/n64/mupen64plus.ini /opt/retropie/configs/n64/mupen64plus.ini 
	cp $Store_Dir/configs/n64/gles2n64.conf /opt/retropie/configs/n64/gles2n64.conf 
	cp $Store_Dir/configs/n64/mupen64plus.cfg /opt/retropie/configs/n64/mupen64plus.cfg 

	
	cp $Store_Dir/configs/psx/retroarch.cfg /opt/retropie/configs/psx/retroarch.cfg 
	
	cp $Store_Dir/configs/psp/controls.ini /opt/retropie/configs/psp/SYSTEM/controls.ini 
	cp $Store_Dir/configs/psp/ppsspp.ini /opt/retropie/configs/psp/SYSTEM/ppsspp.ini
	
	cp $Store_Dir/mupenGameList.txt /home/pi/RetroPie/roms/n64/mupenGameList.txt 
	cp $Store_Dir/neogeo.zip.neogeo /home/pi/RetroPie/roms/neogeo/neogeo.zip 
	cp $Store_Dir/neogeo.zip.mame /home/pi/RetroPie/roms/mame-mame4all/neogeo.zip 
	cp $Store_Dir/mupen64plus.sh /opt/retropie/emulators/mupen64plus/bin/mupen64plus.sh 
	cp $Store_Dir/gngeorc /opt/retropie/configs/neogeo/gngeorc 
	
	cp $Store_Dir/configs/atari800/emulators.cfg.800 /opt/retropie/configs/atari800/emulators.cfg 
	cp $Store_Dir/configs/atari800/atari800 /opt/retropie/emulators/atari800/bin/atari800
	cp $Store_Dir/configs/atari800/atari5200.py /opt/retropie/emulators/atari800/bin/atari5200.py 
	cp $Store_Dir/configs/atari800/.atari800.cfg /home/pi/.atari800.cfg
	cp $Store_Dir/configs/atari800/emulators.cfg.5200 /opt/retropie/configs/atari5200/emulators.cfg

	echo "$Store_Dir successfully written to System configuration"
else
	exit
fi
}

Get_Config()
{
if [[ -d $Store_Dir ]]; then
	echo "Overwrite $Store_Dir with current RetroPie configurations?"
	read option
	if [ "$option" = "Y" ] || [ "$option" = "y" ]; then
		rm -rf $Store_Dir
		mkdir $Store_Dir
	else
		exit
	fi
fi

mkdir $Store_Dir/BIOS
#for i in `ls /home/pi/RetroPie/BIOS`; do
cp -R /home/pi/RetroPie/BIOS/* $Store_Dir/BIOS/
#done

mkdir $Store_Dir/configs
mkdir $Store_Dir/configs/all
cp /etc/emulationstation/es_systems.cfg $Store_Dir/configs/all
cp /opt/retropie/configs/all/retroarch.cfg $Store_Dir/configs/all
cp /opt/retropie/configs/all/retroarch-core-options.cfg $Store_Dir/configs/all
cp /opt/retropie/configs/all/autoconf.cfg $Store_Dir/configs/all

mkdir $Store_Dir/configs/alljoy
cp /opt/retropie/configs/all/retroarch-joypads/* $Store_Dir/configs/alljoy/

mkdir $Store_Dir/configs/dc
cp /opt/retropie/configs/dreamcast/retroarch.cfg $Store_Dir/configs/dc
cp /opt/retropie/configs/dreamcast/emulators.cfg $Store_Dir/configs/dc
cp /opt/retropie/configs/dreamcast/emu.cfg $Store_Dir/configs/dc

mkdir $Store_Dir/configs/mame
cp /opt/retropie/configs/mame-advmame/advmame-0.94.0.rc $Store_Dir/configs/mame
cp /opt/retropie/configs/mame-advmame/advmame-1.4.rc $Store_Dir/configs/mame

mkdir $Store_Dir/configs/n64
cp /opt/retropie/configs/n64/retroarch.cfg $Store_Dir/configs/n64
cp /opt/retropie/configs/n64/videocore.conf $Store_Dir/configs/n64
cp /opt/retropie/configs/n64/InputAutoCfg.ini $Store_Dir/configs/n64
cp /opt/retropie/configs/n64/mupen64plus.ini $Store_Dir/configs/n64
cp /opt/retropie/configs/n64/gles2n64.conf $Store_Dir/configs/n64
cp /opt/retropie/configs/n64/mupen64plus.cfg $Store_Dir/configs/n64

mkdir $Store_Dir/configs/psx
cp /opt/retropie/configs/psx/retroarch.cfg $Store_Dir/configs/psx

mkdir $Store_Dir/configs/psp
cp /opt/retropie/configs/psp/PSP/SYSTEM/controls.ini $Store_Dir/configs/psp
cp /opt/retropie/configs/psp/PSP/SYSTEM/ppsspp.ini $Store_Dir/configs/psp

cp /home/pi/RetroPie/roms/n64/mupenGameList.txt $Store_Dir/mupenGameList.txt
cp /home/pi/RetroPie/roms/neogeo/neogeo.zip $Store_Dir/neogeo.zip.neogeo
cp /home/pi/RetroPie/roms/mame-mame4all/neogeo.zip $Store_Dir/neogeo.zip.mame
cp /opt/retropie/emulators/mupen64plus/bin/mupen64plus.sh $Store_Dir/mupen64plus.sh
cp /opt/retropie/configs/neogeo/gngeorc $Store_Dir/

mkdir $Store_Dir/configs/atari800
cp /opt/retropie/configs/atari800/emulators.cfg $Store_Dir/configs/atari800/emulators.cfg.800
cp /opt/retropie/emulators/atari800/bin/atari800 $Store_Dir/configs/atari800/
cp /opt/retropie/emulators/atari800/bin/atari5200.py $Store_Dir/configs/atari800/
cp /home/pi/.atari800.cfg $Store_Dir/configs/atari800/.atari800.cfg
cp /opt/retropie/configs/atari5200/emulators.cfg $Store_Dir/configs/atari800/emulators.cfg.5200
}

Comp_Config()
{
Check_Config

echo "Comparing System configuration(<) with $Store_Dir(>)"
ls "/opt/retropie/configs/all/retroarch-joypads/PLAYSTATION(R)3Controller.cfg"
diff -wb "/opt/retropie/configs/all/retroarch-joypads/PLAYSTATION(R)3Controller.cfg" "$Store_Dir/configs/alljoy/PLAYSTATION(R)3Controller.cfg"
ls "/opt/retropie/configs/all/retroarch-joypads/SHANWANPS3GamePad.cfg" 
diff -wb "/opt/retropie/configs/all/retroarch-joypads/SHANWANPS3GamePad.cfg" "$Store_Dir/configs/alljoy/SHANWANPS3GamePad.cfg"
ls "/opt/retropie/configs/all/retroarch-joypads/USBgamepad.cfg" 
diff -wb "/opt/retropie/configs/all/retroarch-joypads/USBgamepad.cfg" "$Store_Dir/configs/alljoy/USBgamepad.cfg"
ls /etc/emulationstation/es_systems.cfg 
diff -wb /etc/emulationstation/es_systems.cfg $Store_Dir/configs/all/es_systems.cfg
ls /opt/retropie/configs/all/retroarch.cfg 
diff -wb /opt/retropie/configs/all/retroarch.cfg $Store_Dir/configs/all/retroarch.cfg
ls /opt/retropie/configs/all/retroarch-core-options.cfg 
diff -wb /opt/retropie/configs/all/retroarch-core-options.cfg $Store_Dir/configs/all/retroarch-core-options.cfg 
ls /opt/retropie/configs/all/autoconf.cfg 
diff -wb /opt/retropie/configs/all/autoconf.cfg $Store_Dir/configs/all/autoconf.cfg
ls /opt/retropie/configs/dreamcast/retroarch.cfg 
diff -wb  /opt/retropie/configs/dreamcast/retroarch.cfg $Store_Dir/configs/dc/retroarch.cfg
ls /opt/retropie/configs/dreamcast/emulators.cfg 
diff -wb  /opt/retropie/configs/dreamcast/emulators.cfg $Store_Dir/configs/dc/emulators.cfg 
ls /opt/retropie/configs/dreamcast/emu.cfg 
diff -wb  /opt/retropie/configs/dreamcast/emu.cfg $Store_Dir/configs/dc/emu.cfg 
ls /opt/retropie/configs/mame-advmame/advmame-0.94.0.rc 
diff -wb  /opt/retropie/configs/mame-advmame/advmame-0.94.0.rc $Store_Dir/configs/mame/advmame-0.94.0.rc 
ls /opt/retropie/configs/mame-advmame/advmame-1.4.rc 
diff -wb  /opt/retropie/configs/mame-advmame/advmame-1.4.rc $Store_Dir/configs/mame/advmame-1.4.rc 
ls /opt/retropie/configs/n64/retroarch.cfg 
diff -wb  /opt/retropie/configs/n64/retroarch.cfg $Store_Dir/configs/n64/retroarch.cfg 
ls /opt/retropie/configs/n64/videocore.conf 
diff -wb  /opt/retropie/configs/n64/videocore.conf $Store_Dir/configs/n64/videocore.conf 
ls /opt/retropie/configs/n64/InputAutoCfg.ini 
diff -wb  /opt/retropie/configs/n64/InputAutoCfg.ini $Store_Dir/configs/n64/InputAutoCfg.ini 
ls /opt/retropie/configs/n64/mupen64plus.ini 
diff -wb  /opt/retropie/configs/n64/mupen64plus.ini $Store_Dir/configs/n64/mupen64plus.ini 
ls /opt/retropie/configs/n64/gles2n64.conf 
diff -wb  /opt/retropie/configs/n64/gles2n64.conf $Store_Dir/configs/n64/gles2n64.conf 
ls /opt/retropie/configs/n64/mupen64plus.cfg 
diff -wb  /opt/retropie/configs/n64/mupen64plus.cfg $Store_Dir/configs/n64/mupen64plus.cfg 
ls /opt/retropie/configs/psx/retroarch.cfg 
diff -wb  /opt/retropie/configs/psx/retroarch.cfg $Store_Dir/configs/psx/retroarch.cfg 
ls /opt/retropie/configs/psp/PSP/SYSTEM/controls.ini 
diff -wb  /opt/retropie/configs/psp/PSP/SYSTEM/controls.ini $Store_Dir/configs/psp/controls.ini 
ls /opt/retropie/configs/psp/PSP/SYSTEM/ppsspp.ini 
diff -wb  /opt/retropie/configs/psp/PSP/SYSTEM/ppsspp.ini $Store_Dir/configs/psp/ppsspp.ini 
ls /home/pi/RetroPie/roms/n64/mupenGameList.txt 
diff -wb  /home/pi/RetroPie/roms/n64/mupenGameList.txt $Store_Dir/mupenGameList.txt
ls /home/pi/RetroPie/roms/neogeo/neogeo.zip 
diff -wb  /home/pi/RetroPie/roms/neogeo/neogeo.zip $Store_Dir/neogeo.zip.neogeo
ls /home/pi/RetroPie/roms/mame-mame4all/neogeo.zip 
diff -wb  /home/pi/RetroPie/roms/mame-mame4all/neogeo.zip $Store_Dir/neogeo.zip.mame
ls /opt/retropie/emulators/mupen64plus/bin/mupen64plus.sh 
diff -wb  /opt/retropie/emulators/mupen64plus/bin/mupen64plus.sh $Store_Dir/mupen64plus.sh
ls /opt/retropie/configs/neogeo/gngeorc 
diff -wb  /opt/retropie/configs/neogeo/gngeorc $Store_Dir/gngeorc 
ls /opt/retropie/configs/atari800/emulators.cfg 
diff -wb  /opt/retropie/configs/atari800/emulators.cfg $Store_Dir/configs/atari800/emulators.cfg.800 
ls /opt/retropie/emulators/atari800/bin/atari800 
diff -wb  /opt/retropie/emulators/atari800/bin/atari800 $Store_Dir/configs/atari800/atari800 
ls /opt/retropie/emulators/atari800/bin/atari5200.py 
diff -wb  /opt/retropie/emulators/atari800/bin/atari5200.py $Store_Dir/configs/atari800/atari5200.py 
ls /home/pi/.atari800.cfg 
diff -wb  /home/pi/.atari800.cfg $Store_Dir/configs/atari800/.atari800.cfg 
ls /opt/retropie/configs/atari5200/emulators.cfg
diff -wb  /opt/retropie/configs/atari5200/emulators.cfg $Store_Dir/configs/atari800/emulators.cfg.5200 
echo "Comparison done(no differences if empty output)"
}

Store_Dir="/opt/retropie/configs/Custom"

if [ -n "$1" ]; then
	if [ "$1" = "-S" ] || [ "$1" = "-s" ];then
		echo "Store RetroPie config to ${Store_Dir} (y/n)?"
		read option
		if [ "$option" = "Y" ] || [ "$option" = "y" ]; then
			Get_Config
		else
			exit
		fi
	elif [ "$1" = "-r" ] || [ "$1" = "-R" ];then
                echo "Read RetroPie config from $Store_Dir (y/n)?"
                read option
                if [ "$option" = "Y" ] || [ "$option" = "y" ]; then
                        Set_Config
                else
                        exit
		fi
        elif [ "$1" = "-c" ] || [ "$1" = "-C" ];then
                #echo "Comparing current Retropie config with $Store_Dir ..."
                Comp_Config
        elif [ "$1" = "-e" ] || [ "$1" = "-E" ];then
                echo "Extracting Retropie archived config in $Store_Dir ..."
                tar -xzvf RPConfig.tar.gz
        elif [ "$1" = "-a" ] || [ "$1" = "-A" ];then
                #echo "Compressing current Retropie config in $Store_Dir ..."
		tar -czvf RPConfig.tar.gz $Store_Dir
	else
		echo "Invalid command line argument"
		exit
	fi
else
	echo "Script takes one parameter. Exiting..."
	exit
fi
exit


