--[[pod_format="raw",created="2024-03-24 02:23:33",modified="2024-03-24 02:37:56",revision=2]]
-- Start Patch load.lua --
-- Make sure load.lua exists
if fstat("/appdata/system/util/load.lua") then
	
	-- Copy patched load.lua across to system
	rm ("/system/util/load.lua")
	cp ("/appdata/system/util/load.lua", "/system/util/load.lua")

end
-- End Patch load.lua --