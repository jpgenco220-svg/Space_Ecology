function plant(_name, _description, _sprite) constructor
{
name = _name;
harvest_number = 0;
harvest_req = 0;
description = _description;
sprite = _sprite;
}

global.compendium =
{
		
	caneweed : new plant
	(
		"Caneweed",
		"",
		o_caneweed_sprite
	),
	
	bluegrass : new plant
	(
		"Bluegrass",
		"",
		o_bluegrass_sprite
	),
	
	altertree : new plant
	(
		"Altertree",
		"",
		o_altertree_sprite
	),
	
	tripweed : new plant
	(
		"Tripweed",
		"",
		o_tripweed_sprite
	),
	
	eye_blossom : new plant
	(
		"Eye Blossom",
		"",
		o_caneweed_sprite_1
	),
	
	giant_eye_blossom : new plant
	(
		"Giant Eye Blossom",
		"",
		o_caneweed_sprite_2
	),
	
	violetbloom : new plant
	(
		"Violetbloom",
		"",
		spr_violetbloom
	),
}