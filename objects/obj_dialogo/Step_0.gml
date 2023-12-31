/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if inicializar == false {
	scr_textos();
	inicializar = true;
	alarm[0] = 1;
}


// Vai somando página se tiver mais dialogo, caso contrario, se destrói
// Também complementa o efeito maquina de escrever, para ir somando os caracteres
if keyboard_check_pressed(vk_space){
	if caractere < string_length(texto[pagina]){
		caractere = string_length(texto[pagina]);
	} else {
		// Resetando o alarme a cada dialogo para o efeito ser feito novamente a cada fala
		alarm[0] = 1;
		caractere = 0;
		
		if pagina < array_length(texto) -1{
			pagina++
		}else{
			global.dialogo = false;
			instance_destroy();
		}
	}
}












