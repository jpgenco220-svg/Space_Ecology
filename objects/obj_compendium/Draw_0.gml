if (page_present == true)
{
	draw_sprite(spr_paper_background, 0, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]))

	for(var _i = page*5; _i < (page+1)*5; _i++)
	{
		if(_i < array_length(allPlants))
		{
			draw_set_font(global.font);
		
			if (_i == pos)
			{
				draw_set_color(#3AA870);
				if allPlants[_i].harvest_number == 0
				{
					draw_text(camera_get_view_x(view_camera[0]) + 15, camera_get_view_y(view_camera[0]) + 72 + (53 * (_i - (page*5))), "     | ???")
				}
				else
				{
					draw_text(camera_get_view_x(view_camera[0]) + 15, camera_get_view_y(view_camera[0]) + 72 + (53 * (_i - (page*5))), "     | " + allPlants[_i].name)
				}
			}
			else
			{
				draw_set_color(#5E5E5E);
				if allPlants[_i].harvest_number == 0
				{
					draw_text(camera_get_view_x(view_camera[0]) + 15, camera_get_view_y(view_camera[0]) + 72 + (53 * (_i - (page*5))), "     ???")
				}
				else
				{
					draw_text(camera_get_view_x(view_camera[0]) + 15, camera_get_view_y(view_camera[0]) + 72 + (53 * (_i - (page*5))), "     " + allPlants[_i].name)
				}
			}
		}
	}
	
	draw_set_color(#5E5E5E);
	
	if allPlants[pos].harvest_number != 0
	{
		if (allPlants[pos] == global.compendium.eye_blossom)
		{
			draw_sprite_ext(allPlants[pos].sprite, 0, camera_get_view_x(view_camera[0]) + 365, camera_get_view_y(view_camera[0]) + 65, 1, 1, 0, c_white, 255);
		}
		else if (allPlants[pos] == global.compendium.giant_eye_blossom)
		{
			draw_sprite_ext(allPlants[pos].sprite, 0, camera_get_view_x(view_camera[0]) + 345, camera_get_view_y(view_camera[0]) + 40, 1, 1, 0, c_white, 255);
		}
		else
		{
			draw_sprite_ext(allPlants[pos].sprite, 0, camera_get_view_x(view_camera[0]) + 375, camera_get_view_y(view_camera[0]) + 70, 1, 1, 0, c_white, 255);
		}
	}
	
	if allPlants[pos].harvest_req != infinity
	{
		draw_text(camera_get_view_x(view_camera[0]) + 450, camera_get_view_y(view_camera[0]) + 100, "Harvested: " + string(allPlants[pos].harvest_number) + "/" + string(allPlants[pos].harvest_req));
	}
	else
	{
		draw_text(camera_get_view_x(view_camera[0]) + 450, camera_get_view_y(view_camera[0]) + 100, "Harvested: " + string(allPlants[pos].harvest_number));
	}
	
	draw_set_color(#5E5E5E);
	draw_text_ext(camera_get_view_x(view_camera[0]) + 290, camera_get_view_y(view_camera[0]) + 164, allPlants[pos].description, 27, 300)
}
else
{
		if(global.compendium.caneweed.harvest_number == infinity &&
		global.compendium.tripweed.harvest_number == infinity &&
		global.compendium.altertree.harvest_number == infinity &&
		global.compendium.violetbloom.harvest_number == infinity &&
		global.compendium.bluegrass.harvest_number == infinity &&
		global.compendium.eye_blossom.harvest_number == infinity &&
		global.compendium.giant_eye_blossom.harvest_number == infinity)
		{
		draw_set_colour(c_black);
		draw_text(camera_get_view_x(view_camera[0]) + 200, camera_get_view_y(view_camera[0]) + 32, "The compendium is complete!")
		}
	}