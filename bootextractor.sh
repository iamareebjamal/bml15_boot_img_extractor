#!/system/bin/sh
#Boot image extractor
#by iamareebjamal
#XDA Developers 2013


#If you are seeing this, it means that 
# you want to know about what is happening
#here


# This script is originally built by me by learning
# the scripting of Linux

# The only credit goes to Ryuinferno whose
# guide made a lot clear about script

#  However, this script is totally built from ground 

# If you want to know which command backs up
# the boot.img file, then check out the command
# before "Yayy"  echo command

# However, you are not allowed to share
# this work without my permission 

# Of course  it is open sourced and you can learn
# and try and use any command you like
# but copying and editing some things and 
# sharing is not appreciated 

# Enough talks, let the script begin

echo "Boot Image Extractor"
sleep 1
echo "by IamAreebJamal"
sleep 1 
echo ""
echo ""
echo "Initial Release v02b"
 echo "" 
sleep 1 
echo "with minimal script writing"
 sleep 1 
 echo ""
 echo "" 
echo "I am a beginner at script writing"
echo "So please pardon"
sleep 2
 echo ""
echo "Please Enter your Name Below:"
read name
sleep 1
 echo "Let's start the process $name! :)" 
 id=`id`; 
id=`echo ${id#*=}`; 
id=`echo ${id%%\(*}`; 
id=`echo ${id%% *}`
if [ "$id" != "0" ] && [ "$id" != "root" ]; then
echo "Script NOT running as root $name!"
sleep 2
echo "Maybe your phone isn't rooted or SuperUser access not granted!"
sleep 2
echo "Dear $name! Please type 'su' first before running this script..."
exit
else
echo "Script Ready to continue..."
echo ""
sleep 2
fi 
echo "$name, Press enter to continue..."
read enterKey 
 echo "" 
echo "Starting Process" 
sleep 1
if [ ! "'which busybox'" ]
then
echo "Sorry, no busybox found"
 echo "" 
sleep 2
echo "Dear $name, First, install it and then proceed"
exit
else
echo "Busybox Found in system :)"
 echo "" 
sleep 2
echo "We can proceed"
sleep 2
fi
 echo ""
 echo "" 
echo "Now checking for working directories"
sleep 2
if [ -e /sdcard/iamareebjamal ]
then
 echo "Working directory already present :)"
 echo "" 
sleep 2 
else
 echo "Directories not found, creating them" 
 echo ". "
 sleep 1 
 echo ". " 
 sleep 1 
 echo ". " 
 sleep 1 
echo ". " 
sleep 2
busybox mkdir /sdcard/iamareebjamal
 echo "Directories created :) " 
fi
 echo "Checking for mod specific directories"
 sleep 1 
 echo ". " 
 echo ". " 
 sleep 1 
 echo ". "
 sleep 1 
if [ -e sdcard/iamareebjamal/boot ]
then 
 echo "Boot directory already present" 
sleep 2
else 
 echo "Boot directory not found, creating them" 
 sleep 1 
 echo ". " 
 sleep 1 
 echo ". "
sleep 2
echo "Boot directory creation in progress"
 sleep 1 
 echo "." 
 sleep 1 
 echo "." 
 sleep 1 
echo ". " 
busybox mkdir /sdcard/iamareebjamal/boot
 sleep 2 
 echo "Boot directory created :) " 
sleep 2 
fi
echo "Now, starting Real Process" 
sleep 1
 echo "."
 sleep 1 
 echo "."
 sleep 1 
 echo "."
 sleep 1
echo "Extracting boot.img"
 sleep 2
 echo " ."
 sleep 1 
 echo " ."
 sleep 1 
 echo " ." 
 sleep 1 
busybox dd if=/dev/bml7 of=/sdcard/iamareebjamal/boot/boot.img
sleep 2
 echo "Yayyy Congratulations $name" 
 sleep 2
 echo " Process Completed" 
 echo "" 
 sleep 2
 echo "Boot Image extracted to /sdcard/iamareebjamal/boot" 
echo ""
 sleep 2 
 echo ""
 echo "$name, Do you want to create a Odin Flashable tar package?" 
 sleep 1 
 echo "Enter Y for Yes and any key for No"
 sleep 1 
 echo "" 
 sleep 1 
while :; do
 echo -n "Enter desired option:" 
read opt
case $opt in
y|Y)echo "Creating Tar Package"
 busybox tar -c -f /sdcard/iamareebjamal/kernel.tar -C /sdcard/iamareebjamal/boot boot.img 
 sleep 2 
 echo "Odin Flashable Tar Created"
break;; 
*)echo "Operation cancelled" 
break;;
esac
done
 echo "" 
sleep 1
 echo ""
 sleep 2
echo "iamareebjamal #XDA Developers" 
 sleep 1
echo "Bye" 
exit
