/// @desc Calls scr_ChangeLayer()

upKey = keyboard_check_pressed(ord("W"));
if (upKey) {
	with (obj_level){
		if (currentLayerLevel == MID){
			proposedLayerLevel = FAR;
			scr_ChangeLayer();
		}
	}
}