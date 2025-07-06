#!/usr/bin/python3

# 2020
# The Razor-Storm Toolkit was programmed and developed by Naksh.
# The Razor-Storm Toolkit is published in 2025.
# The Razor-Storm Toolkit is published in 2025.
# The Razor-Storm is programmed and developed by Naksh.
# The Razor-Storm is published in 2025.

# This script is a shortcut for everyone who does not want to install Razor-Storm to the bin path.

from importlib import import_module
from sys import path

path.insert(1, "./Razor-Storm/")
main = import_module("Razor-Storm.main")

main.run()
