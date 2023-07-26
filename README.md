# Lilliput MV0430 QSYS Plugin
## Overview
This plugin gives UDP control of the [Lilliput / AV Matrix MV0430 Multiviewer](https://www.avmatrix.com/products/4-channel-sdi-multiviewer/) in lua via QSYS control systems. The end goal is to have all available API functions accessible via the plugin, but the first few versions will focus on output layout changes and OSD changes.

## Command Structure
* See [lilliput commands](lilliput-commands.lua) and [Lilliput API](lilliput-api.pdf)


## Versions History
### [v1.0.0](https://github.com/slintegrated/qsys-lilliput-mv0430/releases/tag/v1.0.0)

![alt text][v02]

[v02]: graphics/images/v0.2.png

* Features
  * Output layout functions
    * Quad View
    * Input 1-4 Fullscreen
    * Parsed LED feedback - the button presses send the command and parse the response to find the actual output layout on the unit
    * Status LED - gets set when first successful parse is processed
* Known Issues
  * UI is suboptimal...
