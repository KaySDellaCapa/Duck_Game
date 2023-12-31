nome = "Cat"

estado = noone;
tempo_estado = room_speed * 10;
timer_estado = 0;
destino_x = x;
destino_y = y;

velh = 0;
velv = 0;
vel = 1;

sprite = sprite_index;
xscale = 1;
yscale = 1;

muda_estado = function(_estado)
{
    tempo_estado--;
    timer_estado = irandom(tempo_estado);

    if (timer_estado == tempo_estado or tempo_estado <= 0)
    {
        estado = _estado[irandom(array_length(_estado) - 1)];
        tempo_estado = room_speed * 10;
        desenha_sprite();
    }
}

desenha_sprite = function()
{
    draw_sprite_ext(sprite, image_index, x, y, xscale, yscale, image_angle, image_blend, image_alpha);
}

estado_parado = function()
{
    sprite = Cat_Stand_Front;
	
    velh = 0;
    velv = 0;
	
    desenha_sprite();
	
    muda_estado([estado_passeando, estado_parado]);
}

estado_passeando = function()
{
    sprite = Cat_Stand_Right;
    var _dist = point_distance(x, y, destino_x, destino_y);

    if (_dist < 50)
    {
        destino_x = random(room_width);
        destino_y = random(room_height);
    }

    var _dir = point_direction(x, y, destino_x, destino_y);
	
	if (velh !=0)
	{
		xscale = sign(velh)
	}
	
	
    velh = lengthdir_x(vel, _dir);
    velv = lengthdir_y(vel, _dir);

    desenha_sprite();
    muda_estado([estado_parado, estado_passeando]);
}

estado = estado_parado;