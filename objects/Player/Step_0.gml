var _dir = keyboard_check(ord("D"));
var _esq = keyboard_check(ord("A"));
var _baixo = keyboard_check(ord("S"));
var _cima = keyboard_check(ord("W"));

// Dialogo
if distance_to_object(obj_par_npcs) <= 10 {
	if keyboard_check_pressed(ord("F")) and global.dialogo == false {
		var _npc = instance_nearest(x, y, obj_par_npcs);
		var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo)
		_dialogo.npc_nome = _npc.nome;
		
	}
}

depth = -bbox_bottom;

// Zerar a movimentação a cada quadro
var move_x = 0;
var move_y = 0;

if (_dir) {
    move_x += 1;
    sprite_index = Duck_Move_Right;
} else if (_esq) {
    move_x -= 1;
    sprite_index = Duck_Move_Left;
}

if (_baixo) {
    move_y += 1;
    sprite_index = Duck_Move_Front;
} else if (_cima) {
    move_y -= 1;
    sprite_index = Duck_Move_Back;
}

// Verificar colisão com obj_parede
if (place_meeting(x + move_x, y, obj_parede)) {
    move_x = 0; // Impedir movimento horizontal se houver colisão
}

if (place_meeting(x, y + move_y, obj_parede)) {
    move_y = 0; // Impedir movimento vertical se houver colisão
}

// Movimentar o personagem
x += move_x;
y += move_y;

// Definir sprites de descanso se não estiver se movendo em nenhuma direção
if (!(_dir || _esq || _baixo || _cima)) {
    if (sprite_index == Duck_Move_Right) {
        sprite_index = Duck_Stand_Right;
    } else if (sprite_index == Duck_Move_Left) {
        sprite_index = Duck_Stand_Left;
    } else if (sprite_index == Duck_Move_Front) {
        sprite_index = Duck_Stand_Front;
    } else if (sprite_index == Duck_Move_Back) {
        sprite_index = Duck_Stand_Back;
    }
}


