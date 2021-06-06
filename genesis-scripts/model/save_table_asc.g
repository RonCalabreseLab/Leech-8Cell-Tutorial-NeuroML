/*
// This works for tab_func_gen
function save_table (file, path)
str file
str path

file = {file} @ ".m"
openfile {file} w

int i
for (i = 0; i<=1600000; i =i+1) 
writefile {file} {getfield {path} table->table[{i}]}
end

closefile {file}
end
*/

// for channels with just an activation variable
function save_table_X (file, path)
str file
str path
file = {file} @ ".m"
openfile {file} w
int i
for (i = 0; i<=3000; i =i+1) 
   writefile {file} {getfield {path} X_A->table[{i}]}  \
   "   " {getfield {path} X_B->table[{i}]}  
end
closefile {file}
end

// for channels with activation and inactivations variables
function save_table_XY (file, path)
str file
str path
file = {file} @ ".m"
openfile {file} w
int i
for (i = 0; i<=3000; i =i+1) 
   writefile {file} {getfield {path} X_A->table[{i}]}  \
   "   " {getfield {path} X_B->table[{i}]} \ 
   "   " {getfield {path} Y_A->table[{i}]}  \
   "   " {getfield {path} Y_B->table[{i}]}
end
closefile {file}
end

