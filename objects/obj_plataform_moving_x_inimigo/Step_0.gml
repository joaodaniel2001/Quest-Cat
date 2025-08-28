
hveloc = dir * vveloc;

if (instance_place(x+hveloc,y,obj_par_npc)){
	dir*=-1;
}

var _colisao = place_meeting(x+vveloc,y,obj_par_npc) or place_meeting(x,y -1, obj_par_npc);

if (_colisao){
	with(obj_par_npc){
		if (!place_meeting(x+other.hveloc,y,obj_parede_inimigo)){
			x += other.hveloc;
		}
	}
}

x += hveloc;