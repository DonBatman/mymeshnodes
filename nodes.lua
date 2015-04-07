function mymeshnodes.register_all(material, descr, image, groups, citem)

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
local icorner_cbox_long = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5, -1.5, -0.25, 0.5, 0.5},
		{-0.5, -0.5, 0.25, 1.5, 0.5, 0.5},
		{-0.5, -0.5, 0, 1.5, 0.375, 0.5},
		{-0.5, -0.5, -1.5, 0, 0.375, 0.5},
		{-0.5, -0.5, -1.5, 0.25, 0.25, 0.5},
		{-0.5, -0.5, -1.5, 0.5, 0.125, 0.5},
		{-0.5, -0.5, -1.5, 0.75, 0, 0.5},
		{-0.5, -0.5, -1.5, 1, -0.125, 0.5},
		{-0.5, -0.5, -1.5, 1.25, -0.25, 0.5},
		{-0.5, -0.5, -1.5, 1.5, -0.375, 0.5},
		{-0.5, -0.5, -0.25, 1.5, 0.25, 0.5},
		{-0.5, -0.5, -0.5, 1.5, 0.125, 0.5}, 
		{-0.5, -0.5, -0.75, 1.5, 0, 0.5},
		{-0.5, -0.5, -1, 1.5, -0.125, 0.5},
		{-0.5, -0.5, -1.25, 1.5, -0.25, 0.5},
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
local ocorner_cbox_long = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5, 0.25, -0.25, 0.5, 0.5},
		{-0.5, -0.5, 0, 0, 0.375, 0.5},
		{-0.5, -0.5, -0.25, 0.25, 0.25, 0.5},
		{-0.5, -0.5, -0.5, 0.5, 0.125, 0.5}, 
		{-0.5, -0.5, -0.75, 0.75, 0, 0.5}, 
		{-0.5, -0.5, -1, 1, -0.125, 0.5}, 
		{-0.5, -0.5, -1.25, 1.25, -0.25, 0.5}, 
		{-0.5, -0.5, -1.5, 1.5, -0.375, 0.5},
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
local longslope_top_cbox = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, 0.25, 0.5, 0.5, 0.5}, 
			{-0.5, -0.5, 0, 0.5, 0.375, 0.25}, 
			{-0.5, -0.5, -0.25, 0.5, 0.25, 0}, 
			{-0.5, -0.5, -0.5, 0.5, 0.125, -0.25},  
	}
}
local longslope_bottom_cbox = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, 0.25, 0.5, 0, 0.5},
			{-0.5, -0.5, 0, 0.5, -0.125, 0.25},
			{-0.5, -0.5, -0.25, 0.5, -0.25, 0}, 
			{-0.5, -0.5, -0.5, 0.5, -0.375, -0.25}, 
	}
}
local pole_cbox = {
	type = "fixed",
	fixed = {
			{-0.125, -0.5, -0.125, 0.125, 0.5, 0.125}, 
	}
}
local smquapyramid_cbox = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, 0.25, -0.25, 0, 0.5}, 
			{-0.5, -0.5, 0, -0.25, -0.125, 0.25},
			{-0.5, -0.5, -0.25, -0.25, -0.25, 0}, 
			{-0.5, -0.5, -0.5, -0.25, -0.375, -0.25},
			{-0.25, -0.5, 0.25, 0, -0.125, 0.5}, 
			{0, -0.5, 0.25, 0.25, -0.25, 0.5}, 
			{0.25, -0.5, 0.25, 0.5, -0.375, 0.5}, 
			{-0.25, -0.5, 0, 0, -0.25, 0.25}, 
			{-0.25, -0.5, -0.25, 0, -0.375, 0}, 
			{0, -0.5, 0, 0.25, -0.375, 0.25}, 
	}
}
local quapyramid_cbox = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, 0.25, -0.25, 0.5, 0.5}, 
			{-0.5, -0.5, 0, -0.25, 0.375, 0.25}, 
			{-0.5, -0.5, -0.25, -0.25, 0.25, 0}, 
			{-0.5, -0.5, -0.5, -0.25, 0.125, -0.25}, 
			{-0.25, -0.5, 0.25, 0, 0.375, 0.5}, 
			{0, -0.5, 0.25, 0.25, 0.25, 0.5}, 
			{0.25, -0.5, 0.25, 0.5, 0.125, 0.5}, 
			{-0.25, -0.5, 0, 0, 0.25, 0.25}, 
			{-0.25, -0.5, -0.25, 0, 0.125, 0}, 
			{0, -0.5, 0, 0.25, 0.125, 0.25}, 
			{-0.25, -0.5, -0.5, 0.5, 0, 0.25}, 
	}
}

local slopes = {   --shape , Description , mesh , colbox
	{ "slope" ,        "Slope" ,                      	 "mymeshnodes_twelve-twelve.obj",       slope_cbox},
	{ "slope_ic" ,     "Inside Corner Slope" ,        	 "mymeshnodes_twelve-twelve-ic.obj",    icorner_cbox},
	{ "slope_oc" ,     "Outside Corner Slope" ,       	 "mymeshnodes_twelve-twelve-oc.obj",    ocorner_cbox},	
	{ "lslope" ,       "Long Slope" ,                 	 "mymeshnodes_six-twelve.obj",     	slope_cbox_long},
	{ "lslope_ic" ,    "Inside Corner Long Slope" ,   	 "mymeshnodes_six-twelve-ic.obj",    	icorner_cbox_long},
	{ "lslope_oc" ,    "Outside Corner Long Slope" ,  	 "mymeshnodes_six-twelve-oc.obj",    	ocorner_cbox_long},
	{ "lslope_top" ,   "Long Slope Top" ,  			 "mymeshnodes_lslope_top.obj",    	longslope_top_cbox},
	{ "lslope_bot" ,   "Long Slope Bottom" ,  		 "mymeshnodes_lslope_bot.obj",    	longslope_bottom_cbox},
	{ "smpyramid" ,    "Small Pyramid" ,  			 "mymeshnodes_smpyramid.obj",    	smpyr_cbox},	
	{ "pyramid" ,      "Pyramid" ,   			 "mymeshnodes_pyramid.obj",    		pyr_cbox},	
	{ "smquapyramid" , "Small Quarter Pyramid" ,		 "mymeshnodes_smquapyramid.obj",    	smquapyramid_cbox},		
	{ "quapyramid" ,   "Quarter Pyramid" ,			 "mymeshnodes_quapyramid.obj",    	quapyramid_cbox},	
	{ "circle" , 	   "Circle" ,				 "mymeshnodes_circle.obj",    		circle_cbox},	
	{ "pole" , 	   "Pole" ,				 "mymeshnodes_pole.obj",    		pole_cbox},	
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
minetest.register_node("mymeshnodes:"..shap.."_"..material, {
	description = descr.." "..desc,
	drawtype = "mesh",
	mesh = mesh,
	tiles = {image},
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



