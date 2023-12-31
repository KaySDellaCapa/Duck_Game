/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _guil = display_get_gui_width();
var _guia = display_get_gui_height();

var _xx = 0
var _yy = _guia - 40
var _c = c_purple

// Antes de ler o texto, primeiro vai passar para essa variavel
var _texto = string_copy(texto[pagina], 0, caractere);

draw_set_font(fnt_dialogo)
//draw_sprite(Cat_Text_Box, -1, 0, room_height -100);
draw_rectangle_color(_xx, _yy, _guil, _guia, _c, _c, _c, _c, false)
draw_text_ext(_xx +10, _yy + 10, _texto, 10, _guil -20)













