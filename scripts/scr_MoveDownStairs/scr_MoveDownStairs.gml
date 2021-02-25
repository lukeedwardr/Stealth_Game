function scr_MoveDownStairs() {
	downKey = keyboard_check_pressed(ord("S"));
	if (downKey) {
		obj_player.x = obj_doorUp.x;
		obj_player.y = obj_doorUp.y;
	}


}
