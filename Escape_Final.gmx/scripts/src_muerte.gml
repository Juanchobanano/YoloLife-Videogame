if(!final and !reto and !aventura){ // Despues de haber pasado el juego que no le cuente mas muertes.
    Muertes++;
}
with(obj_per){
    self.x = pre_x;
    self.y = pre_y;
    gravity = 0;
}
audio_play_sound(sn_muerte,1,0);
