#!/bin/bash
#Account directory is named advantech-ubuntu

PartitionPath=/dev/sda2
ScriptPath=test.sh
mount $PartitionPath /mnt
ScriptPartition=/mnt

if [ ! -f $ScriptPartition/$ScriptPath ]; then
    echo "Error: $ScriptPartition/$ScriptPath not found..."
    echo " "
    sleep 2s
    echo "Make sure you mounted $PartitionPath to $ScriptPartition and"
    echo "added your script named $ScriptPath to $ScriptPartition."
    echo "Also make sure that your script is ONLY named $ScriptPath."
    echo " "
    echo " "
    sleep 2s
    echo "Press <Enter> to exit."
    read var

else
    echo "Launching $ScriptPath, please wait..."
    sleep 3s
    bash $ScriptPartition/$ScriptPath
fi
