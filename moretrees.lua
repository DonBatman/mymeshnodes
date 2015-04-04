


--function mymeshnodes.register_all(material, descr, image, groups, citem)

local slope_cbox = {
	type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 0.5},
		{-0.5,     0,     0, 0.5,  0.25, 0.5},
		{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
	}
}

local slope_cbox_long = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5,   -1.5,  0.5, -0.375, 0.5},  --  NodeBox1
		{-0.5, -0.375, -1.25, 0.5, -0.25,  0.5},  --  NodeBox2
		{-0.5, -0.25,  -1,    0.5, -0.125, 0.5},  --  NodeBox3
		{-0.5, -0.125, -0.75, 0.5,  0,     0.5},  --  NodeBox4
		{-0.5,  0,     -0.5,  0.5,  0.125, 0.5},  --  NodeBox5
		{-0.5,  0.125, -0.25, 0.5,  0.25,  0.5},  --  NodeBox6
		{-0.5,  0.25,   0,    0.5,  0.375, 0.5},  --  NodeBox7
		{-0.5,  0.375,  0.25, 0.5,  0.5,   0.5},  --  NodeBox8
	}
}

local icorner_cbox = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5}, -- NodeBox5
		{-0.5, -0.5, -0.25, 0.5, 0, 0.5}, -- NodeBox6
		{-0.5, -0.5, -0.5, 0.25, 0, 0.5}, -- NodeBox7
		{-0.5, 0, -0.5, 0, 0.25, 0.5}, -- NodeBox8
		{-0.5, 0, 0, 0.5, 0.25, 0.5}, -- NodeBox9
		{-0.5, 0.25, 0.25, 0.5, 0.5, 0.5}, -- NodeBox10
		{-0.5, 0.25, -0.5, -0.25, 0.5, 0.5}, -- NodeBox11
	}
}

local ocorner_cbox = {
	type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5,   0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25,  0.25,     0, 0.5},
		{-0.5,     0,     0,     0,  0.25, 0.5},
		{-0.5,  0.25,  0.25, -0.25,   0.5, 0.5}
	}
}

local smpyr_cbox = {
	type = "fixed",
	fixed = {
		{ -0.5,   -0.5,   -0.5,   0.5,   -0.375, 0.5 },
		{ -0.375, -0.375, -0.375, 0.375, -0.25,  0.375},
		{ -0.25,  -0.25,  -0.25,  0.25,  -0.125, 0.25},
		{ -0.125, -0.125, -0.125, 0.125,  0,     0.125}
	}
}

local pyr_cbox = {
	type = "fixed",
	fixed = {
		{ -0.5,   -0.5,  -0.5,   0.5,  -0.25, 0.5 },
		{ -0.375, -0.25, -0.375, 0.375, 0,    0.375},
		{ -0.25,   0,    -0.25,  0.25,  0.25, 0.25},
		{ -0.125,  0.25, -0.125, 0.125, 0.5,  0.125}
	}
}

local slope_fronthalf_cbox = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5,   -0.5,  0.5, -0.375, 0.5},  --  NodeBox1
		{-0.5, -0.375, -0.25, 0.5, -0.25,  0.5},  --  NodeBox2
		{-0.5, -0.25,  0,    0.5, -0.125, 0.5},  --  NodeBox3
		{-0.5, -0.125, 0.25, 0.5,  0,     0.5},  --  NodeBox4
	}
}

local slope_backhalf_cbox = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5,   -0.5,  0.5, 0.125, 0.5},  --  NodeBox1
		{-0.5, 0.125, -0.25, 0.5, 0.25,  0.5},  --  NodeBox2
		{-0.5, 0.25,  0,    0.5, 0.375, 0.5},  --  NodeBox3
		{-0.5, 0.375, 0.25, 0.5,  0.5,     0.5},  --  NodeBox4
	}
}
local circle_cbox = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5, -0.5,  0.5, -0.25, 0.5}, 
	}
}

local bat_slopes = {   --Material , Description , Item, Image
	{ "apple" ,  "Apple Plank" ,         "moretrees:apple_planks",      "moretrees_apple_tree_wood.png"},
	{"beech",    "Beech Plank",          "moretrees:beech_planks",      "moretrees_beech_wood.png"},
	{"oak",	     "Oak Plank",            "moretrees:oak_planks",        "moretrees_oak_wood.png"},
	{"sequoia",  "Giant Sequoia Plank",  "moretrees:sequoia_planks",    "moretrees_sequoia_wood.png"},
	{"birch",    "Birch Plank",          "moretrees:birch_planks",      "moretrees_birch_wood.png"},
	{"palm",     "Palm Plank",           "moretrees:palm_planks",       "moretrees_palm_wood.png"},
	{"spruce",   "Spruce Plank",         "moretrees:spruce_planks",     "moretrees_spruce_wood.png"},
	{"willow",   "Willow Plank",         "moretrees:willow_planks",     "moretrees_willow_wood.png"},
	{"rubber",   "Rubber Plank",         "moretrees:rubber_tree_planks","moretrees_rubber_tree_wood.png"},
	{"fir",	     "Douglas Fir Plank",    "moretrees:fir_planks",        "moretrees_fir_wood.png"},
}

for i in ipairs(bat_slopes) do
	local mat = bat_slopes[i][1]
	local desc = bat_slopes[i][2]
	local item = bat_slopes[i][3]
	local img = bat_slopes[i][4]

local slopes = {   --shape , Description , mesh , colbox
	{ "slope" ,        "Slope" ,                      	 "mymeshnodes_twelve-twelve.obj",       "slope_cbox"},
	{ "slope_ic" ,     "Inside Corner Slope" ,        	 "mymeshnodes_twelve-twelve-ic.obj",    "icorner_cbox"},
	{ "slope_oc" ,     "Outside Corner Slope" ,       	 "mymeshnodes_twelve-twelve-oc.obj",    "ocorner_cbox"},	
	{ "lslope" ,       "Long Slope" ,                 	 "mymeshnodes_six-twelve.obj",     	"slope_cbox_long"},
	{ "lslope_ic" ,    "Inside Corner Long Slope" ,   	 "mymeshnodes_six-twelve-ic.obj",    	"icorner_cbox_long"},
	{ "lslope_oc" ,    "Outside Corner Long Slope" ,  	 "mymeshnodes_six-twelve-oc.obj",    	"ocorner_cbox_long"},
	{ "lslope_top" ,   "Long Slope Top" ,  			 "mymeshnodes_lslope_top.obj",    	""},
	{ "lslope_bot" ,   "Long Slope Bottom" ,  		 "mymeshnodes_lslope_bot.obj",    	""},
	{ "smpyramid" ,    "Small Pyramid" ,  			 "mymeshnodes_smpyramid.obj",    	"smpyr_cbox"},	
	{ "pyramid" ,      "Pyramid" ,   			 "mymeshnodes_pyramid.obj",    		"pyr_cbox"},	
	{ "smquapyramid" , "Small Quarter Pyramid" ,		 "mymeshnodes_smquapyramid.obj",    	""},		
	{ "quapyramid" ,   "Quarter Pyramid" ,			 "mymeshnodes_quapyramid.obj",    	""},	
	{ "circle" , 	   "Circle" ,				 "mymeshnodes_circle.obj",    		"circle_cbox"},	
	{ "pole" , 	   "Pole" ,				 "mymeshnodes_pole.obj",    		""},	
	{ "ichalf" , 	   "Inside Corner Half" ,		 "mymeshnodes_ichalf.obj",    		""},
	{ "cylinder" ,     "Cylinder" ,   			 "mymeshnodes_cylinder.obj",    	""},	
	{ "sphere" ,       "Sphere" ,     			 "mymeshnodes_sphere.obj",    		""},	
	{ "rounded" ,      "Rounded" ,  			 "mymeshnodes_rounded.obj",    		""},	
	{ "roundedc" ,     "Rounded Corner" ,  			 "mymeshnodes_rounded_corner.obj",    	""},
	{ "cone" ,         "Cone" ,  				 "mymeshnodes_cone.obj",    		""},	
	{ "blob" ,         "Blob" ,  				 "mymeshnodes_blob.obj",    		""},	
	{ "barrel" ,       "Barrel" ,  			 	 "mymeshnodes_barrel.obj",    		""},
}

for i in ipairs(slopes) do
	local shap = slopes[i][1]
	local desc = slopes[i][2]
	local mesh = slopes[i][3]
	local colbox = slopes[i][4]

--slope
minetest.register_node("mymeshnodes:"..shap.."_"..mat, {
	description = desc.." "..mat,
	drawtype = "mesh",
	mesh = mesh,
	tiles = {img},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, not_in_creative_inventory=1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = colbox,
	selection_box = colbox,
})

end
end










