# Lilliput MV0430 QSYS Plugin
## Overview
This plugin gives UDP control of the [Lilliput / AV Matrix MV0430 Multiviewer](https://www.avmatrix.com/products/4-channel-sdi-multiviewer/) in lua via QSYS control systems. The end goal is to have all available API functions accessible via the plugin, but the first few versions will focus on output layout changes and OSD changes.

## Command Structure
* See [lilliput commands](lilliput-commands.lua) and [Lilliput API](lilliput-api.pdf)

## Versions
### v0.2-alpha
![alt text][v02]

[v02]: graphics/images/v0.2.png

* Features
  * Output layout functions
    * Quad View
    * Input 1-4 Fullscreen
    * Successful UDP communication
    * REAL LED feedback - the button presses send the command and parse the response to find the actual output layout on the unit
    * Status LED - gets set when first successful parse is processed
* Known Issues
  * Cannot select LAN interface from settings menu (default is LAN A)
  * UI is suboptimal...
  * No socket health data (connected/disconnected)
  
### v0.1-alpha
![alt text][v01]s

[v01]: graphics/images/v0.1.png

* Features
  * Output layout functions
    * Quad View
    * Input 1-4 Fullscreen
    * Successful UDP communication
* Known Issues
  * Cannot select LAN interface from settings menu (default is LAN A)
  * UI is suboptimal...
  * No feedback parsing from MV0430 - indicators are fake feedback
  * No socket health data (connected/disconnected)
  * No communication health data (are commands getting responses?)
