//genesis

/* FILE INFORMATION
** 
** This file creates the various synaptic objects of the 
** HN simulation.  
** 
** 
**
** 
*/

function syncreate

// CONSTANTS

float Es = -0.0625 // rev pot of inhibitory synapses
float G_gbar = 3e-8 // gbar of graded synapses
float C = 1e-32 // C of graded synapse
float B = 10 // sec-1
float A1 = 0  // A1+A2/(1+exp(A3*(Vm+A4))) 
float A2 = 100e-12
float A3 = -100
float A4 = .020
float A5 = 0.20  // A5= tau sec
float POWER = 3; 
float S_gbar = 6e-8 // gbar of spiked mediated synapses within one ganglion
float S2_gbar = 8e-9 // gbar of spiked mediated synapses between 1,2 ->3,4
float S3_gbar = 6e-9 // gbar of spiked mediated synapses between 3,4 ->1,2
float S_tau1 = 1.1e-2 // tau1 of spike mediated synapse
float S_tau2 = 2e-3 // tau2 of spike mediated synapse

float S3_tau1 = 55e-3 // tau1 of spike mediated synapse onto 1,2
float S3_tau2 = 10e-3 // tau2 of spike mediated synapse onto 1,2
float S4_tau1 =S_tau1 
float S4_tau2 =S_tau2
float threshold  = -.005 // spike detection threshold
float refract = .005 // refractory time of spike detection

// right cell 3

str chanpath = "/cell_3R/soma/mod_SynS3L3R"
create SynS_object  {chanpath}
setfield  {chanpath}  m_SynS     0.0      
setfield {chanpath} A .1
setfield {chanpath} B .9
setfield {chanpath} C -1000
setfield {chanpath} D 0.04
setfield {chanpath} E 0.2

str chanpath = "/cell_3R/soma/SynS3L3R"   
create	synchan	{chanpath}
    	setfield	        {chanpath} \
	Ek			{Es} \
	tau1		        {S_tau1} \	// sec
	tau2		        {S_tau2} \	// sec
	gmax		        {S_gbar}		// Siemens

str chanpath = "/cell_3R/soma/SynG"
create SynG_object {chanpath}
setfield {chanpath} \    
         Ek      {Es}   \
         Gbar    {G_gbar} \
	 B {B} \   
         C   	 {C} \
	 A1 {A1} \
	 A2 {A2} \
	 A3 {A3} \
	 A4 {A4} \
	 A5 {A5} \
   	 POWER {POWER}   

str chanpath = "/cell_3R/soma/spike"
create newspikegen {chanpath}
setfield {chanpath}        \
          thresh {threshold}     \
	  abs_refract {refract} \ 
          output_amp 1

str chanpath = "/cell_3R/soma/SynS1R3R"   
create	synchan	{chanpath}
    	setfield	        {chanpath} \
	Ek			{Es} \
	tau1		        {S_tau1} \	// sec
	tau2		        {S_tau2} \	// sec
	gmax		        {S2_gbar}		// Siemens

str chanpath = "/cell_3R/soma/SynS2R3R"   
create	synchan	{chanpath}
    	setfield	        {chanpath} \
	Ek			{Es} \
	tau1		        {S_tau1} \	// sec
	tau2		        {S_tau2} \	// sec
	gmax		        {S2_gbar}		// Siemens


// left cell 3

str chanpath = "/cell_3L/soma/mod_SynS3R3L"
create SynS_object  {chanpath}
setfield  {chanpath}  m_SynS     0.0      
setfield {chanpath} A .1
setfield {chanpath} B .9
setfield {chanpath} C -1000
setfield {chanpath} D 0.04
setfield {chanpath} E 0.2

str chanpath = "/cell_3L/soma/SynS3R3L"
create	synchan	{chanpath}
    	setfield	        {chanpath} \
	Ek			{Es} \
	tau1		        {S_tau1} \	// sec
	tau2		        {S_tau2} \	// sec
	gmax		        {S_gbar}		// Siemens

str chanpath = "/cell_3L/soma/SynG"
create SynG_object {chanpath}
setfield {chanpath} \    
         Ek      {Es}   \
         Gbar    {G_gbar} \
	 B       {B} \
         C   	 {C} \
	 A1 {A1} \
	 A2 {A2} \
	 A3 {A3} \
	 A4 {A4} \
	 A5 {A5} \
   	 POWER {POWER}   

str chanpath = "/cell_3L/soma/spike"
create newspikegen {chanpath}
setfield {chanpath}        \
          thresh {threshold}     \
	  abs_refract {refract} \ 
          output_amp 1

str chanpath = "/cell_3L/soma/SynS1L3L"   
create	synchan	{chanpath}
    	setfield	        {chanpath} \
	Ek			{Es} \
	tau1		        {S_tau1} \	// sec
	tau2		        {S_tau2} \	// sec
	gmax		        {S2_gbar}		// Siemens

str chanpath = "/cell_3L/soma/SynS2L3L"   
create	synchan	{chanpath}
    	setfield	        {chanpath} \
	Ek			{Es} \
	tau1		        {S_tau1} \	// sec
	tau2		        {S_tau2} \	// sec
	gmax		        {S2_gbar}		// Siemens

// right cell 4

str chanpath = "/cell_4R/soma/mod_SynS4L4R"
create SynS_object  {chanpath}
setfield  {chanpath}  m_SynS     0.0      
setfield {chanpath} A .1
setfield {chanpath} B .9
setfield {chanpath} C -1000
setfield {chanpath} D 0.04
setfield {chanpath} E 0.2

str chanpath = "/cell_4R/soma/SynS4L4R"   
create	synchan	{chanpath}
    	setfield	        {chanpath} \
	Ek			{Es} \
	tau1		        {S_tau1} \	// sec
	tau2		        {S_tau2} \	// sec
	gmax		   	{S_gbar}		// Siemens

str chanpath = "/cell_4R/soma/SynG"
create SynG_object {chanpath}
setfield {chanpath} \    
         Ek      {Es}   \
         Gbar    {G_gbar} \
         B	{B} \   
         C   	 {C} \
	 A1 {A1} \
	 A2 {A2} \
	 A3 {A3} \
	 A4 {A4} \
	 A5 {A5} \
   	 POWER {POWER}   

str chanpath = "/cell_4R/soma/spike"
create newspikegen {chanpath}
setfield {chanpath}        \
          thresh {threshold}     \
	  abs_refract {refract} \ 
          output_amp 1

str chanpath = "/cell_4R/soma/SynS1R4R"   
create	synchan	{chanpath}
    	setfield	        {chanpath} \
	Ek			{Es} \
	tau1		        {S4_tau1} \	// sec
	tau2		        {S4_tau2} \	// sec
	gmax		        {S2_gbar}		// Siemens

str chanpath = "/cell_4R/soma/SynS2R4R"   
create	synchan	{chanpath}
    	setfield	        {chanpath} \
	Ek			{Es} \
	tau1		        {S4_tau1} \	// sec
	tau2		        {S4_tau2} \	// sec
	gmax		        {S2_gbar}		// Siemens

// left cell 4

str chanpath = "/cell_4L/soma/mod_SynS4R4L"
create SynS_object  {chanpath}
setfield  {chanpath}  m_SynS     0.0      
setfield {chanpath} A .1
setfield {chanpath} B .9
setfield {chanpath} C -1000
setfield {chanpath} D 0.04
setfield {chanpath} E 0.2

str chanpath = "/cell_4L/soma/SynS4R4L"
create	synchan	{chanpath}
    	setfield	        {chanpath} \
	Ek			{Es} \
	tau1		        {S_tau1} \	// sec
	tau2		        {S_tau2} \	// sec
	gmax		        {S_gbar}		// Siemens

str chanpath = "/cell_4L/soma/SynG"
create SynG_object {chanpath}
setfield {chanpath} \    
         Ek      {Es}   \
         Gbar    {G_gbar} \
	 B       {B}  \   
         C   	 {C} \
	 A1 {A1} \
	 A2 {A2} \
	 A3 {A3} \
	 A4 {A4} \
	 A5 {A5} \
   	 POWER {POWER}   

str chanpath = "/cell_4L/soma/spike"
create newspikegen {chanpath}
setfield {chanpath}        \
          thresh {threshold}     \
	  abs_refract {refract} \ 
          output_amp 1

str chanpath = "/cell_4L/soma/SynS1L4L"   
create	synchan	{chanpath}
    	setfield	        {chanpath} \
	Ek			{Es} \
	tau1		        {S4_tau1} \	// sec
	tau2		        {S4_tau2} \	// sec
	gmax		        {S2_gbar}		// Siemens

str chanpath = "/cell_4L/soma/SynS2L4L"   
create	synchan	{chanpath}
    	setfield	        {chanpath} \
	Ek			{Es} \
	tau1		        {S4_tau1} \	// sec
	tau2		        {S4_tau2} \	// sec
	gmax		        {S2_gbar}		// Siemens

// cell_1L

str chanpath = "/cell_1L/soma/SynS3L1L"
create	synchan	{chanpath}
    	setfield	        {chanpath} \
	Ek			{Es} \
	tau1		        {S3_tau1} \	// sec
	tau2		        {S3_tau2} \	// sec
	gmax		        {S3_gbar}		// Siemens

str chanpath = "/cell_1L/soma/mod_SynS3L1L"
create SynS_object  {chanpath}
setfield  {chanpath}  m_SynS     0.0      
setfield {chanpath} A .1
setfield {chanpath} B .9
setfield {chanpath} C -1000
setfield {chanpath} D 0.04
setfield {chanpath} E 0.2

str chanpath = "/cell_1L/soma/SynS4L1L"
create	synchan	{chanpath}
    	setfield	        {chanpath} \
	Ek			{Es} \
	tau1		        {S3_tau1} \	// sec
	tau2		        {S3_tau2} \	// sec
	gmax		        {S3_gbar}		// Siemens

str chanpath = "/cell_1L/soma/mod_SynS4L1L"
create SynS_object  {chanpath}
setfield  {chanpath}  m_SynS     0.0      
setfield {chanpath} A .1
setfield {chanpath} B .9
setfield {chanpath} C -1000
setfield {chanpath} D 0.04
setfield {chanpath} E 0.2

str chanpath = "/cell_1L/soma/spike"
create newspikegen {chanpath}
setfield {chanpath}        \
          thresh {threshold}     \
	  abs_refract {refract} \ 
          output_amp 1

// cell_1R

str chanpath = "/cell_1R/soma/SynS3R1R"
create	synchan	{chanpath}
    	setfield	        {chanpath} \
	Ek			{Es} \
	tau1		        {S3_tau1} \	// sec
	tau2		        {S3_tau2} \	// sec
	gmax		        {S3_gbar}		// Siemens

str chanpath = "/cell_1R/soma/mod_SynS3R1R"
create SynS_object  {chanpath}
setfield  {chanpath}  m_SynS     0.0      
setfield {chanpath} A .1
setfield {chanpath} B .9
setfield {chanpath} C -1000
setfield {chanpath} D 0.04
setfield {chanpath} E 0.2

str chanpath = "/cell_1R/soma/SynS4R1R"
create	synchan	{chanpath}
    	setfield	        {chanpath} \
	Ek			{Es} \
	tau1		        {S3_tau1} \	// sec
	tau2		        {S3_tau2} \	// sec
	gmax		        {S3_gbar}		// Siemens

str chanpath = "/cell_1R/soma/mod_SynS4R1R"
create SynS_object  {chanpath}
setfield  {chanpath}  m_SynS     0.0      
setfield {chanpath} A .1
setfield {chanpath} B .9
setfield {chanpath} C -1000
setfield {chanpath} D 0.04
setfield {chanpath} E 0.2

str chanpath = "/cell_1R/soma/spike"
create newspikegen {chanpath}
setfield {chanpath}        \
          thresh {threshold}     \
	  abs_refract {refract} \ 
          output_amp 1


// cell_2L

str chanpath = "/cell_2L/soma/SynS3L2L"
create	synchan	{chanpath}
    	setfield	        {chanpath} \
	Ek			{Es} \
	tau1		        {S3_tau1} \	// sec
	tau2		        {S3_tau2} \	// sec
	gmax		        {S3_gbar}		// Siemens


str chanpath = "/cell_2L/soma/mod_SynS3L2L"
create SynS_object  {chanpath}
setfield  {chanpath}  m_SynS     0.0      
setfield {chanpath} A .1
setfield {chanpath} B .9
setfield {chanpath} C -1000
setfield {chanpath} D 0.04
setfield {chanpath} E 0.2

str chanpath = "/cell_2L/soma/SynS4L2L"
create	synchan	{chanpath}
    	setfield	        {chanpath} \
	Ek			{Es} \
	tau1		        {S3_tau1} \	// sec
	tau2		        {S3_tau2} \	// sec
	gmax		        {S3_gbar}		// Siemens

str chanpath = "/cell_2L/soma/mod_SynS4L2L"
create SynS_object  {chanpath}
setfield  {chanpath}  m_SynS     0.0      
setfield {chanpath} A .1
setfield {chanpath} B .9
setfield {chanpath} C -1000
setfield {chanpath} D 0.04
setfield {chanpath} E 0.2

str chanpath = "/cell_2L/soma/spike"
create newspikegen {chanpath}
setfield {chanpath}        \
          thresh {threshold}     \
	  abs_refract {refract} \ 
          output_amp 1


// cell_2R

str chanpath = "/cell_2R/soma/SynS3R2R"
create	synchan	{chanpath}
    	setfield	        {chanpath} \
	Ek			{Es} \
	tau1		        {S3_tau1} \	// sec
	tau2		        {S3_tau2} \	// sec
	gmax		        {S3_gbar}		// Siemens

str chanpath = "/cell_2R/soma/mod_SynS3R2R"
create SynS_object  {chanpath}
setfield  {chanpath}  m_SynS     0.0      
setfield {chanpath} A .1
setfield {chanpath} B .9
setfield {chanpath} C -1000
setfield {chanpath} D 0.04
setfield {chanpath} E 0.2

str chanpath = "/cell_2R/soma/SynS4R2R"
create	synchan	{chanpath}
    	setfield	        {chanpath} \
	Ek			{Es} \
	tau1		        {S3_tau1} \	// sec
	tau2		        {S3_tau2} \	// sec
	gmax		        {S3_gbar}		// Siemens

str chanpath = "/cell_2R/soma/mod_SynS4R2R"
create SynS_object  {chanpath}
setfield  {chanpath}  m_SynS     0.0      
setfield {chanpath} A .1
setfield {chanpath} B .9
setfield {chanpath} C -1000
setfield {chanpath} D 0.04
setfield {chanpath} E 0.2

str chanpath = "/cell_2R/soma/spike"
create newspikegen {chanpath}
setfield {chanpath}        \
          thresh {threshold}     \
	  abs_refract {refract} \ 
          output_amp 1

/*
//cell 5L  extra cell 
str chanpath = "/cell_5L/soma/mod_SynS4L5L"
create SynS_object  {chanpath}
setfield  {chanpath}  m_SynS     0.0      
setfield {chanpath} A .1
setfield {chanpath} B .9
setfield {chanpath} C -1000
setfield {chanpath} D 0.04

str chanpath = "/cell_5L/soma/SynS4L5L"   
create	synchan	{chanpath}
    	setfield	        {chanpath} \
	Ek			{Es} \
	tau1		        {S_tau1} \	// sec
	tau2		        {S_tau2} \	// sec
	gmax		        {S_gbar}		// Siemens

str chanpath = "/cell_5L/soma/SynG"
create SynG_object {chanpath}
setfield {chanpath} \    
         Ek      {Es}   \
         Gbar    {G_gbar}   
//         C   	 {C}   
*/

end // syncreate










