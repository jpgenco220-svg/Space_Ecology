right_key = keyboard_check(vk_right) || keyboard_check(ord("D"));
left_key = keyboard_check(vk_left) || keyboard_check(ord("A"));
up_key = keyboard_check(vk_up) || keyboard_check(ord("W"));
down_key = keyboard_check(vk_down) || keyboard_check(ord("S"));


x_speed = (right_key - left_key) * move_speed;
y_speed = (down_key - up_key) * move_speed;

//collisions
if place_meeting(x + x_speed, y, obj_wall) == true 
{
	x_speed = 0;
}
	
if place_meeting(x, y + y_speed, obj_wall) == true
{
	y_speed = 0;
}

if global.char_can_move == true
{
	x += x_speed;
	y += y_speed;
}

{
	sprite[RIGHT] = spr_player_walk_right;
	sprite[UP] = spr_player_walk_back;
	sprite[LEFT] = spr_player_walk_left;
	sprite[DOWN] = spr_player_walk;	
}

//set sprite
mask_index = sprite[DOWN]
if y_speed == 0
{
if x_speed > 0 {face = RIGHT};
if x_speed < 0 {face = LEFT};
}
if x_speed > 0 && face == LEFT {face = RIGHT};
if x_speed < 0 && face == RIGHT {face = LEFT};
if x_speed == 0
{
if y_speed > 0 {face = DOWN};
if y_speed < 0 {face = UP};
}
if y_speed > 0 && face == UP {face = DOWN};
if y_speed < 0 && face == DOWN {face = UP};
sprite_index = sprite[face]

if x_speed == 0 && y_speed == 0
{
image_index = 0;
}