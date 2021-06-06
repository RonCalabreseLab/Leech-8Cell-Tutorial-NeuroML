// control panels for hn simulation

function step_tstep
	float tstep
    	call /control/tstep B1DOWN
    	tstep = {getfield /control/tstep value}
    	//call /control/dt B1DOWN
    	//dt = {getfield /forms/control/dt value}
	step {tstep} -t
end

function init
restore start_state.bin
//include start_state_asc.g
end

function make_control
	create xform /control [320,630 ,250,100]
	create xlabel /control/label  -bg cyan -label "HN MODEL"
	create xbutton /control/RESET -wgeom 33% -script reset
	create xbutton /control/INIT -xgeom 0:RESET -ygeom 0:label -wgeom 33% \
		-script init
	create xbutton /control/RUN -xgeom 0:INIT -ygeom 0:label -wgeom 33% \
		-script step_tstep
        create xdialog /control/tstep -value 20.0 -title  \
        "time (sec)" -script "set_step"
	//xshow /control **SDV** 8/99

end

function set_step
    float tstep
    // str graph
    tstep = {getfield /control/tstep value}
    //echo next run will be for {tstep} sec
    //foreach graph ({el /axon/##[TYPE=xgraph]})
    //	setfield {graph} xmax {tstep}
    //end
end

function make_scale_forms
    pushe
    create neutral /forms
    disable /forms
    ce /forms

    //-------------------------
    // GRAPH SCALE FORM
    //-------------------------

    create xform /forms/gscale [300,100,235,235] -title "Graph Scale"
    ce /forms/gscale

    create xdialog xmin [10,45,200,25] -value "???" -script  \
        "gset xmin "<widget>
    create xdialog xmax [10,80,200,25] -value "???" -script  \
        "gset xmax "<widget>
    create xdialog ymin [10,115,200,25] -value "???" -script  \
        "gset ymin "<widget>
    create xdialog ymax [10,150,200,25] -value "???" -script  \
        "gset ymax "<widget>
    create xdialog overlay [10,185,200,25] -value "???" -script  \
        "gset overlay "<widget>
    create xbutton DONE [10,10,50,25] -script "xhide /forms/gscale"

    // INITIALIZE SOME ADDED FIELDS
    addfield  /forms/gscale gpath
    setfield  /forms/gscale gpath "???"

    pope
end


function set_scale(gpath)
    str gpath
    float xmin, xmax, ymin, ymax, overlay
    xmin = {getfield {gpath} xmin}
    xmax = {getfield {gpath} xmax}
    ymin = {getfield {gpath} ymin}
    ymax = {getfield {gpath} ymax}
    overlay = {getfield {gpath} overlay}

    pushe /forms/gscale
    setfield  /forms/gscale gpath {gpath}
    setfield xmin value {xmin}
    setfield xmax value {xmax}
    setfield ymin value {ymin}
    setfield ymax value {ymax}
    setfield overlay value {overlay}
    xshow .
    pope
end

function gset(field, dialog)
    str path
    float val
    path = {getfield  /forms/gscale gpath}
    val = {getfield {dialog} value}
    echo Setting {path} {field} {val}
    setfield {path} {field} {val}
end











