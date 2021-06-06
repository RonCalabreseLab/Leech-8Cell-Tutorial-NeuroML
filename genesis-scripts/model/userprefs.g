// genesis

echo Using default user preferences!

/**********************************************************************
**
**	1	Including script files for prototype functions
**
**********************************************************************/

/* channels*/
include HNchan

/* file for standard compartments */
include compartments 


/************************************************************************
**  2	Invoking functions to make prototypes in the /library element
************************************************************************/

/*   To ensure that all subsequent elements are made in the library    */
	pushe /library


	/* Make the standard types of compartments  */

	make_cylind_compartment		/* makes "compartment" */
//	make_sphere_compartment		/* makes "compartment_sphere" */
//	make_cylind_symcompartment	/* makes "symcompartment" */
//	make_sphere_symcompartment	/* makes "symcompartment_sphere" */

	/* These are some standard channels used in .p files */
        make_Na_ron
        make_K1_ron
        make_K2_ron
        make_A_ron
	make_h_ron
        make_CaF_ron
        make_CaS_ron
        make_P_ron
        make_KF_ron

	/* returning to the root element */
	pope

/*************************************************************** *******
**
**	3	Setting preferences for user-variables.
**
**********************************************************************/

/* See defaults.g for default values of these. Put your preferred
   values for these in your copy of userprefs in the directory from
   which you are running your simulations.
*/






























