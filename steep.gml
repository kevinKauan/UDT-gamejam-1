tecla_esquerda = keyboard_check(ord("A")) or keyboard_check(vk_left);
tecla_direita  = keyboard_check(ord("D")) or keyboard_check(vk_right);
tecla_pulo     = keyboard_check_pressed(vk_space);

var movimento = tecla_direita - tecla_esquerda;
velocidade_horizontal = movimento * velocidade;

if velocidade_horizontal != 0 image_xscale = sign(velocidade_horizontal);

if place_meeting(x + velocidade_horizontal, y, obj_colisao) {
    while !place_meeting(x + sign(velocidade_horizontal), y, obj_colisao) {
        x += sign(velocidade_horizontal);
    }
    velocidade_horizontal = 0;
}
x += velocidade_horizontal;

velocidade_vertical += gravidade;

if place_meeting(x, y + velocidade_vertical, obj_colisao) {
    while !place_meeting(x, y + sign(velocidade_vertical), obj_colisao) {
        y += sign(velocidade_vertical);
    }
    velocidade_vertical = 0;
}
y += velocidade_vertical;

if place_meeting(x, y + 1, obj_colisao) and tecla_pulo {
    velocidade_vertical = -12;
}
