// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_personagem_movendo(){

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
	
	if keyboard_check_pressed(vk_space){
		image_index = 0;
		estado = scr_personagem_atacando;
		
		  // Direita
		if direc == 0{
			instance_create_layer(x + 14, y - 6, "Instances", obj_hitbox);
		} // Esquerda
		else if direc == 1{
			instance_create_layer(x - 14, y - 6, "Instances", obj_hitbox);
		}
	}		
}
	
function scr_personagem_atacando(){
	if direc == 0{
		sprite_index = spr_player_atacando;
	}else if direc == 1{
		sprite_index = spr_player_atacando_esquerda;
		}
		if scr_fim_da_animacao(){
			estado = scr_personagem_movendo;
		}
	}
