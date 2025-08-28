if cutscene = true{
	vspeed = +5
	cooldowncutscene = 5
}

if cutscene = false{
	vspeed = 0
}

if cutscene = true and y > 100 and walking = false{
	cutscene = false
	cooldownactionboss = 500
}

if cooldowncutscene	> 1 and cooldowncutscene < 3{
	walking = true
}

cooldowncutscene = cooldowncutscene -1
cooldownactionboss = cooldownactionboss -1

if walking = true and cooldownactionboss > 1{
	if wl = true{
		hspeed = -5
	}
	
	if wr = true{
		hspeed = 5
	}
	
	if wl = true and cooldownwalking < 0 and place_meeting(x, y, obj_parede_inimigo){
		cooldownwalking = 10
		wl = false;
		wr = true;
	}
	
	if wr = true and cooldownwalking < 0 and place_meeting(x, y, obj_parede_inimigo){
		cooldownwalking = 5	
		wr = false;
		wl = true;
	}
}

cooldownwalking = cooldownwalking -1

if walking = true and cooldownactionboss < 1{
	if x != 320 and hspeed != 0{
		move_towards_point(320,y,5)
	}
	
	if x = 320{
		hspeed = 0
	}
	if hspeed = 0{
		walking = false
		cooldownactionboss = 500;
		shooting = true
	}
}

if shooting = true and cooldownactionboss > 1{
	if cooldownshooting < 0{
		instance_create_depth(obj_boss.x, obj_boss.y, -1, obj_tiroboss)
		cooldownshooting = 65	
	}
}

cooldownshooting = cooldownshooting -1

if shooting = true and cooldownactionboss < 0{
	shooting = false
	cooldownactionboss = 300
	tired = true
}

if tired = true and cooldownactionboss < 0{
	tired = false
	cooldownactionboss = 500
	walking = true
}