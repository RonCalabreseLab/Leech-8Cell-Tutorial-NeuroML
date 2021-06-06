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
*set_compt_param     EREST_ACT	-0.060

*set_compt_param     ELEAK	-0.060

// negative values for channel densities are not scaled by area   
soma  none  126.15663  0  0  126.15663 Na_ron -2e-7  K1_ron -1e-7 \
   K2_ron -8e-8 A_ron -8e-8 h_ron -4.0e-9 CaF_ron -5e-9 CaS_ron -3.2e-9 P_ron -7e-9 KF_ron -0e-8











