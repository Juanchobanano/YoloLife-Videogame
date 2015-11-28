nivel = argument0;
tiempo = argument1;
estrella = 0;
switch(nivel){
    case 1:
        estrella = src_if(tiempo,25,32,37); // best, medium, worst.
    break;
    case 2:
        estrella = src_if(tiempo,30,36,41); // best, medium, worst.
    break;
    case 3:
        estrella = src_if(tiempo,40,47,53); // best, medium, worst.
    break;
    case 4:
        estrella = src_if(tiempo,20,28,35); // best, medium, worst.
    break;
    case 5:
        estrella = src_if(tiempo,26,33,37); // best, medium, worst.
    break;
    case 6:
        estrella = src_if(tiempo,24,31,36); // best, medium, worst.
    break;
    case 7:
        estrella = src_if(tiempo,27,34,39); // best, medium, worst.
    break;
    case 8:
        estrella = src_if(tiempo,25,31,37); // best, medium, worst.
    break;
}
return estrella;
