#!/usr/bin/python3


from importlib import import_module
from sys import path

path.insert(1, "./mystic-downer/")
main = import_module("mystic-downer.main")

main.run()
