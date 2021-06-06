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
*set_compt_param	RM	5
*set_compt_param	RA	0.3
*set_compt_param	CM	0.01
*set_compt_param     EREST_ACT	-0.063

// For the soma, use the leakage potential (-0.07 + 0.0106) for Em

*set_compt_param     ELEAK	-0.040

   soma  none   126.15663  0  0  126.15663 Na_ron -2.50e-7  K1_ron -1.5e-7 K2_ron -7.5e-8 










