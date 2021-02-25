function scr_PlayerControls() {
	// Variables
	// Using to move left and right
	leftKey = keyboard_check(ord("A"));
	rightKey = keyboard_check(ord("D"));
	// Will be 1, 0 or -1 depending
	var local_MoveSpeed = rightKey - leftKey;
	// Sets the speed
	horizontalSpeed = local_MoveSpeed * 6;
	// Pull player down
	verticalSpeed += gravityCustom;


	// Horizontal Collision
	if (place_meeting(x+horizontalSpeed, y, obj_collision_parent)){
		while(!place_meeting(x+sign(horizontalSpeed), y, obj_collision_parent)){
			x += sign(horizontalSpeed);
		}
		horizontalSpeed = 0;
	}
	// Assigns speed to player's movement
	x += horizontalSpeed;


	// Vertical Collision
	if (place_meeting(x, y+verticalSpeed, obj_collision_parent)){
		while(!place_meeting(x, y+sign(verticalSpeed), obj_collision_parent)){
			y += sign(verticalSpeed);
		}
		verticalSpeed = 0;
	}
	y += verticalSpeed;


}
