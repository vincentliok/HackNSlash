
// player movement

if (keyboard_check(ord("W"))) {
	y += -movespeed;
}

if (keyboard_check(ord("A"))) {
	x += -movespeed;
}

if (keyboard_check(ord("S"))) {
	y += movespeed;
}

if (keyboard_check(ord("D"))) {
	x += movespeed;
}

direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = direction - 90;

// player blocking

if (mouse_check_button(mb_right)) {
	sprite_index = spr_PlayerBlock;
}
else {
	sprite_index = spr_PlayerIdle;
}

// player attacking

