picoPatchLoad
=============

For use with Picotron<br>

Use?<br>
`load #patch_load` and press `ctrl+r`<br>
This only needs to be done once and is persistent over reboots<br>

Why?<br>
There is currently a bug where you can only `load #<cart>` once per reboot<br>
This is because of a typo on line 27 that doesn't properly delete the current cart<br>
Patching isn't as simple as fixing the line as `/system` will refresh itself on every reboot<br>
Run this cart to permanently fix this bug (Persistent over reboots)<br>

How?<br>
When run, store a patched `load.lua` in `/appdata/system/util` and append some lines to startup.lua<br>
that will copy this patched `load.lua` to the `/system/util` folder on each reboot<br>

Will it overwrite my startup.lua?<br>
This cart will append to `/appdata/system/startup.lua`, so your current startup config will still work.<br>
