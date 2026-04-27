//plant updates
{
//caneweed
if(global.compendium.caneweed.harvest_number >= 50)
{
	global.compendium.caneweed.harvest_req = infinity;
	global.compendium.caneweed.description = ("It sprung off from tripweeds, and then, with its natural toxins, killed off wildlife that used tripweeds as food. They have completely outcompeted their counterpart.")
}
else if(global.compendium.caneweed.harvest_number >= 20)
{
	global.compendium.caneweed.harvest_req = 50;
	global.compendium.caneweed.description = ("A plant that has been killing native wildlife here. It appeared one day and never stopped spreading. It seemed to have evolved from the native tripweed, which went from harmless to very toxic.")
}
else if(global.compendium.caneweed.harvest_number >= 10)
{
	global.compendium.caneweed.harvest_req = 20;
	global.compendium.caneweed.description = ("A plant that has been killing native wildlife here. It appeared one day and never stopped spreading. It seems like it might be related to a native plant, however seems to have developed... different... properties.")
}
else if(global.compendium.caneweed.harvest_number >= 5)
{
	global.compendium.caneweed.harvest_req = 10;
	global.compendium.caneweed.description = ("An invasive plant that has been killing native wildlife here. It appeared one day and never stopped spreading. I'm starting to see rashes on my skin under my suit from touching these.")
}
else if(global.compendium.caneweed.harvest_number > 0)
{
	global.compendium.caneweed.harvest_req = 5;
	global.compendium.caneweed.description = ("An invasive plant that has been killing native wildlife here. It appeared one day and never stopped spreading.")
}

//bluegrass
if(global.compendium.bluegrass.harvest_number > 30)
{
	global.compendium.bluegrass.harvest_req = infinity;
	global.compendium.bluegrass.description = ("Small greenish-blue grasses that grow on this planet. The Caneweeds have been bad news for these grasses. Their mature forms secrete toxins in the ground preventing the growth of bluegrass.")
}
else if(global.compendium.bluegrass.harvest_number > 0)
{
	global.compendium.bluegrass.harvest_req = 30;
	global.compendium.bluegrass.description = ("Small greenish-blue grasses that grow on this planet. Fewer have been growing as of late.")
}

//altertree
if(global.compendium.altertree.harvest_number > 5)
{
	global.compendium.altertree.harvest_req = infinity;
	global.compendium.altertree.description = ("A tree with purple leaves. It turns out the reason they are so small is because of toxins that have spread through the soil.")
}
else if(global.compendium.altertree.harvest_number > 0)
{
	global.compendium.altertree.harvest_req = 5;
	global.compendium.altertree.description = ("A tree with purple leaves. Much smaller than trees typically found on Earth, but these trees are by all means, fully grown.")
}

//tripweed
if(global.compendium.tripweed.harvest_number > 15)
{
	global.compendium.tripweed.harvest_req = infinity;
	global.compendium.tripweed.description = ("A small weed. They taste quite sweet, and were eaten by herbivores on this planet before the Caneweed fiasco. Speaking of which, the Tripweed is a distant relative of the Caneweed.")
}
else if(global.compendium.tripweed.harvest_number > 5)
{
	global.compendium.tripweed.harvest_req = 15;
	global.compendium.tripweed.description = ("A small weed. They taste quite sweet, and were eaten by herbivores on this planet before the Caneweed fiasco.")
}
else if(global.compendium.tripweed.harvest_number > 0)
{
	global.compendium.tripweed.harvest_req = 5;
	global.compendium.tripweed.description = ("A small weed. They taste quite sweet.")
}

//violetbloom
if(global.compendium.violetbloom.harvest_number >= 20)
{
	global.compendium.violetbloom.harvest_req = infinity;
	global.compendium.violetbloom.description = ("A flower native to this world. It's a decomposer that has been thriving because of all the plants and animals the Caneweeds have killed off that it can now feed on.")
}
else if(global.compendium.violetbloom.harvest_number >= 10)
{
	global.compendium.violetbloom.harvest_req = 20;
	global.compendium.violetbloom.description = ("A flower native to this world. It's a decomposer that started growing more frequently as of late.")
}
else if(global.compendium.violetbloom.harvest_number > 0)
{
	global.compendium.violetbloom.harvest_req = 10;
	global.compendium.violetbloom.description = ("A flower native to this world. Started growing more frequently as of late.")
}
 
//eye blossom
if(global.compendium.eye_blossom.harvest_number >= 5)
{
	global.compendium.eye_blossom.harvest_req = infinity;
	global.compendium.eye_blossom.description = ("A somewhat matured caneweed. A menace that spreads toxic spores, causing rampant reproduction, and polluting the soil with toxins.")
}
else if(global.compendium.eye_blossom.harvest_number > 0)
{
	global.compendium.eye_blossom.harvest_req = 5;
	global.compendium.eye_blossom.description = ("A somewhat matured caneweed. They have developed a strange flower that looks like an eye.")
}

//giant eye blossom
if(global.compendium.giant_eye_blossom.harvest_number >= 3)
{
	global.compendium.giant_eye_blossom.harvest_req = infinity;
	global.compendium.giant_eye_blossom.description = ("A massive, fully matured caneweed. I don't even want to touch this thing. It can move on its own. It can spread nasty spores. It can kill off a majority of plants in the nearby area. Why am I gathering this?")
}
else if(global.compendium.giant_eye_blossom.harvest_number > 0)
{
	global.compendium.giant_eye_blossom.harvest_req = 3;
	global.compendium.giant_eye_blossom.description = ("A fully matured caneweed. Grows as tall as the trees on earth!")
}



}

if (keyboard_check_pressed(vk_backspace))
{
	if (page_present == true)
	{
		page_present = false;
		global.char_can_move = true;
	}
	else
	{
		page_present = true;	
	}
}

if (page_present == true)
{
	global.char_can_move = false;	
	
	if(keyboard_check_pressed(vk_up) && pos > 0)
	{
		pos--;
	}
	if(keyboard_check_pressed(vk_down) && pos < array_length(allPlants)-1)
	{
		pos++;
	}
	
	if(pos >= (page+1)*5)
	{
		page++;
	}
	else if(pos < (page)*5)
	{
		page--	
	}
}

