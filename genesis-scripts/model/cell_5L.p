// cell.p - Cell parameter file used in Tutorial #5

//	Format of file :
// x,y,z,dia are in microns, all other units are SI (Meter Kilogram Sec Amp)
// In polar mode 'r' is in microns, theta and phi in degrees 
// Control line options start with a '*'
// The format for each compartment parameter line is :
//name	parent	r	theta	phi	d	ch	dens ...
//in polar mode, and in cartesian mode :
//name	parent	x	y	z	d	ch	dens ...
// For channels, "dens" =  maximum conductance per unit area of compartment
// For spike elements, "dens" is the spike threshold
//		Coordinate mode
*relative
*cartesian
*asymmetric

//		Specifying constants
*set_compt_param	RM	6.25
*set_compt_param	RA	0.3
*set_compt_param	CM	0.01
*set_compt_param        EREST_ACT	-.055 //-0.063

*set_compt_param        ELEAK	-.055   //-0.063

// negative values for channel densities are not scaled by area   
soma  none   126  0  0  126

//   Na_ron -250e-9  K1_ron -100e-9 K2_ron -50e-9 \
//   A_ron -80e-9 h_ron -5.2e-9 CaF_ron -16e-9 CaS_ron -3e-9 P_ron -8e-9 











