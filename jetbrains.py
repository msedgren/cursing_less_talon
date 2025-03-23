import os
import os.path
import tempfile
import json
from pathlib import Path
from typing import Optional, Dict, List

import requests
from talon import Context, Module, actions, app, clip, ui
# Courtesy of https://github.com/anonfunc/talon-user/blob/master/apps/jetbrains.py

ctx = Context()
mod = Module()

mod.list("cursing_color", desc="The colors that can be used with cursing less.")
mod.list("cursing_shape", desc="The shapes that can be used with cursing less.")

@mod.action_class
class Actions:
    def curse_to_location(pre: str, color: str, shape: str, character: str):
        """
        Move the cursor tho the location marked by the color, shape, and character
        """
        actions.user.idea(f"curse_to_location {pre} {color} {shape} {character}")

    def echo(argOne: str, argTwo: str, argThree: str):
        """
        Sends the given strings to intellij as part of an echo command
        """
        actions.user.idea(f"echo {argOne} {argTwo} {argThree}")