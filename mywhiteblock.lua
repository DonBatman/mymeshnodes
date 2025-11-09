


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
		{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.5, -0.25, 0.5, 0, 0.5},
		{-0.5, -0.5, -0.5, 0.25, 0, 0.5},
		{-0.5, 0, -0.5, 0, 0.25, 0.5},
		{-0.5, 0, 0, 0.5, 0.25, 0.5},
		{-0.5, 0.25, 0.25, 0.5, 0.5, 0.5},
		{-0.5, 0.25, -0.5, -0.25, 0.5, 0.5},
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
local pole_cbox = {
	type = "fixed",
	fixed = {
			{-0.125, -0.5, -0.125, 0.125, 0.5, 0.125},
		}
	}
local smsquare_cbox = {
	type = "fixed",
	fixed = {
			{-0.25, -0.25, -0.25, 0.25, 0.25, 0.25},
		}
	}
local nfsquare_cbox = {
	type = "fixed",
	fixed = {
			{-0.4375, -0.4375, -0.4375, 0.4375, 0.4375, 0.4375},
		}
	}
local flat1_cbox = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5},
		}
	}
local flat2_cbox = {
	type = "fixed",
	fixed = {
			{-0.5, -0.0625, -0.5, 0.5, 0.0625, 0.5},
		}
	}
local flat3_cbox = {
	type = "fixed",
	fixed = {
			{-0.5, 0.3125, -0.5, 0.5, 0.5, 0.5},
		}
	}
local wall_cbox = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, -0.5, -0.125, 0.5, 0.5},
		}
	}
local walloc_cbox = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, -0.5, -0.125, 0.5, -0.125},
		}
	}
local wallic_cbox = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, -0.125},
			{0.125, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	}
local wallc_cbox = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, -0.125},
			{0.125, -0.5, -0.5, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, 0.5, -0.125, 0.5},
		}
	}
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

local normal_cbox = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	}
local white_block = {   --Material , Description , Item, Image
	{ "block",			"White Block",		"mywhiteblock:block",			"mywhiteblock_white.png"},
}

for i in ipairs(white_block) do
	local mat = white_block[i][1]
	local desc = white_block[i][2]
	local item = white_block[i][3]
	local img = white_block[i][4]

local slopes = {   --shape , Description , mesh , colbox
	{ "slope",			"Slope",					"mymeshnodes_twelve-twelve.obj",		slope_cbox},
	{ "slope_ic",		"Inside Corner Slope",		"mymeshnodes_twelve-twelve-ic.obj",		icorner_cbox},
	{ "slope_oc",		"Outside Corner Slope",		"mymeshnodes_twelve-twelve-oc.obj",		ocorner_cbox},
	{ "lslope",			"Long Slope",				"mymeshnodes_six-twelve.obj",			slope_cbox_long},
	{ "lslope_ic",		"Inside Corner Long Slope",	"mymeshnodes_six-twelve-ic.obj",		icorner_cbox_long},
	{ "lslope_oc",		"Outside Corner Long Slope","mymeshnodes_six-twelve-oc.obj",		ocorner_cbox_long},
	{ "slope_i45",		"Inside 45 Slope",			"mymeshnodes_diag1.obj",				i45_cbox},
	{ "slope_o45",		"Outside 45 Slope",			"mymeshnodes_diag2.obj",				o45_cbox},
	{ "lslope_top",		"Long Slope Top",			"mymeshnodes_lslope_top.obj",			slope_backhalf_cbox},
	{ "lslope_bot",		"Long Slope Bottom",		"mymeshnodes_lslope_bot.obj",			slope_fronthalf_cbox},
	{ "smpyramid",		"Small Pyramid",			"mymeshnodes_smpyramid.obj",			smpyr_cbox},
	{ "pyramid",		"Pyramid",					"mymeshnodes_pyramid.obj",				pyr_cbox},
	{ "smquapyramid",	"Small Quarter Pyramid",	"mymeshnodes_smquapyramid.obj",			smquapyramid_cbox},
	{ "quapyramid",		"Quarter Pyramid",			"mymeshnodes_quapyramid.obj",			quapyramid_cbox},
	{ "circle",			"Circle",					"mymeshnodes_circle.obj",				circle_cbox},
	{ "pole",			"Pole",						"mymeshnodes_pole.obj",					pole_cbox},
	{ "ichalf",			"Inside Corner Half",		"mymeshnodes_ichalf.obj",				slope_fronthalf_cbox},
	{ "cylinder",		"Cylinder",					"mymeshnodes_cylinder.obj",				normal_cbox},
	{ "sphere",			"Sphere",					"mymeshnodes_sphere.obj",				normal_cbox},
	{ "rounded",		"Rounded",					"mymeshnodes_rounded.obj",				normal_cbox},
	{ "roundedc",		"Rounded Corner",  			"mymeshnodes_rounded_corner.obj",		normal_cbox},
	{ "cone",			"Cone",						"mymeshnodes_cone.obj",					normal_cbox},
	{ "blob",			"Blob",						"mymeshnodes_blob.obj",					normal_cbox},
	{ "barrel",			"Barrel",					"mymeshnodes_barrel.obj",				normal_cbox},
	{ "peek",			"Peek",						"mymeshnodes_peek.obj",					peek_cbox},
	{ "valley",			"Valley",					"mymeshnodes_valley.obj",				valley_cbox},
	{ "curve",			"Curve",					"mymeshnodes_curve.obj",				curve_cbox},
	{ "oct",			"Octagon",					"mymeshnodes_oct.obj",					normal_cbox},
	{ "smsquare",		"Small Square",				"mymeshnodes_smsquare.obj",				smsquare_cbox},
	{ "95square",		"95 Square",				"mymeshnodes_95square.obj",				nfsquare_cbox},
	{ "shape1",			"Shape 1",					"mymeshnodes_shape1.obj",				shape1_cbox},
	{ "shape2",			"Shape 2",					"mymeshnodes_shape2.obj",				shape2_cbox},
	{ "shape3",			"Shape 3",					"mymeshnodes_shape3.obj",				shape3_cbox},
	{ "shape4",			"Shape 4",					"mymeshnodes_shape4.obj",				shape4_cbox},
	{ "wall",			"Wall",						"mymeshnodes_wall.obj",					wall_cbox},
	{ "wall_corner",	"Wall Corner",				"mymeshnodes_wall_corner.obj",			wallc_cbox},
	{ "wall_oc",		"Wall OC",					"mymeshnodes_wall_oc.obj",				walloc_cbox},
	{ "wall_ic",		"Wall IC",					"mymeshnodes_wall_ic.obj",				wallic_cbox},
	{ "flat1" ,         "Flat 1" ,  			 	"mymeshnodes_flat1.obj",    			flat1_cbox},
	{ "flat2" ,         "Flat 2" ,  			 	"mymeshnodes_flat2.obj",    			flat2_cbox},
	{ "flat3" ,         "Flat 3" ,  			 	"mymeshnodes_flat3.obj",    			flat3_cbox},
	{ "torus" ,         "Torus" ,  			 	 	"mymeshnodes_torus.obj",    			flat1_cbox},
}

for i in ipairs(slopes) do
	local shap = slopes[i][1]
	local des = slopes[i][2]
	local mesh = slopes[i][3]
	local colbox = slopes[i][4]
mywhiteblock = {}

mywhiteblock.colors = {
	{"black",      "Black",      "#000000"},
	{"blue",       "Blue",       "#2000c9"},
	{"brown",      "Brown",      "#954c05"},
	{"cyan",       "Cyan",       "#01ffd8"},
	{"darkgreen", "Dark Green",  "#005b07"},
	{"darkgrey",  "Dark Grey",   "#303030"},
	{"green",      "Green",      "#61ff01"},
	{"grey",       "Grey",       "#5b5b5b"},
	{"magenta",    "Magenta",    "#ff05bb"},
	{"orange",     "Orange",     "#ff8401"},
	{"pink",       "Pink",       "#ff65b5"},
	{"red",        "Red",        "#ff0000"},
	{"violet",     "Violet",     "#ab23b0"},
	{"white",      "White",      "#ffffff"},
	{"yellow",     "Yellow",     "#e3ff00"},
}
for i in ipairs (mywhiteblock.colors) do
	local col = (mywhiteblock.colors)[i][1]
	local cdes = (mywhiteblock.colors)[i][2]
	local num = (mywhiteblock.colors)[i][3]
--slope
minetest.register_node("mymeshnodes:"..shap.."_block", {
	description = des.." "..mat,
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

local paintables = {
	"mymeshnodes:slope_block","mymeshnodes:slope_ic_block","mymeshnodes:slope_oc_block","mymeshnodes:lslope_ic_block","mymeshnodes:lslope_oc_block","mymeshnodes:slope_i45_block","mymeshnodes:slope_o45_block","mymeshnodes:lslope_top_block","mymeshnodes:lslope_bot_block","mymeshnodes:smpyramid_block","mymeshnodes:pyramid_block","mymeshnodes:smquapyramid_block","mymeshnodes:circle_block","mymeshnodes:pole_block","mymeshnodes:ichalf_block","mymeshnodes:cylinder_block","mymeshnodes:sphere_block","mymeshnodes:rounded_block","mymeshnodes:roundedc_block","mymeshnodes:cone_block","mymeshnodes:blob_block","mymeshnodes:barrel_block","mymeshnodes:peek_block","mymeshnodes:valley_block","mymeshnodes:curve_block","mymeshnodes:oct_block","mymeshnodes:smsquare_block","mymeshnodes:95square_block","mymeshnodes:shape1_block","mymeshnodes:shape2_block","mymeshnodes:shape3_block","mymeshnodes:shape4_block","mymeshnodes:wall_block","mymeshnodes:wall_corner_block","mymeshnodes:wall_oc_block","mymeshnodes:wall_ic_block","mymeshnodes:flat1_block","mymeshnodes:flat2_block","mymeshnodes:flat3_block","mymeshnodes:torus_block"
}

for _, entry in ipairs(mywhiteblock.colors) do
	local color = entry[1]
	local desc = entry[2]
	local paint = "^[colorize:"..entry[3]
core.register_node("mymeshnodes:".. shap .. "_block_" .. color, {
	description = des .. " Block",
	drawtype = "mesh",
	tiles = {img..paint},
	mesh = mesh,
	paramtype = "light",
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2,cracky = 2, not_in_creative_inventory=1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = colbox,
	selection_box = colbox,
})


end
if core.get_modpath("mypaint") then
local colors = {}
for _, entry in ipairs(mywhiteblock.colors) do
	table.insert(colors, entry[1])
end
	mypaint.register(paintables, colors)
end
end
end
end
