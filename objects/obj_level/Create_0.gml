/// @desc Hide Layer02 at start

// Hides the second layer when the level is created
instance_deactivate_layer("Instances_LayerFAR");
layer_set_visible("Assets_LayerFAR", false);

// Using in scr_ChangeLayer to move between layers
// Always start at layer 2, will have a layer infront and behind = MID
// Layer infront will be 1 = NEAR
// Layer behind will be 3 = FAR

FAR = 3;
MID = 2;
NEAR = 1;
currentLayerLevel = MID;
proposedLayerLevel = MID;