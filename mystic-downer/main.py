#!/usr/bin/python3

# 2020
# The Razor-Storm Toolkit was programmed and developed by Naksh.
# The Razor-Storm Toolkit is published under the MIT Licence.
# The Razor-Storm Toolkit is based on the Testing.
# The Razor Nodes is programmed and developed by Naksh.
# The Razor Nodes is published under the MIT Licence.

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
  
