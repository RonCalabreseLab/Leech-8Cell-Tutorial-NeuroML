// genesis

/*
** This file depends on functions and constants defined in defaults.g
*/

// CONSTANTS
float        ENa             =        -.012 // 0.045    //-.012
float        EK1             =        -0.070
float        EK2             =        -0.070
float        EA              =        -0.070
float        ECaF            =         .180 //0.1352 //.180
float        ECaS            =         .180 //0.1352 //.180
float        EP              =        -.012 // 0.045 
float        Eh              =         -.046  // -0.021  // -.046    

float        nashft_X        =      -.005  // -.005   units V
float        nashft_Y        =      -.005   // -.005   units V
float        k1shft1         =      -.010   // -.01
float        k1shft          =      -.010    // -.01
float        k2shft          =      -.010    // -.01
float        ashft           =      -.010    // -.01
float        CaSshft1        =        0
float        CaSshft2        =        0
float        CaFshft         =        0
float        Pshft           =        0

/***********************************************************************
                            Na-Current
 
***********************************************************************/

function make_Na_ron	// Na-current
    str chanpath = "Na_ron"
    if ({exists {chanpath}})
        return 
    end

    create  tabchannel  {chanpath}
    setfield  {chanpath}  \
         Ek     {ENa}     \
         Gbar   {250e-9}  \
         Ik     0         \
         Gk     0	  \
		 Xpower	3 \
		 Ypower	1 \
		 Zpower	0  

    call    {chanpath}    TABCREATE X 100 -0.100 0.050
                                  
    settab2const {chanpath}  X_A  0  100  0.0001    // -0.1 thru 0.05=>0.  
       //                               -150            -.023
    FillTableInf {chanpath}  X_B  0   1 -150 {nashft_X} -.024
		/* Setting the calc_mode to NO_INTERP for speed */
		setfield {chanpath} X_A->calc_mode 0 X_B->calc_mode 0

		/* tweaking the tables for the tabchan calculation */
		tweaktau {chanpath} X

		/* Filling the tables using B-SPLINE interpolation */
		call {chanpath} TABFILL X 3000 0


 call    {chanpath}    TABCREATE Y 100 -0.100 0.050
 //                             .004 .006 500            -.023
 FillTableTau_Na {chanpath} Y_A .004 .006 500 {nashft_Y} -.023
//                                       500            -.025  
 FillTableInf   {chanpath} Y_B 0     1   500 {nashft_Y} -.025	

		/* Setting the calc_mode to NO_INTERP for speed */
		setfield {chanpath} Y_A->calc_mode 0 Y_B->calc_mode 0

		/* tweaking the tables for the tabchan calculation */
		tweaktau {chanpath} Y

		/* Filling the tables using B-SPLINE interpolation */
		call {chanpath} TABFILL Y 3000 0
end

//
function make_K1_ron
    str chanpath = "K1_ron"
    if ({exists {chanpath}})
        return
    end

    create  tabchannel  {chanpath}
    setfield  {chanpath}  \
         Ek     {EK1}     \
         Gbar   {100e-9}  \
         Ik     0         \
         Gk     0         \
		 Xpower	2 \
		 Ypower	1 \
		 Zpower	0  

    call    {chanpath}    TABCREATE X 100 -0.100 0.050
    
    FillTableTau {chanpath} X_A .001 .011 150 {k1shft1} -.006
 //                                      -143
    FillTableInf {chanpath} X_B 0     1  -143 {k1shft} -.011
		/* Setting the calc_mode to NO_INTERP for speed */
		setfield {chanpath} X_A->calc_mode 0 X_B->calc_mode 0

		/* tweaking the tables for the tabchan calculation */
		tweaktau {chanpath} X

		/* Filling the tables using B-SPLINE interpolation */
		call {chanpath} TABFILL X 3000 0


 call    {chanpath}    TABCREATE Y 100 -0.100 0.050
 FillTableTau {chanpath} Y_A .500 .200 -143 {k1shft} -.003
 FillTableInf {chanpath} Y_B 0    1     111 {k1shft} -.018	

		/* Setting the calc_mode to NO_INTERP for speed */
		setfield {chanpath} Y_A->calc_mode 0 Y_B->calc_mode 0

		/* tweaking the tables for the tabchan calculation */
		tweaktau {chanpath} Y

		/* Filling the tables using B-SPLINE interpolation */
		call {chanpath} TABFILL Y 3000 0
end


function make_K2_ron
    str chanpath = "K2_ron"
    if ({exists {chanpath}})
        return
    end

    create  tabchannel  {chanpath}
    setfield  {chanpath}  \
         Ek     {EK2}     \
         Gbar   {50e-9}   \
         Ik     0         \
         Gk     0         \
		 Xpower	2 \
		 Ypower	0 \
		 Zpower	0  

    call    {chanpath}    TABCREATE X 100 -0.100 0.050
    
    FillTableTau {chanpath} X_A .057 .043 200 {k2shft} -.025
    FillTableInf {chanpath} X_B 0    1    -83 {k2shft} -.010
		/* Setting the calc_mode to NO_INTERP for speed */
		setfield {chanpath} X_A->calc_mode 0 X_B->calc_mode 0

		/* tweaking the tables for the tabchan calculation */
		tweaktau {chanpath} X

		/* Filling the tables using B-SPLINE interpolation */
		call {chanpath} TABFILL X 3000 0

end

// make A channel
function make_A_ron
    str chanpath = "A_ron"
    if ({exists {chanpath}})
        return
    end

    create  tabchannel  {chanpath}
    setfield  {chanpath}  \
         Ek     {EA}      \
         Gbar   {80e-9}   \
         Ik     0         \
         Gk     0	  \
		 Xpower	2 \
		 Ypower	1 \
		 Zpower	0  

    call    {chanpath}    TABCREATE X 100 -0.100 0.050
    //                                    0.0028
    //settab2const {chanpath}  X_A  0  100  0.010  //-0.1 thru 0.05=>0.
    
    FillTableTau {chanpath} X_A .005 .011 200 {ashft} -.020
    FillTableInf {chanpath}  X_B  0   1 -130 {ashft} -.034 
		/* Setting the calc_mode to NO_INTERP for speed */
		setfield {chanpath} X_A->calc_mode 0 X_B->calc_mode 0

		/* tweaking the tables for the tabchan calculation */
		tweaktau {chanpath} X

		/* Filling the tables using B-SPLINE interpolation */
		call {chanpath} TABFILL X 3000 0


    call    {chanpath}    TABCREATE Y 100 -0.100 0.050
    FillTableTau {chanpath} Y_A .026 .0085 -300 {ashft} -.045
    FillTableInf {chanpath} Y_B 0     1     160 {ashft} -.053	

		/* Setting the calc_mode to NO_INTERP for speed */
		setfield {chanpath} Y_A->calc_mode 0 Y_B->calc_mode 0

		/* tweaking the tables for the tabchan calculation */
		tweaktau {chanpath} Y

		/* Filling the tables using B-SPLINE interpolation */
		call {chanpath} TABFILL Y 3000 0
end


function make_h_ron
  
   str chanpath="h_ron"
   if ({exists {chanpath}})
        return
    end 
    
    create  tabchannel  {chanpath}
    setfield  {chanpath}  \
         Ek     {Eh}      \
         Gbar   {7e-9}    \
         Ik     0         \
         Gk     0         \
		 Xpower	2 \
		 Ypower	0 \
		 Zpower	0

   call    {chanpath}    TABCREATE X 100 -0.100 0.050
// add some fields                            
    FillTableTau {chanpath} X_A .700 1.700 -100 0 -.073 
    FillTableInf_h {chanpath} X_B 0 1 180 0 -.047  

		 setfield {chanpath} X_A->calc_mode 0 X_B->calc_mode 0
 
                /* tweaking the tables for the tabchan calculation */
                tweaktau {chanpath} X
 
                /* Filling the tables using B-SPLINE interpolation */
                call {chanpath} TABFILL X 3000 0
end


// make CaF
function make_CaF_ron
    str chanpath = "CaF_ron"
    if ({exists {chanpath}})
        return
    end

    create  tabchannel  {chanpath}
    setfield  {chanpath}  \
         Ek     {ECaF}    \
         Gbar   {16e-9}   \
         Ik     0         \
         Gk     0	  \
		 Xpower	2 \
		 Ypower	1 \
		 Zpower	0  

    call    {chanpath}    TABCREATE X 100 -0.100 0.050
    
    FillTableTau_CaF {chanpath} X_A 
    FillTableInf {chanpath} X_B 0 1 -600 {CaFshft} -.0467
		/* Setting the calc_mode to NO_INTERP for speed */
		setfield {chanpath} X_A->calc_mode 0 X_B->calc_mode 0

		/* tweaking the tables for the tabchan calculation */
		tweaktau {chanpath} X

		/* Filling the tables using B-SPLINE interpolation */
		call {chanpath} TABFILL X 3000 0


 call    {chanpath}    TABCREATE Y 100 -0.100 0.050
                           //.060 .310
 FillTableTau {chanpath} Y_A .060 .310   270 {CaFshft} -.055
 FillTableInf {chanpath} Y_B 0     1   350 {CaFshft} -.0555	

		/* Setting the calc_mode to NO_INTERP for speed */
		setfield {chanpath} Y_A->calc_mode 0 Y_B->calc_mode 0

		/* tweaking the tables for the tabchan calculation */
		tweaktau {chanpath} Y

		/* Filling the tables using B-SPLINE interpolation */
		call {chanpath} TABFILL Y 3000 0
end

//make CaS
function make_CaS_ron
    str chanpath = "CaS_ron"
    if ({exists {chanpath}})
        return
    end

    create  tabchannel  {chanpath}
    setfield  {chanpath}  \
         Ek     {ECaS}    \
         Gbar   {3e-9}    \
         Ik     0         \
         Gk     0         \
		 Xpower	2 \
		 Ypower	1 \
		 Zpower	0  

    call    {chanpath}    TABCREATE X 100 -0.100 0.050
                             // .005 .134
    FillTableTau {chanpath} X_A .005 .134 -400 {CaSshft1}  -.0487
    FillTableInf {chanpath} X_B  0     1  -420 {CaSshft1} -.0472
		/* Setting the calc_mode to NO_INTERP for speed */
		setfield {chanpath} X_A->calc_mode 0 X_B->calc_mode 0

		/* tweaking the tables for the tabchan calculation */
		tweaktau {chanpath} X

		/* Filling the tables using B-SPLINE interpolation */
		call {chanpath} TABFILL X 3000 0


 call    {chanpath}    TABCREATE Y 100 -0.100 0.050
                           //.200
 FillTableTau {chanpath} Y_A .200 5.250 -250 {CaSshft2} -.043
                                               // -.0512
 FillTableInf {chanpath} Y_B 0 1  360 {CaSshft2} -.055

		/* Setting the calc_mode to NO_INTERP for speed */
		setfield {chanpath} Y_A->calc_mode 0 Y_B->calc_mode 0

		/* tweaking the tables for the tabchan calculation */
		tweaktau {chanpath} Y

		/* Filling the tables using B-SPLINE interpolation */
		call {chanpath} TABFILL Y 3000 0
end

function make_P_ron
    str chanpath = "P_ron"
    if ({exists {chanpath}})
        return
    end

    create  tabchannel  {chanpath}
    setfield  {chanpath}  \
         Ek     {EP}      \
         Gbar   {10e-9}   \
         Ik     0         \
         Gk     0         \
		 Xpower	1 \
		 Ypower	0 \
		 Zpower	0  

    call    {chanpath}    TABCREATE X 100 -0.100 0.050
                              //.010 .200       -.057
    FillTableTau {chanpath} X_A .010 .200 400 {Pshft} -.057
                          //             -120 0 -.039
    FillTableInf {chanpath} X_B 0     1  -120 0 -.039
		// Setting the calc_mode to NO_INTERP for speed 
		setfield {chanpath} X_A->calc_mode 0 X_B->calc_mode 0

		// tweaking the tables for the tabchan calculation 
		tweaktau {chanpath} X

		// Filling the tables using B-SPLINE interpolation 
		call {chanpath} TABFILL X 3000 0

end


function make_K3_ron
    str chanpath = "K3_ron"
    if ({exists {chanpath}})
        return
    end

    create  tabchannel  {chanpath}
    setfield  {chanpath}  \
         Ek     {EK1}      \
         Gbar   {10e-9}   \
         Ik     0         \
         Gk     0         \
		 Xpower	1 \
		 Ypower	0 \
		 Zpower	0  

    call    {chanpath}    TABCREATE X 100 -0.100 0.050
                              //.010 .200             -.057
    FillTableTau {chanpath} X_A .020 4.0 400  0 -.020
                          //             -120 0 -.039
    FillTableInf {chanpath} X_B 0     1  -400 0 -.020
		// Setting the calc_mode to NO_INTERP for speed 
		setfield {chanpath} X_A->calc_mode 0 X_B->calc_mode 0

		// tweaking the tables for the tabchan calculation 
		tweaktau {chanpath} X

		// Filling the tables using B-SPLINE interpolation 
		call {chanpath} TABFILL X 3000 0

end

function make_KF_ron
    str chanpath = "KF_ron"
    if ({exists {chanpath}})
        return
    end

    create  tabchannel  {chanpath}
    setfield  {chanpath}  \
         Ek     {EK2}     \
         Gbar   {40e-9}   \
         Ik     0         \
         Gk     0         \
		 Xpower	2 \
		 Ypower	0 \
		 Zpower	0  

    call    {chanpath}    TABCREATE X 100 -0.100 0.050
    
    FillTableTau_KF {chanpath} X_A 1.5 8.0 -100 {0} -.022
    FillTableInf {chanpath} X_B 0    1    -100 {0} -.022
		/* Setting the calc_mode to NO_INTERP for speed */
		setfield {chanpath} X_A->calc_mode 0 X_B->calc_mode 0

		/* tweaking the tables for the tabchan calculation */
		tweaktau {chanpath} X

		/* Filling the tables using B-SPLINE interpolation */
		call {chanpath} TABFILL X 3000 0

end





























