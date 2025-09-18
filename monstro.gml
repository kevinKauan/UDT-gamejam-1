estado_persegue = function () {
    if (instance_exists(alvo)) {
        var direcao = point_direction(x, y, alvo.x, alvo.y);
        var vx = lengthdir_x(velocidade, direcao);
        var vy = lengthdir_y(velocidade, direcao);
        
        x += vx;
        y += vy;
    }
}
