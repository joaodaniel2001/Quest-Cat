#region  /// Teclas de Movimento

direita = keyboard_check(ord("D")); /// Andar para a Direita
esquerda = keyboard_check(ord("A")); /// Andar para a Esquerda
cima = keyboard_check_pressed(ord("W")); /// Pular

hveloc = (direita - esquerda) * veloc;

if direita{
	direc = 0;
	sprite_index = spr_player_run;
}else if esquerda{
	direc = 1;
	sprite_index = spr_player_esquerda_run;
}else{
	if direc == 0{
		sprite_index = spr_player_idle;
	}else if direc == 1{
		sprite_index = spr_payer_esquerda_idle;
	}
}

if !place_meeting(x ,y + 1, obj_parede){
	vveloc += gravidade;
}else{

if cima{
	vveloc = -2.8;
	}
}

if place_meeting(x + hveloc, y, obj_parede){
	while !place_meeting(x + sign(hveloc), y, obj_parede){
		x += sign(hveloc);
	}
	hveloc = 0;
}

x += hveloc;

if place_meeting(x, y + vveloc, obj_parede){
	while !place_meeting(x, y + sign(vveloc), obj_parede){
		y += sign(vveloc)
	
	}
	vveloc = 0;
	
}

y += vveloc;
	
#endregion

#region // PORTA

if distance_to_object(obj_porta) <= 5{
	if keyboard_check_pressed(ord("F")){
		room_goto_next();
	}
}

#endregion

#region


if distance_to_object(obj_par_npc) <= 10{
	if keyboard_check_pressed(ord("F")) and global.dialogo == false	{
		var _npc = instance_nearest(x, y, obj_par_npc){
		var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo);
		_dialogo.npc_nome = _npc.nome;
		}
	}
}

#endregion

if keyboard_check_pressed(ord("R")){
	room_restart();
}