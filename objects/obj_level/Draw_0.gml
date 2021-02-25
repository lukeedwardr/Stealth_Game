/// @descr Testing UI

draw_text(10, 10, "A: move left");
draw_text(10, 25, "D: move right");

// Player is hidden or is seen TEST UI
if (instance_exists(obj_enemy_vision)){
	if (obj_enemy_vision.sprite_index = spr_enemy_vision_seen){
		draw_set_colour(c_white);
		draw_text(750, 10, "Enemy can see you.");
	}
}
if (instance_exists(obj_grass)){
	with(obj_player){
		if (canBeSeen == false){
			draw_text(750, 10, "You are hidden.");
		}
	}
}