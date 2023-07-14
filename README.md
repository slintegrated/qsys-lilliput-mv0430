# Lilliput MV0430 QSYS Plugin
## Overview
This plugin gives UDP control of the Lilliput MV0430 Multiviewer in lua via QSYS control systems. The end goal is to have all available API functions accessible via the plugin, but the first few versions will focus on output layout changes and OSD changes.

## Command Structure
* See [lilliput-commands.lua]("lilliput-commands.lua") and [Lilliput API]("lilliput_api.pdf")

## Versions
### 0.1
* Features
  * Output layout functions
    * Quad View
    * Input 1-4 Fullscreen
    * Successful UDP communication
* Known Issues
  * Cannot select LAN interface from settings menu (default is LAN A)
  * UI is suboptimal...
  * No feedback parsing from sent commands
