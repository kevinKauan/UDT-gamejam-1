estado_persegue = function () {
    if (instance_exists(alvo)) {
        var direcao = point_direction(x, y, alvo.x, alvo.y);
        var vx = lengthdir_x(velocidade, direcao);
        var vy = lengthdir_y(velocidade, direcao);
        
        x += vx;
        y += vy;
    }
}

// Opção 2 steep obj_inimigo

if (!instance_exists(obj_personagem)) {
    exit;
}

var _direcao = point_direction(x, y, obj_personagem.x, obj_personagem.y);
var _distancia = point_distance(x, y, obj_personagem.x, obj_personagem.y);

if (_distancia > distancia_parar) {
    velocidade_horizontal = lengthdir_x(velocidade, _direcao);
    velocidade_vertical = lengthdir_y(velocidade, _direcao);
} else {
    velocidade_horizontal = 0;
    velocidade_vertical = 0;
}
x += velocidade_horizontal;

if (place_meeting(x, y + velocidade_vertical, obj_colisao)) {
    while (!place_meeting(x, y + sign))
}