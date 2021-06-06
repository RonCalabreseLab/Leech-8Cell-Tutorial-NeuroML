
/*
** functions for filling tab channels
*/

function FillTableTau(gate, table, A, B, C, Shift, E)
//A -- constant, B--- amplitude, C-- slope, Shift---nshift, E-- midpoint
    str gate
    str table
    int i=1
    float A, B, C, E, Shift, value, tmp
     for (i = 0; i <= 100; i = {i} + 1)
        tmp ={C}*((-.100+.0015*i)-{Shift}-{E})
        value = {A}+{B}/(1+{exp {tmp}})
        // echo {i}, {value} 
	setfield {gate} {table}->table[{i}] {value}
     end
end

function FillTableTau_Na(gate, table, A, B, C, Shift, E)
//A -- constant, B--- amplitude, C-- slope, Shift---nshift, E-- midpoint
    str gate
    str table
    int i=1
    float A, B, C, E, Shift, value, tmp, replace, replace2  
    // replace = .02   
    replace =.01
    // replace2 = 300
    replace2 = 300
     for (i = 0; i <= 100; i = {i} + 1)
        tmp ={C}*((-.100+.0015*i)-{Shift}-{E})
        value = ({A}+{B}/(1+{exp {tmp}}))  \      
           +{replace}*2/({exp {replace2*(-.100+.0015*i-{Shift}+.022)}}+ \
           {exp {-replace2*(-.100+.0015*i-{Shift}+.022)}})
//        echo {i}, {value}
	setfield {gate} {table}->table[{i}] {value}
     end
end


function FillTableTau_CaF(gate, table)
  str gate
  str table
  int i
  float value
  for (i = 0; i <= 100; i = {i} + 1)
   //   .011 .024
value = .011+.024*2/({exp {-330*(-.100+.0015*i+.0467)}}+{exp {330*(-.100+.0015*i+.0467)}})
   setfield {gate} {table}->table[{i}] {value}
  end
end



function FillTableInf(gate, table, A, B, C, Shift, E)
//A -- constant, B--- amplitude, C-- slope, Shift---nshift, E-- midpoint
    str gate
    str table
    int i=1
    float A, B, C, E, Shift, value, tmp
  	for (i = 0; i <= 100; i = i + 1)
        tmp ={C}*((-.100+.0015*i)-{Shift}-{E})
        value = {A}+{B}/(1+{exp {tmp}}) 
  	setfield {gate} {table}->table[{i}] {value}
    end
end

function FillTableInf_h(gate, table, A, B, C, Shift, E)
//A -- constant, B--- amplitude, C-- slope, Shift---nshift, E--midpoint
    str gate
    str table
    int i=1
    float A, B, C, E, Shift, value, tmp
  	for (i = 0; i <= 100; i = i + 1)
        tmp ={C}*((-.100+.0015*i)-{Shift}-{E})
        value = {A}+{B}/(1+2.0*{exp {tmp}}+{exp {500*((-.100+.0015*i)+.047)}}) 
  	setfield {gate} {table}->table[{i}] {value}
    end
end

function FillTableTau_KF(gate, table, A, B, C, Shift, E)
//A -- constant, B--- amplitude, C-- slope, Shift---nshift, E-- midpoint
    str gate
    str table
    int i=1
    float A, B, C, E, Shift, value, tmp, replace, replace2  
    // replace = .02   
    replace =-2.2
    // replace2 = 300
    replace2 = 100
     for (i = 0; i <= 100; i = {i} + 1)
        tmp ={C}*((-.100+.0015*i)-{Shift}-{E})
        value = ({A}+{B}/(1+{exp {tmp}}))  \      
           +{replace}*2/({exp {replace2*(-.100+.0015*i-{Shift}+.040)}}+ \
           {exp {-replace2*(-.100+.0015*i-{Shift}+.040)}})
//        echo {i}, {value}
	setfield {gate} {table}->table[{i}] {value}
     end
end













