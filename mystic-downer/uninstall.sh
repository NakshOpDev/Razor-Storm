#!/bin/bash
echo "[i] We will now uninstall Mystic-Downer..."
echo "[i] This will delete all backups."
sudo rm -i /usr/bin/rst
sudo rm -rf -i /usr/share/mystic-downer

echo "[i] Mystic-Downer sucessfully uninstalled."
exit 0
