/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//depth = -bbox_bottom;

var player_distance = point_distance(x, y, Player.x, Player.y);

if (player_distance < activation_distance) {
    /// Key Pressed - Enter Event
    if (keyboard_check_pressed(vk_enter)) {
        // Alternar entre aberto e fechado ao pressionar Enter
        if (is_open2) {
            sprite_index = sprite_normal2; // Se estiver aberto, fechar
        } else {
            sprite_index = sprite_open2; // Se estiver fechado, abrir
        }

        is_open2 = !is_open2; // Inverter o estado (aberto/fechado)
    }
}














