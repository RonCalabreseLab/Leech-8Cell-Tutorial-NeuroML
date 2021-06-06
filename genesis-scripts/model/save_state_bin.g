// save objects to a binary file using genesis save command
// In addition to the state variables of the channels the state of the spikegen
// object is also saved.
// To restore the state variables of a model from a file type restore filename
// adds ".bin" to the end of the filename

function save_state_bin (file)

str file
file ={file} @ ".bin" 

save /##[][OBJECT=tabchannel] {file}
save /##[][OBJECT=synchan] {file} -append
save /##[][OBJECT=compartment] {file} -append
save /##[][OBJECT=newspikegen] {file} -append
save /##[][OBJECT=SynG_object] {file} -append
save /##[][OBJECT=SynS_object] {file} -append

end


























