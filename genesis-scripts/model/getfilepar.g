// genesis

function getfilepar (fname, nopar)

str fname 
int nopar 
 
// This function reads a command file
// and sets a simulation parameter to the
// first value in the command file, that
// does not have a 1 as the first value in the line.
// It then rewrites the command file to reflect
// the processing of the current parameter.

// first make a table for the parameter values since
// GENESIS doesn't have number arrays

if ({exists /tmpt} ==1)
   delete /tmpt
end

create table /tmpt
call /tmpt TABCREATE {nopar-1} 1 {nopar-1}
//                    xdivs  xmin xmax

str tmpfname
tmpfname = {fname} @ ".tmp"

openfile {fname} r
openfile {tmpfname} w

int lines
int i
int j
int done= 0
str tmp

lines ={readfile {fname}}  // read first line of text file -> # of lines
echo lines= {lines}

writefile {tmpfname} {lines}

for (i=0; i < lines; i = i+1)
tmp = {readfile {fname} -l }

if (done ==1)
   writefile {tmpfname} {tmp}//after reading from one line don't alter the rest
else
   if ({getarg {arglist {tmp}} -arg 1} ==1)
      writefile {tmpfname} {tmp}
   else
      for (j=0; j< {nopar}; j=j+1)
         setfield /tmpt table->table[{j}] {getarg {arglist {tmp}} -arg {j+2}}
      end
      writefile {tmpfname} {strsub {tmp} 0 1}
      done =1
   end
end

end

closefile {fname}
closefile {tmpfname}
cp {tmpfname} {fname}

for (i=0; i<nopar;i=i+1)
echo {getfield /tmpt table->table[{i}]}
end

if (done ==0)
   echo -------------------------------------------------------
   echo No more parameters in command file, quitting simulation
   echo -------------------------------------------------------
   quit
end

end // end of entire function



 







