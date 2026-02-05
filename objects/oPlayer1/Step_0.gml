right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

d_key = keyboard_check(ord("D"));
a_key = keyboard_check(ord("A"));
w_key = keyboard_check(ord("W"));
s_key = keyboard_check(ord("S"));

x_spd = ((right_key - left_key) + (d_key - a_key)) * mv_spd;
y_spd = ((down_key - up_key) + (s_key - w_key)) * mv_spd;

// Collisions

if place_meeting(x + x_spd, y, oWall) == true
	{
	x_spd = 0;
	}

if place_meeting(x, y + y_spd, oWall) == true
	{
	y_spd = 0;
	}

x += x_spd;
y += y_spd;