function scr_PlayerIsSeen() {
	// Will make vision cone go red when player is in collision with it.
	// As soon as player moves out of collision the cone will turn green.
	if(instance_exists(obj_enemy_vision)){
		if(canBeSeen == true){
			if(place_meeting(x, y, obj_enemy_vision)){
				obj_enemy_vision.sprite_index = spr_enemy_vision_seen;
				// Player has been killed by enemy
				// This should be 
				obj_player.sprite_index = spr_player_humanoid_dead;
			}
			else{
				obj_enemy_vision.sprite_index = spr_enemy_vision_unseen;
			}
		}
		else{
			obj_enemy_vision.sprite_index = spr_enemy_vision_unseen;
		}
	}
	// Check if the player is in grass.
	// If they are then enemy cannot see them.
	// LATER: When more objects that can be used for hiding are created the place meeting should be put on a parent class of all these objects.
	if(instance_exists(obj_grass)){
		if(place_meeting(x, y, obj_grass)){
			canBeSeen = false;
		}
		else{
			canBeSeen = true;
		}
	}


}
