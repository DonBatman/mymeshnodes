mymeshnodes = {}

local moreblocks = core.settings:get_bool("mymeshnodes.moreblocks", true)
local castle = core.settings:get_bool("mymeshnodes.castle", true)
local castles = core.settings:get_bool("mymeshnodes.castles", true)
local batblocks = core.settings:get_bool("mymeshnodes.batblocks", true)
local moretrees = core.settings:get_bool("mymeshnodes.moretrees", true)
local hardenedclay = core.settings:get_bool("mymeshnodes.hardenedclay", true)
local ores = core.settings:get_bool("mymeshnodes.ores", true)
local mymulch = core.settings:get_bool("mymeshnodes.mymulch", true)
local my_door_wood = core.settings:get_bool("mymeshnodes.my_door_wood", true)
local mycobble = core.settings:get_bool("mymeshnodes.mycobble", true)
local myores = core.settings:get_bool("mymeshnodes.myores", true)
local myglass = core.settings:get_bool("mymeshnodes.myglass", true)
local mywhiteblock = core.settings:get_bool("mymeshnodes.mywhiteblock", true)
local myblocks = core.settings:get_bool("mymeshnodes.myblocks", true)
local mycastle = core.settings:get_bool("mymeshnodes.mycastle", true)

dofile(core.get_modpath("mymeshnodes").."/nodes.lua")
dofile(core.get_modpath("mymeshnodes").."/machine.lua")
dofile(core.get_modpath("mymeshnodes").."/register.lua")

if moreblocks then
	if core.get_modpath("moreblocks") then
		dofile(core.get_modpath("mymeshnodes").."/moreblocks.lua")
	end
end
if castle then	
	if core.get_modpath("castle") then
		dofile(core.get_modpath("mymeshnodes").."/castle.lua")
	end
end
if castles then	
	if core.get_modpath("castles") then
		dofile(core.get_modpath("mymeshnodes").."/castle.lua")
	end
end
if batblocks then	
	if core.get_modpath("bat_blocks") then
		dofile(core.get_modpath("mymeshnodes").."/batmod.lua")
	end
end
if moretrees then	
	if core.get_modpath("moretrees") then
		dofile(core.get_modpath("mymeshnodes").."/moretrees.lua")
	end
end
if hardenedclay then
	if core.get_modpath("hardenedclay") then
		dofile(core.get_modpath("mymeshnodes").."/hardenedclay.lua")
	end
end
if ores then	
	if core.get_modpath("ores") then
		dofile(core.get_modpath("mymeshnodes").."/ores.lua")
	end
end
if mymulch then
	if core.get_modpath("mymulch") then
		dofile(core.get_modpath("mymeshnodes").."/mymulch.lua")
	end
end
if my_door_wood then	
	if core.get_modpath("my_door_wood") then
		dofile(core.get_modpath("mymeshnodes").."/mydoorwood.lua")
	end
end
if mycobble then
	if core.get_modpath("mycobble") then
		dofile(core.get_modpath("mymeshnodes").."/mycobble.lua")
	end
end
if myores then	
	if core.get_modpath("myores") then
		dofile(core.get_modpath("mymeshnodes").."/myores.lua")
	end
end
if myglass then
	if core.get_modpath("myglass") then
		dofile(core.get_modpath("mymeshnodes").."/myglass.lua")
	end
end
if mywhiteblock then
	if core.get_modpath("mywhiteblock") then
		dofile(core.get_modpath("mymeshnodes").."/mywhiteblock.lua")
	end
end
if myblocks then
	if core.get_modpath("myblocks") then
		dofile(core.get_modpath("mymeshnodes").."/myblocks.lua")
	end
end
if mycastle then
	if core.get_modpath("mycastle") then
		dofile(core.get_modpath("mymeshnodes").."/mycastle.lua")
	end
end
