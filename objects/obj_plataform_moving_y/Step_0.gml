velv = direcao * velocidade;

	
//invertendo a direção da plataforma ao colidir com algum obstáculo
if (instance_place(x, y  + velv, obj_parede_inimigo))
{
	direcao *= -1;	
	if (velv < 0)
	{
		sprite_index = spr_plataform_moving;
		velv = grav;
	}
else
	{
		sprite_index = spr_plataform_moving;
	}
}

var _colisao = place_meeting(x, y + velv, obj_player_2) or place_meeting(x, y -1, obj_player_2) ;
if (_colisao)
{
	with(obj_player_2)
	{
		if (!place_meeting(x, y + other.velv, obj_parede_inimigo))
		{
			y += other.velv ;
		}
	}
}


y += velv;