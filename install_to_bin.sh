#!/bin/bash
echo "[i] We will now install mystic-downer to your bin path..."
if [ -d "/usr/share/mystic-downer" ] ; then
    echo "[i] Found an old version of mystic-downer, proceeding to update..."
    echo "[i] Backing up old verison."
    if [ -d "/usr/share/mystic-downer/Backup" ] ; then
        sudo mv /usr/share/mystic-downer/Backup ./Backup
    else
        mkdir ./Backup
    fi
    name="./Backup/mystic-downer"
    if [ -d $name ] ; then
        i=0
        while [ -d "$name.bak$i" ] ; do
            let i++
        done
            name="$name.bak$i"
    fi
    sudo mv /usr/share/mystic-downer $name
    mv ./Backup ./mystic-downer/
    sudo cp -ar ./mystic-downer /usr/share/
    echo "[i] Installation sucessful."
    echo "[i] Making mystic-downer executable..."
    sudo mv /usr/share/mystic-downer/main.py /usr/share/mystic-downer/rst
    sudo chmod +x /usr/share/mystic-downer/rst
    sudo ln -s /usr/share/mystic-downer/rst /usr/bin/rst || echo "[i] Link already seems to exist."
else
    sudo cp -ar ./mystic-downer /usr/share/
    echo "[i] Installation sucessful."
    echo "[i] Making mystic-downer executable..."
    sudo mv /usr/share/mystic-downer/main.py /usr/share/mystic-downer/rst
    sudo chmod +x /usr/share/mystic-downer/rst
    sudo ln -s /usr/share/mystic-downer/rst /usr/bin/rst || echo "[i] Link already seems to exist."
fi

echo "[i] You can delete the mystic-downer folder now."
echo "----------------------------------------"
echo "[i] Run 'sudo rst' to start Mystic-Downer."
echo "----------------------------------------"
exit 0
