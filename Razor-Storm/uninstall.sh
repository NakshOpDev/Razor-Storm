#!/bin/bash
echo "[i] We will now uninstall Razor-Storm..."
echo "[i] This will delete all backups."
sudo rm -i /usr/bin/rst
sudo rm -rf -i /usr/share/Razor-Storm 

echo "[i] Razor-Storm sucessfully uninstalled."
exit 0
