if not instance_exists(obj_boss){
	instance_create_depth(obj_parede_portal.x, obj_parede_portal.y, -1, obj_portal2)
	instance_destroy(obj_parede_portal)

}