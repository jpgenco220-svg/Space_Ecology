if keyboard_check_pressed(vk_enter)
{
	room_goto(teleport_room);
	obj_player.x = teleport_x;
	obj_player.y = teleport_y;
}