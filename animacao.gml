var esta_no_chao = place_meeting(x, y + 1, obj_colisao);

if (!esta_no_chao) {
    sprite_index = spr_pulando;
}
else {
    if (velocidade_horizontal != 0) {
        sprite_index = spr_correndo;
    } else {
        sprite_index = spr_parado;
    }
}