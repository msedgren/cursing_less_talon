import os
import os.path
import requests
from typing import Optional, Dict, List
from talon import Context, Module, actions, app, clip, ui
import urllib.parse
# Courtesy of https://github.com/anonfunc/talon-user/blob/master/apps/jetbrains.py

ctx = Context()
mod = Module()

mod.apps.jetbrains = "app.name: /jetbrains/"
appNames = [
    "CLion",
    "IntelliJ IDEA",
    "PhpStorm",
    "PyCharm",
    "Webstorm",
    "RubyMine",
    "DataGrip",
]
for appName in appNames:
    mod.apps.jetbrains = f"app.name: {appName}"
    mod.apps.jetbrains = f"app.name: {appName}-EAP"
mod.apps.jetbrains = """
os: mac
and app.bundle: com.google.android.studio
"""
# windows
mod.apps.jetbrains = r"app.exe: /^idea64\.exe$/i"
mod.apps.jetbrains = r"app.exe: /^PyCharm64\.exe$/i"
mod.apps.jetbrains = r"app.exe: /^webstorm64\.exe$/i"
mod.apps.jetbrains = """
os: mac
and app.bundle: com.jetbrains.pycharm
"""
mod.apps.jetbrains = """
os: mac
and app.bundle: com.jetbrains.rider
"""
mod.apps.jetbrains = """
os: mac
and app.bundle: com.jetbrains.goland
"""
mod.apps.jetbrains = """
os: mac
and app.bundle: com.jetbrains.intellij.ce
"""
mod.apps.jetbrains = r"""
os: windows
and app.name: JetBrains Rider
os: windows
and app.exe: /^rider64\.exe$/i
"""

# Local plugin development:
mod.apps.jetbrains = """
os: mac
and app.bundle: com.jetbrains.jbr.java
"""

mod.list("cursing_color", desc="The colors that can be used with cursing less.")
mod.list("cursing_shape", desc="The shapes that can be used with cursing less.")

@mod.action_class
class Actions:
    def curse_to_location(pre: str, color: str, shape: str, character: str):
        """
        Move the cursor to the location marked by the color, shape, and character
        """
        actions.user.idea(urllib.parse.quote(f"curse_to_location {pre} {color} {shape} {character}"))

    def curse_to_relative_location_by_color(direction: str, pre: str, color: str):
        """
        Move the cursor to the next or last location marked by the color
        """
        actions.user.idea(urllib.parse.quote(f"curse_to_relative_location_by_color {direction} {pre} {color}"))

    def curse_select(mode: str, color: str, shape: str, character: str):
        """
        Select, copy, cut, or clear the token at the location marked by the color, shape, and character
        """
        actions.user.idea(urllib.parse.quote(f"curse_select {mode} {color} {shape} {character}"))

    def curse_select_to(mode: str, color: str, shape: str, character: str):
        """
        Select, copy, cut, or clear from the current offset to the token at the location marked by the color, shape, and character
        """
        actions.user.idea(urllib.parse.quote(f"curse_select_to {mode} {color} {shape} {character}"))