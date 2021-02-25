function scr_ChangeLayer() {
	/*
	When objects overlap, and the same key is checked to move between layers, the layer appears to not change.
	CAUSE: Key check runs twice instantly which moves from current layer to proposed layer and back to current layer, appears to not work.

	When the objects do not overlap then the layer change occurs as expected.
	CAUSE: As the key check is not executing twice it works as expected.
	*/
	with(obj_level){
		// This if statment is a test while testing reorganized layer groups.
		if(room != room_enemyPath_test){
		switch(currentLayerLevel){
			/*
			// If the player is moving from the Near Layer to the Mid Layer.
			case NEAR:
					if(proposedLayerLevel == MID){
						instance_activate_layer("Instances_LayerMID");
						instance_deactivate_layer("Instances_LayerNEAR");
						currentLayerLevel = NEAR;
					}
					break;
					*/
			// If the player is moving from the Mid Layer to either the Far layer or the Near layer.
			case MID:
					if(proposedLayerLevel == FAR){
						instance_activate_layer("Instances_LayerFAR");
						layer_set_visible("Assets_LayerFAR", true);
						instance_deactivate_layer("Instances_LayerMID");
						layer_set_visible("Assets_LayerMID", false);
						currentLayerLevel = FAR;
					}
					/* Once Near Layer is set up this should work
					else if(proposedLayerLevel == NEAR){
						instance_activate_layer("Instances_LayerNEAR");
						instance_deactivate_layer("Instances_LayerMID");
						currentLayerLevel = NEAR;
					}
					*/
					break;
			// If the player is moving from the Far layer to the Mid layer.
			case FAR:
					if(proposedLayerLevel == MID){
						instance_activate_layer("Instances_LayerMID");
						layer_set_visible("Assets_LayerMID", true);
						instance_deactivate_layer("Instances_LayerFAR");
						layer_set_visible("Assets_LayerFAR", false);
						currentLayerLevel = MID;
					}
					break;
		}	
		}
		// else statment and body are for test as is the above if statment.
		else {
		switch(currentLayerLevel){
			case MID:
					if(proposedLayerLevel == FAR){
						instance_activate_layer("Instances_LayerFAR");
						instance_deactivate_layer("Instances_LayerMID_Enemy");
						instance_deactivate_layer("Instances_LayerMID_CollisionBlocks");
						instance_deactivate_layer("Instances_LayerMID_Grass");
						instance_deactivate_layer("Instances_LayerMID_Doors");
						currentLayerLevel = FAR;
					}
					break;
			case FAR:
					if(proposedLayerLevel == MID){
						instance_activate_layer("Instances_LayerMID_Enemy");
						instance_activate_layer("Instances_LayerMID_CollisionBlocks");
						instance_activate_layer("Instances_LayerMID_Grass");
						instance_activate_layer("Instances_LayerMID_Doors");
						instance_deactivate_layer("Instances_LayerFAR");
						currentLayerLevel = MID;
					}
					break;
		}	
		}
	}


}
