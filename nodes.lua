function mymeshnodes.register_all(material, descr, image, groups, citem)

local slope_cbox = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, 0.4375, 0.5, 0.4375, 0.5},
			{-0.5, -0.5, 0.375, 0.5, 0.375, 0.5},
			{-0.5, -0.5, 0.3125, 0.5, 0.3125, 0.5},
			{-0.5, -0.5, 0.25, 0.5, 0.25, 0.5},
			{-0.5, -0.5, 0.1875, 0.5, 0.1875, 0.5},
			{-0.5, -0.5, 0.125, 0.5, 0.125, 0.5},
			{-0.5, -0.5, 0.0625, 0.5, 0.0625, 0.5},
			{-0.5, -0.5, 0, 0.5, 0, 0.5},
			{-0.5, -0.5, -0.0625, 0.5, -0.0625, 0.5},
			{-0.5, -0.5, -0.125, 0.5, -0.125, 0.5},
			{-0.5, -0.5, -0.1875, 0.5, -0.1875, 0.5},
			{-0.5, -0.5, -0.25, 0.5, -0.25, 0.5},
			{-0.5, -0.5, -0.3125, 0.5, -0.3125, 0.5},
			{-0.5, -0.5, -0.375, 0.5, -0.375, 0.5},
			{-0.5, -0.5, -0.4375, 0.5, -0.4375, 0.5},
	}
}

local slope_cbox_long = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5,   -1.5,  0.5, -0.375, 0.5},
		{-0.5, -0.375, -1.25, 0.5, -0.25,  0.5},
		{-0.5, -0.25,  -1,    0.5, -0.125, 0.5},
		{-0.5, -0.125, -0.75, 0.5,  0,     0.5},
		{-0.5,  0,     -0.5,  0.5,  0.125, 0.5},
		{-0.5,  0.125, -0.25, 0.5,  0.25,  0.5},
		{-0.5,  0.25,   0,    0.5,  0.375, 0.5},
		{-0.5,  0.375,  0.25, 0.5,  0.5,   0.5},
	}
}

local icorner_cbox = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, 0.4375, 0.5, 0.4375, 0.5},
			{-0.5, -0.5, 0.375, 0.5, 0.375, 0.5}, 
			{-0.5, -0.5, 0.3125, 0.5, 0.3125, 0.5},  
			{-0.5, -0.5, 0.25, 0.5, 0.25, 0.5},
			{-0.5, -0.5, 0.1875, 0.5, 0.1875, 0.5},
			{-0.5, -0.5, 0.125, 0.5, 0.125, 0.5}, 
			{-0.5, -0.5, 0.0625, 0.5, 0.0625, 0.5}, 
			{-0.5, -0.5, 0, 0.5, 0, 0.5},
			{-0.5, -0.5, -0.0625, 0.5, -0.0625, 0.5},
			{-0.5, -0.5, -0.125, 0.5, -0.125, 0.5}, 
			{-0.5, -0.5, -0.1875, 0.5, -0.1875, 0.5},
			{-0.5, -0.5, -0.25, 0.5, -0.25, 0.5}, 
			{-0.5, -0.5, -0.3125, 0.5, -0.3125, 0.5},
			{-0.5, -0.5, -0.375, 0.5, -0.375, 0.5},
			{-0.5, -0.5, -0.4375, 0.5, -0.4375, 0.5},
			{-0.5, -0.5, -0.5, -0.4375, 0.4375, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.375, 0.5}, 
			{-0.5, -0.5, -0.5, -0.3125, 0.3125, 0.5},
			{-0.5, -0.5, -0.5, -0.25, 0.25, 0.5}, 
			{-0.5, -0.5, -0.5, -0.1875, 0.1875, 0.5},
			{-0.5, -0.5, -0.5, -0.125, 0.125, 0.5},
			{-0.5, -0.5, -0.5, -0.0625, 0.0625, 0.5}, 
			{-0.5, -0.5, -0.5, 0, 0, 0.5},
			{-0.5, -0.5, -0.5, 0.0625, -0.0625, 0.5}, 
			{-0.5, -0.5, -0.5, 0.125, -0.125, 0.5}, 
			{-0.5, -0.5, -0.5, 0.1875, -0.1875, 0.5}, 
			{-0.5, -0.5, -0.5, 0.25, -0.25, 0.5}, 
			{-0.5, -0.5, -0.5, 0.3125, -0.3125, 0.5},
			{-0.5, -0.5, -0.5, 0.375, -0.375, 0.5}, 
			{-0.5, -0.5, -0.5, 0.4375, -0.4375, 0.5},
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
local i45_cbox = {
	type = "fixed",
	fixed = {
			{0.375, -0.5, -0.5, 0.5, 0.5, 0.5},
			{-0.5, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.375, -0.5, 0.25, 0.5, 0.5, 0.5},
			{0.25, -0.5, -0.375, 0.5, 0.5, 0.5},
			{-0.25, -0.5, 0.125, 0.5, 0.5, 0.5},
			{0.125, -0.5, -0.25, 0.5, 0.5, 0.5},
			{0, -0.5, -0.125, 0.5, 0.5, 0.5},
			{-0.125, -0.5, 0, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5},
			{-0.5, -0.5, -0.375, 0.5, -0.25, 0.5},
			{-0.5, -0.5, -0.25, 0.5, -0.125, 0.5},
			{-0.5, -0.5, -0.125, 0.5, 0, 0.5},
			{-0.5, -0.5, 0, 0.5, 0.125, 0.5},
			{-0.5, -0.5, 0.125, 0.5, 0.25, 0.5},
			{-0.5, -0.5, 0.25, 0.5, 0.375, 0.5}, 
			{-0.375, -0.5, -0.5, 0.5, -0.25, 0.5},
			{-0.25, -0.5, -0.5, 0.5, -0.125, 0.5},
			{-0.125, -0.5, -0.5, 0.5, 0, 0.5}, 
			{0, -0.5, -0.5, 0.5, 0.125, 0.5}, 
			{0.125, -0.5, -0.5, 0.5, 0.25, 0.5},
			{0.25, -0.5, -0.5, 0.5, 0.375, 0.5},
	}
}
local o45_cbox = {
	type = "fixed",
	fixed = {
			{-0.4375, -0.5, 0.375, 0.5, -0.375, 0.5}, 
			{0.375, -0.5, -0.4375, 0.5, -0.375, 0.5}, 
			{0.25, -0.5, -0.3125, 0.5, -0.375, 0.5}, 
			{-0.3125, -0.5, 0.25, 0.5, -0.375, 0.5}, 
			{0.125, -0.5, -0.1875, 0.5, -0.375, 0.5}, 
			{-0.1875, -0.5, 0.125, 0.5, -0.375, 0.5}, 
			{0, -0.5, 0, 0.5, -0.375, 0.5}, 
			{0.375, -0.5, -0.3125, 0.5, -0.25, 0.5}, 
			{-0.3125, -0.5, 0.375, 0.5, -0.25, 0.5}, 
			{0.25, -0.5, -0.1875, 0.5, -0.25, 0.5}, 
			{-0.1875, -0.5, 0.25, 0.5, -0.25, 0.5}, 
			{0.125, -0.5, 0, 0.5, -0.25, 0.5}, 
			{0, -0.5, 0.125, 0.5, -0.25, 0.5},
			{0.375, -0.5, -0.1875, 0.5, -0.125, 0.5},
			{-0.1875, -0.5, 0.375, 0.5, -0.125, 0.5},
			{0.25, -0.5, 0, 0.5, -0.125, 0.5},
			{0, -0.5, 0.25, 0.5, -0.125, 0.5},
			{0.125, -0.5, 0.125, 0.5, -0.125, 0.5},
			{0.375, -0.5, 0, 0.5, 0, 0.5},
			{0, -0.5, 0.375, 0.5, 0, 0.5},
			{0.25, -0.5, 0.125, 0.5, 0, 0.5},
			{0.125, -0.5, 0.25, 0.5, 0, 0.5},
			{0.375, -0.5, 0.375, 0.5, 0.4375, 0.5},
			{0.375, -0.5, 0.25, 0.5, 0.3125, 0.5},
			{0.375, -0.5, 0.125, 0.5, 0.1875, 0.5},
			{0.25, -0.5, 0.375, 0.5, 0.3125, 0.5},
			{0.125, -0.5, 0.375, 0.5, 0.1875, 0.5},
			{0.25, -0.5, 0.25, 0.5, 0.1875, 0.5},
	}
}
local ocorner_cbox = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, 0.4375, -0.4375, 0.4375, 0.5},
			{-0.5, -0.5, 0.375, -0.375, 0.375, 0.5},
			{-0.5, -0.5, 0.3125, -0.3125, 0.3125, 0.5},
			{-0.5, -0.5, 0.25, -0.25, 0.25, 0.5},
			{-0.5, -0.5, 0.1875, -0.1875, 0.1875, 0.5},
			{-0.5, -0.5, 0.125, -0.125, 0.125, 0.5},
			{-0.5, -0.5, 0.0625, -0.0625, 0.0625, 0.5},
			{-0.5, -0.5, 0, 0, 0, 0.5},
			{-0.5, -0.5, -0.0625, 0.0625, -0.0625, 0.5},
			{-0.5, -0.5, -0.125, 0.125, -0.125, 0.5},
			{-0.5, -0.5, -0.1875, 0.1875, -0.1875, 0.5},
			{-0.5, -0.5, -0.25, 0.25, -0.25, 0.5},
			{-0.5, -0.5, -0.3125, 0.3125, -0.3125, 0.5},
			{-0.5, -0.5, -0.375, 0.375, -0.375, 0.5},
			{-0.5, -0.5, -0.4375, 0.4375, -0.4375, 0.5},
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
		{-0.5, -0.5,   -0.5,  0.5, -0.375, 0.5},
		{-0.5, -0.375, -0.25, 0.5, -0.25,  0.5},
		{-0.5, -0.25,  0,    0.5, -0.125, 0.5},
		{-0.5, -0.125, 0.25, 0.5,  0,     0.5},
	}
}

local slope_backhalf_cbox = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5,   -0.5,  0.5, 0.125, 0.5},
		{-0.5, 0.125, -0.25, 0.5, 0.25,  0.5},
		{-0.5, 0.25,  0,    0.5, 0.375, 0.5},
		{-0.5, 0.375, 0.25, 0.5,  0.5,     0.5},
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
local peek_cbox = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, -0.4375, 0.5, -0.4375, 0.4375},
			{-0.5, -0.5, -0.375, 0.5, -0.375, 0.375},
			{-0.5, -0.5, -0.3125, 0.5, -0.3125, 0.3125},
			{-0.5, -0.5, -0.25, 0.5, -0.25, 0.25},
			{-0.5, -0.5, -0.1875, 0.5, -0.1875, 0.1875},
			{-0.5, -0.5, -0.125, 0.5, -0.125, 0.125},
			{-0.5, -0.5, -0.0625, 0.5, -0.0625, 0.0625},
		}
	}
local valley_cbox = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, -0.5, -0.5, -0.4375, 0.4375, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.375, 0.5},
			{-0.5, -0.5, -0.5, -0.3125, 0.3125, 0.5},
			{-0.5, -0.5, -0.5, -0.25, 0.25, 0.5},
			{-0.5, -0.5, -0.5, -0.1875, 0.1875, 0.5},
			{-0.5, -0.5, -0.5, -0.125, 0.125, 0.5},
			{-0.5, -0.5, -0.5, -0.0625, 0.0625, 0.5},
			{0.4375, -0.5, -0.5, 0.5, 0.4375, 0.5},
			{0.375, -0.5, -0.5, 0.5, 0.375, 0.5},
			{0.3125, -0.5, -0.5, 0.5, 0.3125, 0.5},
			{0.25, -0.5, -0.5, 0.5, 0.25, 0.5},
			{0.1875, -0.5, -0.5, 0.5, 0.1875, 0.5},
			{0.125, -0.5, -0.5, 0.5, 0.125, 0.5},
			{0.0625, -0.5, -0.5, 0.5, 0.0625, 0.5},
		}
	}
local curve_cbox = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, 0.375, 0.5, 0.125, 0.5},
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, -0.5, -0.125, 0.5, -0.375, 0.5},
			{-0.5, -0.5, 0.0625, 0.5, -0.25, 0.5},
			{-0.5, -0.5, 0.25, 0.5, -0.0625, 0.5},
			{-0.5, -0.5, 0.25, 0.5, -0.0625, 0.5},
			{-0.5, -0.5, 0.0625, 0.5, -0.25, 0.5},
			{-0.5, -0.5, 0.1875, 0.5, -0.1875, 0.5},
		}
	}

local slopes = {   --shape , Description , mesh , colbox
	{ "slope" ,        "Slope" ,                      	 "mymeshnodes_twelve-twelve.obj",       slope_cbox},
	{ "slope_ic" ,     "Inside Corner Slope" ,        	 "mymeshnodes_twelve-twelve-ic.obj",    icorner_cbox},
	{ "slope_oc" ,     "Outside Corner Slope" ,       	 "mymeshnodes_twelve-twelve-oc.obj",    ocorner_cbox},	

	{ "slope_i45" ,     "Inside 45 Slope" ,        	 	 "mymeshnodes_diag1.obj",    i45_cbox},
	{ "slope_o45" ,     "Outside 45 Slope" ,       		 "mymeshnodes_diag2.obj",    o45_cbox},

	{ "lslope" ,       "Long Slope" ,                 	 "mymeshnodes_six-twelve.obj",     	slope_cbox_long},
	{ "lslope_ic" ,    "Inside Corner Long Slope" ,   	 "mymeshnodes_six-twelve-ic.obj",    	icorner_cbox_long},
	{ "lslope_oc" ,    "Outside Corner Long Slope" ,	 "mymeshnodes_six-twelve-oc.obj",    	ocorner_cbox_long},
	{ "lslope_top" ,   "Long Slope Top" ,  		 "mymeshnodes_lslope_top.obj",    	longslope_top_cbox},
	{ "lslope_bot" ,   "Long Slope Bottom" ,  	 "mymeshnodes_lslope_bot.obj",    	longslope_bottom_cbox},
	{ "smpyramid" ,    "Small Pyramid" ,  		 "mymeshnodes_smpyramid.obj",    	smpyr_cbox},	
	{ "pyramid" ,      "Pyramid" ,   			 "mymeshnodes_pyramid.obj",    		pyr_cbox},	
	{ "smquapyramid" , "Small Quarter Pyramid" , "mymeshnodes_smquapyramid.obj",    	smquapyramid_cbox},		
	{ "quapyramid" ,   "Quarter Pyramid" ,		 "mymeshnodes_quapyramid.obj",    	quapyramid_cbox},	
	{ "circle" , 	   "Circle" ,				 "mymeshnodes_circle.obj",    		circle_cbox},	
	{ "pole" , 	   	   "Pole" ,				 	 "mymeshnodes_pole.obj",    		pole_cbox},	
	{ "ichalf" , 	   "Inside Corner Half" ,	 "mymeshnodes_ichalf.obj",    		""},
	{ "cylinder" ,     "Cylinder" ,   			 "mymeshnodes_cylinder.obj",    	""},	
	{ "sphere" ,       "Sphere" ,     			 "mymeshnodes_sphere.obj",    		""},	
	{ "rounded" ,      "Rounded" ,  			 "mymeshnodes_rounded.obj",    		""},	
	{ "roundedc" ,     "Rounded Corner" ,  		"mymeshnodes_rounded_corner.obj",    	""},
	{ "cone" ,         "Cone" ,  				 "mymeshnodes_cone.obj",    		""},	
	{ "blob" ,         "Blob" ,  				 "mymeshnodes_blob.obj",    		""},	
	{ "peek" ,         "Peek" ,  				 "mymeshnodes_peek.obj",    		peek_cbox},
	{ "valley" ,       "Valley" ,  				 "mymeshnodes_valley.obj",    		valley_cbox},
	{ "curve" ,        "Curve" ,  				 "mymeshnodes_curve.obj",    		curve_cbox},
	{ "oct" ,          "Octagon" ,  			 "mymeshnodes_oct.obj",    		""},
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
	use_texture_alpha = 'clip',
	groups = {choppy=2, oddly_breakable_by_hand=2, not_in_creative_inventory=1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = colbox,
	selection_box = colbox,
})

end

local shape1_cbox = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, -0.25, 0.5, 0, 0.25},
		}
	}
local shape2_cbox = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, -0.25, 0.5, 0, 0.25},
			{-0.25, -0.5, -0.5, 0.25, 0, 0.5}
		}
	}
local shape3_cbox = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, -0.25, 0.5, 0, 0.25},
			{-0.25, -0.5, -0.5, 0.25, 0, 0.25}
		}
	}
local shape4_cbox = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, -0.25, 0.25, 0, 0.25},
			{-0.25, -0.5, -0.5, 0.25, 0, 0.25}
		}
	}
local halfshapes = {
{"shape1","Shape 1", shape1_cbox},
{"shape2","Shape 2", shape2_cbox},
{"shape3","Shape 3", shape3_cbox},
{"shape4","Shape 4", shape4_cbox},
}
for i in ipairs (halfshapes) do
local shapename = halfshapes[i][1]
local descn = halfshapes[i][2]
local nbox = halfshapes[i][3]

minetest.register_node("mymeshnodes:"..shapename.."_"..material, {
	description = descr.." "..descn,
	drawtype = "mesh",
	mesh = "mymeshnodes_"..shapename..".obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, not_in_creative_inventory=1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = nbox,
	selection_box = nbox,
})
end
end
