#define uct_file_input
if (!variable_local_exists("line"))
{
  line=1;
}
if (!variable_local_exists("in"))
{
  in=1;
}
input[in]=argument0;
line+=1;
in+=1;
#define uct_file_output
if (!variable_local_exists("ou"))
{
  ou=0;
}

if failed=false
{
  if ou=0
  {
    re=output[1];
    ou=2;
    return re;
  }
  else
  {
    re=output[ou];
    ou+=1;
    return re;
  }
}
else
{
  return "Decryption failed!";
}
#define uct_file_save
input[0]=argument1;
save:=argument0;
open_line:='Encrypted with Ultima Crypt - Please do not modify!';
start_string:='s,OTv\!pFIujB{xz<D*/">Q+a3PVgqU#dilnM_2A1;Yw-LZ:HC'+"'$8GftR=bSWJ)}rc(56e|7E&40?h.]NKo9[k y%mX"
file:=file_text_open_write(save);
file_text_write_string(file,open_line);
file_text_writeln(file);

for(i:=0; i<line; i+=1)
 {
 new_line:='';
 for(j:=1; j<=string_length(input[i]); j+=1)
  {
  char:=string_char_at(input[i],j);
  val:=string_pos(char,start_string);
  new_val:=(val+j+i-1)mod(string_length(start_string))+1;
  new_char:=string_char_at(start_string,new_val);
  new_line+=new_char
  }
 file_text_write_string(file,new_line);
 file_text_writeln(file);
 }
file_text_close(file);
#define uct_file_load
var max_char, load, start_string, reading, input, char, val, new_val, new_char;
max_char:=10000;
load:=argument0;
pass:=argument1;
failed=false;
start_string:='s,OTv\!pFIujB{xz<D*/">Q+a3PVgqU#dilnM_2A1;Yw-LZ:HC'+"'$8GftR=bSWJ)}rc(56e|7E&40?h.]NKo9[k y%mX"
reading:=file_text_open_read(load);
file_text_readln(reading);
line:=0;
while !file_text_eof(reading)
 {
 input[line]:=file_text_read_string(reading);
 input[line]:=string_replace_all(input[line],'€','_');
 file_text_readln(reading);
 line+=1;
 }
file_text_close(reading);

for(i:=0; i<line; i+=1)
 {
 output[i]:='';
 for(j:=1; j<=string_length(input[i]); j+=1)
  {
  char:=string_char_at(input[i],j);
  val:=string_pos(char,start_string);
  new_val:=(val-j-i+string_length(start_string)*max_char-1)mod(string_length(start_string))+1;
  new_char:=string_char_at(start_string,new_val);
  output[i]+=new_char
  global.readamount=line;
  }
 }
 
pass2=output[0];
if (pass!=pass2)
{
  show_message("Failed to decrypt file!");
  failed=true;
  exit;
}
