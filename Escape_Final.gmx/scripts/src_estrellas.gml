nivel = argument0;
tiempo = argument1;
estrella = 0;
switch(nivel){
    case 1:
        estrella = src_if(tiempo,23,29,35); // best, medium, worst.
    break;
    case 2:
        estrella = src_if(tiempo,25,31,36); // best, medium, worst.
    break;
    case 3:
        estrella = src_if(tiempo,35,42,47); // best, medium, worst.
    break;
    case 4:
        estrella = src_if(tiempo,13,18,25); // best, medium, worst.
    break;
    case 5:
        estrella = src_if(tiempo,1,2,3); // best, medium, worst.
    break;
}
return estrella;
