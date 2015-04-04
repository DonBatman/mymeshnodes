local material = {}
local shape = {}
local make_ok = {}
local anzahl = {}

minetest.register_node("mymeshnodes:machine", {
	description = "Mesh Machine",
	tiles = {"default_pinewood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5}, 
			{-0.5, -0.375, -0.375, 0.5, -0.25, 0.5}, 
			{-0.5, -0.25, -0.25, 0.5, -0.125, 0.5}, 
			{-0.5, -0.125, -0.125, 0.5, 0, 0.5}, 
			{-0.5, 0, 0, 0.5, 0.125, 0.5}, 
			{-0.5, 0.125, 0.125, 0.5, 0.25, 0.5}, 
			{-0.5, 0.25, 0.25, 0.5, 0.375, 0.5}, 
			{-0.5, 0.375, 0.375, 0.5, 0.5, 0.5}, 
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375}, 
			{-0.5, 0.375, -0.375, -0.375, 0.5, 0.375}, 
			{0.375, 0.375, -0.375, 0.5, 0.5, 0.375}, 
			{0.375, -0.5, -0.5, 0.5, 0.5, -0.375}, 
			{-0.5, 0.375, -0.5, 0.5, 0.5, -0.375}, 
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	},

	after_place_node = function(pos, placer)
	local meta = minetest.env:get_meta(pos);
			meta:set_string("owner",  (placer:get_player_name() or ""));
			meta:set_string("infotext",  "Mesh Machine is empty (owned by " .. (placer:get_player_name() or "") .. ")");
		end,

can_dig = function(pos,player)
	local meta = minetest.env:get_meta(pos);
	local inv = meta:get_inventory()
	if not inv:is_empty("ingot") then
		return false
	elseif not inv:is_empty("res") then
		return false
	end
	return true
end,

on_construct = function(pos)
	local meta = minetest.env:get_meta(pos)
	meta:set_string("formspec", "invsize[12,11;]"..
		"background[-0.15,-0.25;12.40,11.75;mymeshnodes_background.png]"..
		"list[current_name;ingot;9,2;1,1;]"..
		"list[current_name;res;9,4;1,1;]"..
		"label[9,1.5;Input:]"..
		"label[9,3.5;Output:]"..
		"label[0,0;Mesh Nodes:]"..
		"label[1,0.5;Slopes]"..
		"image_button[1,1;1,1;mymeshnodes_mach1.png;slope; ]"..
		"image_button[2,1;1,1;mymeshnodes_mach2.png;slopeic; ]"..
		"image_button[3,1;1,1;mymeshnodes_mach3.png;slopeoc; ]"..
		"label[1,2;Long Slopes]"..
		"image_button[1,2.5;1,1;mymeshnodes_mach4.png;lslope; ]"..
		"image_button[2,2.5;1,1;mymeshnodes_mach5.png;lslopeic; ]"..
		"image_button[3,2.5;1,1;mymeshnodes_mach6.png;lslopeoc; ]"..
		"image_button[4,2.5;1,1;mymeshnodes_mach15.png;lslopetop; ]"..
		"image_button[5,2.5;1,1;mymeshnodes_mach16.png;lslopebot; ]"..
		"label[1,3.5;Pyramids]"..
		"image_button[1,4;1,1;mymeshnodes_mach7.png;smpyramid; ]"..
		"image_button[2,4;1,1;mymeshnodes_mach8.png;pyramid; ]"..
		"image_button[3,4;1,1;mymeshnodes_mach9.png;smquapyramid; ]"..
		"image_button[4,4;1,1;mymeshnodes_mach20.png;quapyramid; ]"..
		"label[5,3.5;Other]"..
		"image_button[5,4;1,1;mymeshnodes_mach21.png;circle; ]"..
		"image_button[6,4;1,1;mymeshnodes_mach18.png;pole; ]"..
		"image_button[7,4;1,1;mymeshnodes_mach19.png;ichalf; ]"..
		"label[1,5;Other]"..
		"image_button[1,5.5;1,1;mymeshnodes_mach10.png;cylinder; ]"..
		"image_button[2,5.5;1,1;mymeshnodes_mach11.png;sphere; ]"..
		"image_button[3,5.5;1,1;mymeshnodes_mach12.png;rounded; ]"..
		"image_button[4,5.5;1,1;mymeshnodes_mach13.png;roundedc; ]"..
		"image_button[5,5.5;1,1;mymeshnodes_mach14.png;cone; ]"..
		"image_button[6,5.5;1,1;mymeshnodes_mach17.png;blob; ]"..
		"image_button[7,5.5;1,1;mymeshnodes_mach22.png;barrel; ]"..
		"list[current_player;main;2,7;8,4;]")
	meta:set_string("infotext", "Mesh Machine")
	local inv = meta:get_inventory()
	inv:set_size("ingot", 1)
	inv:set_size("res", 1)
end,

on_receive_fields = function(pos, formname, fields, sender)
	local meta = minetest.env:get_meta(pos)
	local inv = meta:get_inventory()

if fields["slope"] 
or fields["slopeic"]
or fields["slopeoc"]
or fields["lslope"] 
or fields["lslopeic"]
or fields["lslopeoc"]
or fields["lslopetop"]
or fields["lslopebot"]
or fields["smpyramid"]
or fields["pyramid"]
or fields["smquapyramid"]
or fields["quapyramid"]
or fields["circle"]
or fields["pole"]
or fields["ichalf"]
or fields["cylinder"]
or fields["sphere"]
or fields["rounded"]
or fields["roundedc"]
or fields["cone"]
or fields["blob"]
or fields["barrel"]
then

	if fields["slope"] then
		make_ok = "0"
		anzahl = "2"
		shape = "mymeshnodes:slope_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["slopeic"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:slope_ic_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["slopeoc"] then
		make_ok = "0"
		anzahl = "2"
		shape = "mymeshnodes:slope_oc_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["lslope"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:lslope_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["lslopeic"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:lslope_ic_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["lslopeoc"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:lslope_oc_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["lslopetop"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:lslope_top_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["lslopebot"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:lslope_bot_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["smpyramid"] then
		make_ok = "0"
		anzahl = "2"
		shape = "mymeshnodes:smpyramid_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["pyramid"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:pyramid_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["smquapyramid"] then
		make_ok = "0"
		anzahl = "2"
		shape = "mymeshnodes:smquapyramid_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["quapyramid"] then
		make_ok = "0"
		anzahl = "2"
		shape = "mymeshnodes:quapyramid_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["circle"] then
		make_ok = "0"
		anzahl = "6"
		shape = "mymeshnodes:circle_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["pole"] then
		make_ok = "0"
		anzahl = "4"
		shape = "mymeshnodes:pole_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["ichalf"] then
		make_ok = "0"
		anzahl = "4"
		shape = "mymeshnodes:ichalf_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["cylinder"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:cylinder_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["sphere"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:sphere_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["rounded"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:rounded_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["roundedc"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:roundedc_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["cone"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:cone_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["blob"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:blob_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["barrel"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymeshnodes:barrel_"
		if inv:is_empty("ingot") then
			return
		end
	end

		local ingotstack = inv:get_stack("ingot", 1)
		local resstack = inv:get_stack("res", 1)
----------------------------------------------------------------------------------
--register nodes
local nodes_of_slopes = {
			{"default:brick",		"default_brick"},
--			{"default:bronzeblock",		"default_bronze_block"},
--			{"default:cactus",		"default_cactus"},
			{"default:clay",		"default_clay"},
--			{"default:coalblock",		"default_coal_block"},
			{"default:cobble",		"default_cobble"},
--			{"default:copperblock",		"default_copper_block"},
			{"default:desert_cobble",	"default_desert_cobble"},
--			{"default:desert_sand",		"default_desert_sand"},
			{"default:desert_stone",	"default_desert_stone"},
--			{"default:diamondblock",	"default_diamond_block"},
--			{"default:dirt",		"default_dirt"},
--			{"default:glass",		"default_glass"},
--			{"default:goldblock",		"default_gold_block"},
--			{"default:gravel",		"default_gravel"},
--			{"default:ice",			"default_ice"},
			{"default:jungletree",		"default_jungletree"},
			{"default:junglewood",		"default_junglewood"},
--			{"default:lava_source",		"default_lava"},
--			{"default:mese",		"default_mese"},
			{"default:mossycobble",		"default_mossycobble"},
--			{"default:obsidian",		"default_obsidian"},
--			{"default:obsidian_glass",	"default_obsidian_glass"},
--			{"default:obsidianbrick",	"default_obsidian_brick"},
			{"default:pinetree",		"default_pinetree"},
			{"default:pinewood",		"default_pinewood"},
--			{"default:sand",		"default_sand"},
			{"default:sandstone",		"default_sandstone"},
			{"default:sandstonebrick",	"default_sandstone_brick"},
--			{"default:snowblock",		"default_snow"},
--			{"default:steelblock",		"default_steel_block"},
			{"default:stone",		"default_stone"},
			{"default:stonebrick",		"default_stone_brick"},
			{"default:tree",		"default_tree"},
--			{"default:water_source",	"default_water"},
			{"default:wood",		"default_wood"},
			{"farming:straw",		"farming_straw"},
			{"wool:black",			"wool_black"},
			{"wool:blue",			"wool_blue"},
			{"wool:brown",			"wool_brown"},
			{"wool:cyan",			"wool_cyan"},
			{"wool:dark_green",		"wool_dark_green"},
			{"wool:dark_grey",		"wool_dark_grey"},
			{"wool:green",			"wool_green"},
			{"wool:grey",			"wool_grey"},
			{"wool:magenta",		"wool_magenta"},
			{"wool:orange",			"wool_orange"},
			{"wool:pink",			"wool_pink"},
			{"wool:red",			"wool_red"},
			{"wool:violet",			"wool_violet"},
			{"wool:white",			"wool_white"},
			{"wool:yellow",			"wool_yellow"},

--Batmod

	{ "bat_blocks:bat_cobble",              "bat_cobble"},
	{ "bat_blocks:bat_cobble_white",        "bat_cobble_white"},
	{ "bat_blocks:bat_cobble_tan",          "bat_cobble_tan"},
	{ "bat_blocks:bat_pavers",              "bat_pavers"},
	{ "bat_blocks:bat_block",               "bat_block"},
	{ "bat_blocks:bat_tile",                "bat_tile"},
	{ "bat_blocks:bat_diag",                "bat_diag"},
	{ "bat_blocks:bat_x",                   "bat_x_block"},
	{ "bat_blocks:bat_brick",               "bat_brick"},
	{ "bat_blocks:bat_smbrick",             "bat_smbrick"},

--castle

	{"castle:dungeon_stone",        "dungeon_stone"},
	{"castle:pavement",       "pavement_brick"},
	{"castle:rubble",               "rubble"},
	{"castle:roofslate",                "slate"},
	{"castle:stonewall",            "stonewall"},

--moreblocks

	{ "moreblocks:cactus_brick",        "cactus_brick"},
	{ "moreblocks:cactus_checker",      "cactus_checker"},
	{ "moreblocks:coal_stone_bricks",   "coal_stone_bricks"},
	{ "moreblocks:circle_stone_bricks", "circle_stone_bricks"},
	{ "moreblocks:iron_checker",        "iron_checker"},
	{ "moreblocks:iron_stone_bricks",   "iron_stone_bricks"},
	{ "moreblocks:plankstone",          "plankstone"},
	{ "moreblocks:stone_tile",          "stone_tile"},
	{ "moreblocks:wood_tile_center",    "wood_tile_center"},
	{ "moreblocks:wood_tile_full",      "wood_tile_full"},

--moretrees

	{"moretrees:apple_planks",      "apple_tree"},
	{"moretrees:beech_planks",      "beech"},
	{"moretrees:oak_planks",        "oak"},
	{"moretrees:sequoia_planks",    "sequoia"},
	{"moretrees:birch_planks",      "birch"},
	{"moretrees:palm_planks",       "palm"},
	{"moretrees:spruce_planks",     "spruce"},
	{"moretrees:willow_planks",     "willow"},
	{"moretrees:rubber_tree_planks","rubber_tree"},
	{"moretrees:fir_planks",        "fir"},

			}

	for i in ipairs (nodes_of_slopes) do
		local nodeitem = nodes_of_slopes[i][1]
		local nodedesc = nodes_of_slopes[i][2]
----------------------------------------------------------------------------------
		if ingotstack:get_name()==nodeitem then
				material = nodedesc
				make_ok = "1"
		end
	end
		

----------------------------------------------------------------------
		if make_ok == "1" then
			local give = {}
			for i = 0, anzahl-1 do
				give[i+1]=inv:add_item("res",shape..material)
			end
			ingotstack:take_item()
			inv:set_stack("ingot",1,ingotstack)
		end            	
	end
end

})

--Craft

minetest.register_craft({
		output = 'mymeshnodes:machine',
		recipe = {
			{'default:pinewood', 'default:pinewood', 'default:pinewood'},
			{'default:pinewood', 'default:steel_ingot', 'default:pinewood'},
			{'default:pinewood', "default:pinewood", 'default:pinewood'},		
		},
})













