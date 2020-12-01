
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

// player direction

direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = direction - 90;


// player actions

if (mouse_check_button_pressed(mb_right)) {
	state = "blocking";
	attack_timer = room_speed * attack_duration;
}

if (mouse_check_button_released(mb_right)) {
	state = "idle";
	attack_timer = room_speed * attack_duration;
}

if (mouse_check_button_pressed(mb_left)) {
	state = "attacking";
}

if (state == "blocking") {
	sprite_index = spr_PlayerBlock;
}

if (state == "attacking") {
	sprite_index = spr_PlayerAttack;
	attack_timer--;
	if (attack_timer <= 0) {
		state = "idle";
		attack_timer = room_speed * attack_duration;
	}
}

if (state == "idle") {
	sprite_index = spr_PlayerIdle;
}