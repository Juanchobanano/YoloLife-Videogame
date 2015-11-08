tiempo = argument0;
best = argument1; // mejor (3 estrellas).
medium = argument2; // normal (2 estrellas).
low = argument3; // peor (1 estrella).
estrella = 0;

if(tiempo <= best){
    estrella = 3;
}else if(tiempo > best and tiempo <= medium){
    estrella = 2;
}else if(tiempo > medium and tiempo <= low){
    estrella = 1;
}else{
    estrella = 0;
}

return estrella;
