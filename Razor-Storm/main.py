#!/usr/bin/python3

# 2025
# The Razor-Storm Toolkit was programmed and developed by Naksh.
# The Razor-Storm Toolkit is published in 2025.
# The Razor-Storm Toolkit is based on the Testing.
# The Razor Nodes is programmed and developed by Naksh.
# The Razor Nodes is published in 2025.
from sys import argv

from CLIF_Framework.framework import console, module  # noqa: I900


def run():
	main_console = console()
	main_console.rsversion = "4.1 (Pre)"
	main_console.user_argv = argv

	module("modules.main", main_console)

	main_console.run()


if __name__ == "__main__":
	run()
	
