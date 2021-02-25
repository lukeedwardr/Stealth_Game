/// @desc Calls scr_ChangeLayer()

downKey = keyboard_check_pressed(ord("S"));
if (downKey) {
	with (obj_level){
		if (currentLayerLevel == FAR){
			proposedLayerLevel = MID;
			scr_ChangeLayer();
		}
	}
}