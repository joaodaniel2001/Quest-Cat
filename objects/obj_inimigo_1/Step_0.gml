
event_inherited();

if vida > 0{
	
	if place_meeting(x ,y, obj_parede_inimigo){
		if direc == 0{
			direc = 1;
		}else if direc == 1{
			direc = 0;
		}
	}

	// Andando para a direita

	if direc == 0{
		sprite_index = spr_inimigo_direito;
		x += veloc;
	} // Andando para a esquerda
	else if direc == 1{
		sprite_index = spr_inimigo_esquerdo;
		x -= veloc;
	}
}