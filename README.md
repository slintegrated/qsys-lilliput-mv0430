# Lilliput MV0430 QSYS Plugin
## Overview
This plugin gives UDP control of the [Lilliput / AV Matrix MV0430 Multiviewer](https://www.avmatrix.com/products/4-channel-sdi-multiviewer/) in lua via QSYS control systems. The end goal is to have all available API functions accessible via the plugin. Current versions focus on output layout changes; OSD changes are planned.

Original plugin by Gage Helton ([slintegrated](https://github.com/slintegrated/qsys-lilliput-mv0430)). This fork adds the PIP and Side by Side layouts.

## Features
Output layout buttons (each with a matching LED that reflects the layout actually reported by the unit):

| Control | Layout | Command option |
|---|---|---|
| `QuadView` | Quad view | `0x00` |
| `Input1` - `Input4` | Input N fullscreen | `0x0f` / `0x0e` / `0x0d` / `0x0c` |
| `PIP` | Input 1 fullscreen, Input 2 PIP bottom right | `0x0a` |
| `SideBySide` | Input 1 on left, Input 2 on right | `0x0b` |

Other controls:
* `DeviceIp` / `DevicePort` - unit address (port defaults to 7000)
* `GetInfo` - reads the unit's current settings
* `StatusLed` - set once the first response from the unit is parsed

Every button has a pin (input) and every LED has a pin (output) for use in Q-SYS control scripting/UCIs. After each layout command the plugin reads the unit's state back, so the LEDs always show the real layout.

Note: PIP is currently fixed to the bottom right corner. A selectable PIP position is planned.

## Command Structure
* See [lilliput commands](lilliput-commands.lua) and [Lilliput API](lilliput-api.pdf)
* Layouts are sent with command `0x94`; the plugin picks the option by its index in the `output_layout` table.

## Building
Open the folder in VS Code and run the build task (it can increment `BuildVersion` in [info.lua](info.lua)), or run `plugincompile/PLUGCC.exe qsys-lilliput-mv0430 plugin.lua`. The compiled plugin is `qsys-lilliput-mv0430.qplug`.

## Version History
### v1.2.0
* Added Side by Side layout (`SideBySide` button + `SideBySideLed`)
* Control page made taller to fit the new row

### v1.1.0
* Added PIP layout (`PIP` button + `PipLed`), bottom right only

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
