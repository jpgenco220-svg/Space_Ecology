x = 0;
y = 0;

right_key = keyboard_check(vk_right) || keyboard_check(ord("D"));
left_key = keyboard_check(vk_left) || keyboard_check(ord("A"));
up_key = keyboard_check(vk_up) || keyboard_check(ord("W"));
down_key = keyboard_check(vk_down) || keyboard_check(ord("S"));

face = RIGHT;

x_speed = 0;
y_speed = 0;

move_speed = 4;

global.char_can_move = true;
