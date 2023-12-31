// Verificar se o jogador está perto da porta
var dist_max = 15; // Ajuste essa distância conforme necessário

if (point_distance(Player.x, Player.y, obj_fim_level.x, obj_fim_level.y) < dist_max)
{
    // O jogador está perto da porta
    if (room_next(room) != -1)
    {
        // Transição para a próxima sala
        room_goto_next();
		
    }
    else
    {
        // Transição para a sala específica (Room1, neste caso)
        room_goto(Room1);
    }
}
else
{
    // O jogador não está perto da porta, não faça nada
}