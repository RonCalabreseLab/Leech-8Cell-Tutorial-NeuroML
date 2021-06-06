/*  NOTE:  For technical reasons, you must have write access to at least one
    file if you want to load a parameter file from disk.  If you do not have
    write access to the tutorial directory, you will need to give the name of
    a file to which you do have write access.  To do this, do the following:

    1)  Edit "{file_prefix}/tutorial/loadfile.g" on the line marked "line 1" to 
        be the name of a new file in a directory to which you can write.

    2)  Replace "tutorial/loadfile.g" on the line marked "line 2" with this
        file name.                                                            */


function loadscript(name)
str name

  sh cat {name}.g > {file_prefix}/tutorial/loadfile.g  // line 1
  include tutorial/loadfile.g                          // line 2

end
