  
if inicializar == false{
	scr_textos();
	inicializar = true;
}

	if caractere < string_length(texto_grid[# Infos.Texto, pagina]){
		if keyboard_check_pressed(ord("E")){
		caractere = string_length(texto_grid[# Infos.Texto, pagina]);
		}	
	}else{
	if pagina < ds_grid_height(texto_grid) - 1{
		if keyboard_check_pressed(ord("E")){	
		alarm[0] = 1;
		caractere = 0;
		pagina++;
		}
	}else{
		if op_num != 0{
			op_draw = true;
		}else{
			if keyboard_check_pressed(ord("E")){
			global.dialogo = false;
			instance_destroy();
				}
			}
		}	
	}	