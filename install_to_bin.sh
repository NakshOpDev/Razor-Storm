#!/bin/bash
echo "[i] We will now install Razor-Storm to your bin path..."
if [ -d "/usr/share/Razor-Storm" ] ; then
    echo "[i] Found an old version of Razor-Storm, proceeding to update..."
    echo "[i] Backing up old verison."
    if [ -d "/usr/share/Razor-Storm/Backup" ] ; then
        sudo mv /usr/share/Razor-Storm/Backup ./Backup
    else
        mkdir ./Backup
    fi
    name="./Backup/Razor-Storm"
    if [ -d $name ] ; then
        i=0
        while [ -d "$name.bak$i" ] ; do
            let i++
        done
            name="$name.bak$i"
    fi
    sudo mv /usr/share/Razor-Storm $name
    mv ./Backup ./Razor-Storm/
    sudo cp -ar ./Razor-Storm /usr/share/
    echo "[i] Installation sucessful."
    echo "[i] Making Razor-Storm executable..."
    sudo mv /usr/share/Razor-Storm/main.py /usr/share/Razor-Storm/rst
    sudo chmod +x /usr/share/Razor-Storm/rst
    sudo ln -s /usr/share/Razor-Storm/rst /usr/bin/rst || echo "[i] Link already seems to exist."
else
    sudo cp -ar ./Razor-Storm /usr/share/
    echo "[i] Installation sucessful."
    echo "[i] Making Razor-Storm executable..."
    sudo mv /usr/share/Razor-Storm/main.py /usr/share/Razor-Storm/rst
    sudo chmod +x /usr/share/Razor-Storm/rst
    sudo ln -s /usr/share/Razor-Storm/rst /usr/bin/rst || echo "[i] Link already seems to exist."
fi

echo "[i] You can delete the Razor-Storm folder now."
echo "----------------------------------------"
echo "[i] Run 'sudo rst' to start Razor-Storm."
echo "----------------------------------------"
exit 0
