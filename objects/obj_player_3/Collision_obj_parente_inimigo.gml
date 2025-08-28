
if other.vida > 0 and place_meeting(x,y,obj_tiroboss){
	
	if alarm[0] <= 0{
	
		vida -=1;
		alarm[0] = inv_tempo; // 3 segundos não podendo tomar hit
		
	}
}