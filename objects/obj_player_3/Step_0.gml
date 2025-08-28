
if object_exists(obj_player_2){
	
	script_execute(estado);

}
#region // Dialogo


if distance_to_object(obj_par_npc) <= 10{
	if keyboard_check_pressed(ord("F")) and global.dialogo == false	{
		var _npc = instance_nearest(x, y, obj_par_npc){
		var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo);
		_dialogo.npc_nome = _npc.nome;
		}
	}
}

if keyboard_check_pressed(ord("R")){
	room_restart();
}
	

#endregion

#region // Combate

if alarm[0] > 0{
	if image_alpha >= 1{
		alfa_hit = -0.05;
	}else if image_alpha <= 0{
		alfa_hit = 0.05;
	}
	image_alpha += alfa_hit;
}else{
	image_alpha = 1;
}

#endregion

if vida = 0{	
		room_restart()
}
	
#region // PORTA

if distance_to_object(obj_porta) and distance_to_object(obj_portal2) <= 5{
	if keyboard_check_pressed(ord("F")){
		room_goto_next();
	}
}

#endregion

#region // CHAVE

if chave = 3{
			instance_destroy(obj_parede_porta);
	}
#endregion

if mouse_check_button(mb_left) and tiro < 0{
	instance_create_depth(obj_player_3.x, obj_player_3.y, -1, obj_tiroplayer);
	tiro = 10
}

tiro = tiro -1