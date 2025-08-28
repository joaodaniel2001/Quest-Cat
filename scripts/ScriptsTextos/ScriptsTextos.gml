		
	function scr_textos(){
	
#region /// Dialogo casa
	switch npc_nome{
case "Casa":
			ds_grid_add_text("Sir, I regret to inform you that but your ball of wool has been stolen by Tobias Barata.", spr_retrato_mago, 1, "Mage");
			ds_grid_add_text("This can’t be real. I will now go to him and retrieve my dear and precious ball.", spr_retrato_gato, 0, "Sr Oswald");
			ds_grid_add_text("Tobias Barata is dangerous. You ______ be careful.", spr_retrato_mago, 1, "Mage");
				add_op("Will",							"Resposta 1");
				add_op("May",							"Resposta 2");
				add_op("Should",						"Resposta 3");
		break;
				case "Resposta 1":
					ds_grid_add_text("I didn't understand, Sir. Would you like me to repeat? (Wrong Answer)", spr_retrato_mago, 1, "Mage");
				break;
				case "Resposta 2":
					ds_grid_add_text("What? I didn't understand.. (Wrong Answer)", spr_retrato_mago, 1, "Mage");
				break;
				case "Resposta 3":
					ds_grid_add_text("I hope you manage to recover your most precious possession..", spr_retrato_mago, 1, "Mage");
				break;
}
#endregion

#region /// Dialogo do Primeiro Nível

switch npc_nome{	
	
	case "Primeiro Nivel":
		ds_grid_add_text("You're skilled with this sword!", spr_retrato_mago, 1, "Mage");
		ds_grid_add_text("You bravely _________ the enemy!", spr_retrato_mago, 1, "Mage");
					add_op("Dispached",				"Resposta 4");
					add_op("Dispatched",					"Resposta 5");
					add_op("Dispatch",					"Resposta 6");
		break;
			case "Resposta 4":
					ds_grid_add_text("I didn't quite grasp what you've just said.. (Wrong Answer)", spr_retrato_mago, 1, "Mage");	
		break;	
			case "Resposta 6":
					ds_grid_add_text("I didn't understand? Would you like me to repeat? (Wrong Answer)", spr_retrato_mago, 1, "Mage");
		break;
			case "Resposta 5":
					ds_grid_add_text("Certainly! You may proceed..", spr_retrato_mago, 1, "Mage");
					ds_grid_add_text("However, be cautious, I've heard there are cannons on the way.", spr_retrato_mago, 1, "Mage");
		break;
}
	
#endregion

#region /// Dialogo da Caverna

		switch npc_nome{
	case "Caverna_1":
				ds_grid_add_text("If you thought what you went through before was bad, you won't fare well now.", spr_retrato_mago, 1, "Mage");
				ds_grid_add_text("In this stage, you must collect three keys to advance to the next level.", spr_retrato_mago, 1, "Mage");
				ds_grid_add_text("I ___ him with your ball of yarn near that green wall. You must go there.", spr_retrato_mago, 1, "Mage");
					add_op("See",					"Resposta 7");
					add_op("Saw",					"Resposta 8");
					add_op("Sea",					"Resposta 9");
			break;
					case "Resposta 7":
						ds_grid_add_text("I didn't understand, Sir. Would you like me to repeat? (Wrong Answer)", spr_retrato_mago, 1, "Mage");
					break;
					case "Resposta 8":
						ds_grid_add_text("Be cautious, Sir.", spr_retrato_mago, 1, "Mage");
					break;
					case "Resposta 9":
						ds_grid_add_text("What? I didn't understand. (Wrong Answer)", spr_retrato_mago, 1, "Mage");
break;
		}

	switch npc_nome{
	case "Placa_Caverna":
				ds_grid_add_text("The sign reads: ''Be cautious, behind this door lies the dwelling of the dreaded Tobias Barata''.", spr_retrato_gato, 0, "Sr Oswald");
			break;
}

#endregion

#region /// Dialogo do Capanga

	switch npc_nome{
		case "Capanga":
		ds_grid_add_text("Exactly as my lord said... You have finally arrived.", spr_retrato_capanga, 1, "Capanga");
		ds_grid_add_text("I presume you want your Ball of Wool back.", spr_retrato_capanga, 1, "Capanga");
		ds_grid_add_text("However, to recover it, you have to demonstrate that you excel in the use of MODAL VERBS and SIMPLE PAST better than I do!", spr_retrato_capanga, 1, "Capanga");
		ds_grid_add_text("Just to let you know, if you get any question wrong, you'll have to do them ALL OVER AGAIN.", spr_retrato_capanga, 1, "Capanga");

		ds_grid_add_text("What modal verb is used to indicate ability?", spr_retrato_capanga, 1, "Capanga");
					add_op("May",						"Wrong");
					add_op("Can",						"Pergunta 2");
					add_op("Must",						"Wrong");
	break;
		case "Pergunta 2":
		ds_grid_add_text("What modal verb is used to indicate obrigation?", spr_retrato_capanga, 1, "Capanga");
					add_op("May",						"Wrong");
					add_op("Can",						"Wrong");
					add_op("Must",						"Pergunta 3");
	break;
		case "Pergunta 3":
		ds_grid_add_text("What modal verb is used to indicate permission?", spr_retrato_capanga, 1, "Capanga");
					add_op("May",						"Pergunta 4");
					add_op("Can",						"Wrong");
					add_op("Must",						"Wrong");
	break;
		case "Pergunta 4":
		ds_grid_add_text("Past Simple of Took", spr_retrato_capanga, 1, "Capanga");
					add_op("Noone",						"Pergunta 5");
					add_op("Take",						"Wrong");
					add_op("Teek",						"Wrong");
	break;
		case "Pergunta 5":
		ds_grid_add_text("You're quite good at English... But I won't go easy on you..", spr_retrato_capanga, 1, "Capanga");
		ds_grid_add_text("The modal ______ expresses an obligation in the past.", spr_retrato_capanga, 1, "Capanga");
					add_op("Will",						"Wrong");
					add_op("Had to",					"Pergunta 6");
					add_op("Need to",					"Wrong");
	break;
		case "Pergunta 6":
		ds_grid_add_text("Is the phrase correct? You should listen to me.", spr_retrato_capanga, 1, "Capanga");
					add_op("Yes",					"Pergunta 7");
					add_op("No",					"Wrong");
					add_op("Maybe",					"Wrong");
	break;
		case "Pergunta 7":
		ds_grid_add_text("Is that phrase correct? Have you bought the tickets?", spr_retrato_capanga, 1, "Capanga");
					add_op("No",						"Wrong");
					add_op("Yes",						"Pergunta 8");
					add_op("Maybe",						"Wrong");
	break;
		case "Pergunta 8":
		ds_grid_add_text("The modal _________ indicates a past necessity.", spr_retrato_capanga, 1, "Capanga");
					add_op("Want to",					"Wrong");
					add_op("Had to",					"Wrong");
					add_op("Needed to",					"Pergunta 9");
	break;
		case "Pergunta 9":
		ds_grid_add_text("The modal _______ is used to express advice, suggestions, recommendations, or mild obligations in the present.", spr_retrato_capanga, 1, "Capanga");
					add_op("Shild",							"Wrong");
					add_op("Shall",							"Wrong");
					add_op("Should",						"Pergunta 10");
	break;
		case "Pergunta 10":
		ds_grid_add_text("The modal _______ is used to express strong obligations or requirements.", spr_retrato_capanga, 1, "Capanga");
					add_op("Have to",					"Pergunta 11");
					add_op("Had to",					"Wrong");
					add_op("Has to",					"Wrong");
	break;
		case "Pergunta 11":
		ds_grid_add_text("Now that you've proven yourself worthy to speak with Tobias Barata, you may proceed.", spr_retrato_capanga, 1, "Capanga");	
	break;

#region // Resposta Errada

	case "Wrong":
					ds_grid_add_text("You're bad at this.. Are you at least making an effort?", spr_retrato_capanga, 1, "Capanga");
	break;
		

}

#endregion

#endregion

#region /// Dialogo antes do Boss
	switch npc_nome{
case "Antes do Boss":
			ds_grid_add_text("Sir, are you sure you want to retrieve your ball of wool? This could be dangerous.", spr_retrato_mago, 1, "Mage");
			ds_grid_add_text("The entrance to Tobias Barata's house is guarded by a huge and dangerous sentry, and if he spots you, he won't hesitate to kill you.", spr_retrato_mago, 1, "Mage");
			ds_grid_add_text("I need to retrieve what belongs to me.", spr_retrato_gato, 0, "Sr Oswald");
			ds_grid_add_text("Take care, sir. I wish you luck.", spr_retrato_mago, 1, "Mage");
		break;

}
#endregion

#region /// Dialogo do Tobias
	switch npc_nome{
case "Tobias":
			ds_grid_add_text("At last, you found me.. It was taking a while.", spr_retrato_tobias, 1, "Tobias Barata");
			ds_grid_add_text("Give me back what you stole from me!", spr_retrato_gato, 0, "Sr Oswald");
			ds_grid_add_text("It won't be as easy as you expected. I'm going to ask you 10 questions about what has already happened. If you answer them correctly, you can retrieve your ball of wool.", spr_retrato_tobias, 1, "Tobias Barata");
			ds_grid_add_text("I would do anything to get my ball of wool back!", spr_retrato_gato, 0, "Sr Oswald");
			
			ds_grid_add_text("What is the modal verb for expressing ability?", spr_retrato_tobias, 1, "Tobias Barata");
						add_op("Can",						"Pergunta 1.2");
						add_op("Must",						"Wrong_Tobias");
						add_op("May",						"Wrong_Tobias");
						add_op("Would",						"Wrong_Tobias");
			break;
			case "Pergunta 1.2":
			ds_grid_add_text("Which modal verb is often used to indicate necessity or strong obligation?", spr_retrato_tobias, 1, "Tobias Barata");
						add_op("Can",						"Wrong_Tobias");
						add_op("Must",						"Pergunta 1.3");
						add_op("May",						"Wrong_Tobias");
						add_op("Would",						"Wrong_Tobias");
			break;
			case "Pergunta 1.3":
			ds_grid_add_text("Can you give an example of a sentence using ''may'' to express permission?", spr_retrato_tobias, 1, "Tobias Barata");
						add_op("She may visited the museum yesterday",			"Wrong_Tobias");
						add_op("I may go to the party tonight.",				"Wrong_Tobias");
						add_op("You may submit your report by Friday",			"Wrong_Tobias");
						add_op("May I borrow your book, please?",				"Pergunta 1.4");
			break;
			case "Pergunta 1.4":
			ds_grid_add_text("Which modal verb is used to make polite requests?", spr_retrato_tobias, 1, "Tobias Barata");
						add_op("Can",						"Wrong_Tobias");
						add_op("Should",					"Wrong_Tobias");
						add_op("Could",						"Pergunta 1.5");
						add_op("Would",						"Wrong_Tobias");
			break;
			case "Pergunta 1.5":
			ds_grid_add_text("You do well enough, but I doubt you can get these right.", spr_retrato_tobias, 1, "Tobias Barata");
			ds_grid_add_text("What does ''might'' often indicate when used in a sentence?", spr_retrato_tobias, 1, "Tobias Barata");
						add_op("Is often used to indicate high probability in the present",						"Wrong_Tobias");
						add_op("Often indicates a talk about a past action that happened for sure",				"Wrong_Tobias");
						add_op("Often used to make a polite request",											"Wrong_Tobias");
						add_op("Often indicates a possibility or a less certain degree of probability.",		"Pergunta 1.6");
			break;
			case "Pergunta 1.6":
			ds_grid_add_text("In a sentence like ''You must wear a helmet when riding a bike'', what does ''must'' express?", spr_retrato_tobias, 1, "Tobias Barata");
						add_op("Expresses permission.",							"Wrong_Tobias");
						add_op("Expresses possibility.",						"Wrong_Tobias");
						add_op("Expresses a strong obligation or necessity.",	"Pergunta 1.7");
						add_op("Expresses ability.",							"Wrong_Tobias");
			break;
			case "Pergunta 1.7":
			ds_grid_add_text("Is that phase correct? If you have the flu, you should take a remedy", spr_retrato_tobias, 1, "Tobias Barata");
						add_op("Yes",					"Pergunta 1.8");
						add_op("No",					"Wrong_Tobias");
						add_op("Maybe",					"Wrong_Tobias");
			break;
			case "Pergunta 1.8":
			ds_grid_add_text("Can you provide an example of a sentence using ''could'' for past ability?", spr_retrato_tobias, 1, "Tobias Barata");
						add_op("She could swim tomorrow.",							"Wrong_Tobias");
						add_op("She could swim when she was five.",					"Pergunta 1.9");
						add_op("She could swim next week.",							"Wrong_Tobias");
						add_op("She could swim in the future",						"Wrong_Tobias");
			break;
			case "Pergunta 1.9":
			ds_grid_add_text("Is this phrase correct? You must never retrieve your ball of yarn.", spr_retrato_tobias, 1, "Tobias Barata");
						add_op("True",										"Wrong_Tobias");
						add_op("False",										"Pergunta 1.10");
						add_op("Maybe",										"Wrong_Tobias");
			break;
			case "Pergunta 1.10":
			ds_grid_add_text("What modal verb is used to express a weaker obligation or recommendation?", spr_retrato_tobias, 1, "Tobias Barata");
						add_op("Can",						"Wrong_Tobias");
						add_op("Should",					"Pergunta 1.11");
						add_op("May",						"Wrong_Tobias");
						add_op("Would",						"Wrong_Tobias");
			break;
			case "Pergunta 1.11":
				ds_grid_add_text("How is this possible? I thought I was the best!", spr_retrato_tobias, 1, "Tobias Barata");
				ds_grid_add_text("But a bet's a bet, your ball of yarn is in the chest behind me.", spr_retrato_tobias, 1, "Tobias Barata");
			break;
					case "Wrong_Tobias":
						ds_grid_add_text("I knew you weren't clever enough to beat me. (Wrong Answer)", spr_retrato_tobias, 1, "Tobias Barata");
					break;
}
#endregion

#region /// Dialogo Baú
	switch npc_nome{
case "Baú":
			ds_grid_add_text("Finally, I managed to retrieve my ball of yarn!", spr_retrato_gato, 0, "Sr Oswald");
			ds_grid_add_text("That's all...", spr_retrato_mago, 1, "Mage");
			ds_grid_add_text("Thank you for playing our game!", spr_retrato_mago, 1, "Mage");
break;
}
#endregion

	}

#region // Códigos do Dialogo

	function ds_grid_add_row(){
		///@arg ds_grid
 
		var _grid = argument[0];
		ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1);
		return(ds_grid_height(_grid)-1);	
	}

	function ds_grid_add_text(){
		///@arg texto
		///@arg retrato
		///@arg lado
		///@arg nome
 
		var _grid = texto_grid;
		var _y = ds_grid_add_row(_grid);
 
		_grid[# 0, _y] = argument[0];
		_grid[# 1, _y] = argument[1];
		_grid[# 2, _y] = argument[2];
		_grid[# 3, _y] = argument[3];
	}
	
	function add_op(_texto, _resposta){	

		op[op_num] = _texto;
		op_resposta[op_num] = _resposta;
	
		op_num++;
	
	}
	
#endregion