picoPatchLoad
=============

For use with Picotron

Use?
`load #patch_load` and press `ctrl+r`
This only needs to be done once and is persistent over reboots

Why?
There is currently a bug where you can only `load #<cart>` once per reboot
This is because of a typo on line 27 that doesn't properly delete the current cart
Patching isn't as simple as fixing the line as `/system` will refresh itself on every reboot
Run this cart to permanently fix this bug (Persistent over reboots)

How?
When run, store a patched `load.lua` in `/appdata/system/util` and append some lines to startup.lua
that will copy this patched `load.lua` to the `/system/util` folder on each reboot

Will it overwrite my startup.lua?
This cart will append to `/appdata/system/startup.lua`, so your current startup config will still work.
