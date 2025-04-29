#!/usr/bin/python3

# 2020
# The Razor-Storm Toolkit was programmed and developed by Naksh.
# The Razor-Storm Toolkit is published under the MIT Licence.
# The Razor-Storm Toolkit is based on the CLIF-Framework.
# The Razor-Storm is programmed and developed by Naksh.
# The Razor-Storm is published under the MIT Licence.

# This script is a shortcut for everyone who does not want to install Raven-Storm to the bin path.

from importlib import import_module
from sys import path

path.insert(1, "./Razor-Storm/")
main = import_module("Razor-Storm.main")

main.run()
