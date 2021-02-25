function scr_MoveUpStairs() {
	upKey = keyboard_check_pressed(ord("W"));
	if (upKey) {
		obj_player.x = obj_doorDown.x;
		obj_player.y = obj_doorDown.y;
	}


}
