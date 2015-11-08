ds_list_add(trampa2,argument0);
if(ds_list_find_value(trampa,pos) != ds_list_find_value(trampa2,pos)){
    ds_list_destroy(trampa2); pos = 0;
    trampa2 = ds_list_create();
}else{
    pos++;
    if(pos>=5){
        Rooms++;
        room_goto_next(); pos = 0;
        ds_list_destroy(trampa2);
        trampa2 = ds_list_create();
    }
}

/*
for(pos = 0; pos < ds_list_size(trampa); pos++){
    if(ds_list_find_value(trampa2,pos) != ds_list_find_value(trampa,pos)){
        break;
    }
}
