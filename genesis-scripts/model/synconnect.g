function synconnect

// cell_3R

   // newspikegen 
   addmsg /cell_3R/soma /cell_3R/soma/spike INPUT Vm

   // SynS_object and synchan on cell_3R
   addmsg /cell_3L/soma /cell_3R/soma/mod_SynS3L3R VOLTAGE Vm
   addmsg /cell_3R/soma/mod_SynS3L3R /cell_3R/soma/SynS3L3R MOD m_SynS
   addmsg /cell_3L/soma/spike /cell_3R/soma/SynS3L3R SPIKE
   addmsg /cell_3R/soma/SynS3L3R /cell_3R/soma CHANNEL Gk Ek
   addmsg /cell_3R/soma /cell_3R/soma/SynS3L3R VOLTAGE Vm

   // graded synapses on cell_3R
   addmsg /cell_3R/soma/SynG cell_3R/soma CHANNEL Gk Ek
   addmsg /cell_3L/soma /cell_3R/soma/SynG VOLTAGE Vm 
   addmsg /cell_3L/soma/CaF_ron /cell_3R/soma/SynG CAF Ik 
   addmsg /cell_3L/soma/CaS_ron /cell_3R/soma/SynG CAS Ik 
   addmsg /cell_3R/soma /cell_3R/soma/SynG POSTVOLTAGE Vm 
 
   // synchan on cell_3R from cell_1R
   addmsg /cell_1R/soma/spike /cell_3R/soma/SynS1R3R SPIKE
   addmsg /cell_3R/soma/SynS1R3R /cell_3R/soma CHANNEL Gk Ek
   addmsg /cell_3R/soma /cell_3R/soma/SynS1R3R VOLTAGE Vm

   // synchan on cell_3R from cell_2R
   addmsg /cell_2R/soma/spike /cell_3R/soma/SynS2R3R SPIKE
   addmsg /cell_3R/soma/SynS2R3R /cell_3R/soma CHANNEL Gk Ek
   addmsg /cell_3R/soma /cell_3R/soma/SynS2R3R VOLTAGE Vm

// cell_3L

   // newspikegen 
   addmsg /cell_3L/soma /cell_3L/soma/spike INPUT Vm

   // SynS_object and synchan on cell_3L
   addmsg /cell_3R/soma /cell_3L/soma/mod_SynS3R3L VOLTAGE Vm
   addmsg /cell_3L/soma/mod_SynS3R3L /cell_3L/soma/SynS3R3L MOD m_SynS
   addmsg /cell_3R/soma/spike /cell_3L/soma/SynS3R3L SPIKE
   addmsg /cell_3L/soma/SynS3R3L /cell_3L/soma CHANNEL Gk Ek
   addmsg /cell_3L/soma /cell_3L/soma/SynS3R3L VOLTAGE Vm

   // graded synapse on cell_3L
   addmsg /cell_3L/soma/SynG /cell_3L/soma CHANNEL Gk Ek
   addmsg /cell_3R/soma /cell_3L/soma/SynG VOLTAGE Vm  
   addmsg /cell_3R/soma/CaF_ron /cell_3L/soma/SynG CAF Ik 
   addmsg /cell_3R/soma/CaS_ron /cell_3L/soma/SynG CAS Ik 
   addmsg /cell_3L/soma /cell_3L/soma/SynG POSTVOLTAGE Vm 

   // synchan on cell_3L from cell_1L
   addmsg /cell_1L/soma/spike /cell_3L/soma/SynS1L3L SPIKE
   addmsg /cell_3L/soma/SynS1L3L /cell_3L/soma CHANNEL Gk Ek
   addmsg /cell_3L/soma /cell_3L/soma/SynS1L3L VOLTAGE Vm

   // synchan on cell_3L from cell_2L
   addmsg /cell_2L/soma/spike /cell_3L/soma/SynS2L3L SPIKE
   addmsg /cell_3L/soma/SynS2L3L /cell_3L/soma CHANNEL Gk Ek
   addmsg /cell_3L/soma /cell_3L/soma/SynS2L3L VOLTAGE Vm

// cell_4R

   // newspikegen 
   addmsg /cell_4R/soma /cell_4R/soma/spike INPUT Vm

   // SynS_object and synchan on cell_4R
   addmsg /cell_4L/soma /cell_4R/soma/mod_SynS4L4R VOLTAGE Vm
   addmsg /cell_4R/soma/mod_SynS4L4R /cell_4R/soma/SynS4L4R MOD m_SynS
   addmsg /cell_4L/soma/spike /cell_4R/soma/SynS4L4R SPIKE
   addmsg /cell_4R/soma/SynS4L4R /cell_4R/soma CHANNEL Gk Ek
   addmsg /cell_4R/soma /cell_4R/soma/SynS4L4R VOLTAGE Vm

   // graded synapses on cell_4R
   addmsg /cell_4R/soma/SynG cell_4R/soma CHANNEL Gk Ek
   addmsg /cell_4L/soma /cell_4R/soma/SynG VOLTAGE Vm 
   addmsg /cell_4L/soma/CaF_ron /cell_4R/soma/SynG CAF Ik 
   addmsg /cell_4L/soma/CaS_ron /cell_4R/soma/SynG CAS Ik
   addmsg /cell_4R/soma /cell_4R/soma/SynG POSTVOLTAGE Vm 

   // synchan on cell_4R from cell_1R
   addmsg /cell_1R/soma/spike /cell_4R/soma/SynS1R4R SPIKE
   addmsg /cell_4R/soma/SynS1R4R /cell_4R/soma CHANNEL Gk Ek
   addmsg /cell_4R/soma /cell_4R/soma/SynS1R4R VOLTAGE Vm

   // synchan on cell_4R from cell_2R
   addmsg /cell_2R/soma/spike /cell_4R/soma/SynS2R4R SPIKE
   addmsg /cell_4R/soma/SynS2R4R /cell_4R/soma CHANNEL Gk Ek
   addmsg /cell_4R/soma /cell_4R/soma/SynS2R4R VOLTAGE Vm


 
// cell_4L

   // newspikegen 
   addmsg /cell_4L/soma /cell_4L/soma/spike INPUT Vm

   // SynS_object and synchan on cell_4L
   addmsg /cell_4R/soma /cell_4L/soma/mod_SynS4R4L VOLTAGE Vm
   addmsg /cell_4L/soma/mod_SynS4R4L /cell_4L/soma/SynS4R4L MOD m_SynS
   addmsg /cell_4R/soma/spike /cell_4L/soma/SynS4R4L SPIKE
   addmsg /cell_4L/soma/SynS4R4L /cell_4L/soma CHANNEL Gk Ek
   addmsg /cell_4L/soma /cell_4L/soma/SynS4R4L VOLTAGE Vm

   // graded synapse on cell_4L
   addmsg /cell_4L/soma/SynG /cell_4L/soma CHANNEL Gk Ek
   addmsg /cell_4R/soma /cell_4L/soma/SynG VOLTAGE Vm  
   addmsg /cell_4R/soma/CaF_ron /cell_4L/soma/SynG CAF Ik 
   addmsg /cell_4R/soma/CaS_ron /cell_4L/soma/SynG CAS Ik 
   addmsg /cell_4L/soma /cell_4L/soma/SynG POSTVOLTAGE Vm 

   // synchan on cell_4L from cell_1L
   addmsg /cell_1L/soma/spike /cell_4L/soma/SynS1L4L SPIKE
   addmsg /cell_4L/soma/SynS1L4L /cell_4L/soma CHANNEL Gk Ek
   addmsg /cell_4L/soma /cell_4L/soma/SynS1L4L VOLTAGE Vm

   // synchan on cell_4L from cell_2L
   addmsg /cell_2L/soma/spike /cell_4L/soma/SynS2L4L SPIKE
   addmsg /cell_4L/soma/SynS2L4L /cell_4L/soma CHANNEL Gk Ek
   addmsg /cell_4L/soma /cell_4L/soma/SynS2L4L VOLTAGE Vm

// cell_1L

   // newspikegen 
   addmsg /cell_1L/soma /cell_1L/soma/spike INPUT Vm

   // SynS_object and synchan on cell_1L from cell_3L
   addmsg /cell_3L/soma /cell_1L/soma/mod_SynS3L1L VOLTAGE Vm
   addmsg /cell_1L/soma/mod_SynS3L1L /cell_1L/soma/SynS3L1L MOD m_SynS
   addmsg /cell_3L/soma/spike /cell_1L/soma/SynS3L1L SPIKE
   addmsg /cell_1L/soma/SynS3L1L /cell_1L/soma CHANNEL Gk Ek
   addmsg /cell_1L/soma /cell_1L/soma/SynS3L1L VOLTAGE Vm


   // SynS_object and synchan on cell_1L from cell_4L
   addmsg /cell_4L/soma /cell_1L/soma/mod_SynS4L1L VOLTAGE Vm
   addmsg /cell_1L/soma/mod_SynS4L1L /cell_1L/soma/SynS4L1L MOD m_SynS
   addmsg /cell_4L/soma/spike /cell_1L/soma/SynS4L1L SPIKE
   addmsg /cell_1L/soma/SynS4L1L /cell_1L/soma CHANNEL Gk Ek
   addmsg /cell_1L/soma /cell_1L/soma/SynS4L1L VOLTAGE Vm

// cell_1R

   // newspikegen 
   addmsg /cell_1R/soma /cell_1R/soma/spike INPUT Vm

   // SynS_object and synchan on cell_1R from cell_3R
   addmsg /cell_3R/soma /cell_1R/soma/mod_SynS3R1R VOLTAGE Vm
   addmsg /cell_1R/soma/mod_SynS3R1R /cell_1R/soma/SynS3R1R MOD m_SynS
   addmsg /cell_3R/soma/spike /cell_1R/soma/SynS3R1R SPIKE
   addmsg /cell_1R/soma/SynS3R1R /cell_1R/soma CHANNEL Gk Ek
   addmsg /cell_1R/soma /cell_1R/soma/SynS3R1R VOLTAGE Vm

   // SynS_object and synchan on cell_1R from cell_4R
   addmsg /cell_4R/soma /cell_1R/soma/mod_SynS4R1R VOLTAGE Vm
   addmsg /cell_1R/soma/mod_SynS4R1R /cell_1R/soma/SynS4R1R MOD m_SynS
   addmsg /cell_4R/soma/spike /cell_1R/soma/SynS4R1R SPIKE
   addmsg /cell_1R/soma/SynS4R1R /cell_1R/soma CHANNEL Gk Ek
   addmsg /cell_1R/soma /cell_1R/soma/SynS4R1R VOLTAGE Vm


// cell_2L

   // newspikegen 
   addmsg /cell_2L/soma /cell_2L/soma/spike INPUT Vm

   // SynS_object and synchan on cell_2L from cell_3L
   addmsg /cell_3L/soma /cell_2L/soma/mod_SynS3L2L VOLTAGE Vm
   addmsg /cell_2L/soma/mod_SynS3L2L /cell_2L/soma/SynS3L2L MOD m_SynS
   addmsg /cell_3L/soma/spike /cell_2L/soma/SynS3L2L SPIKE
   addmsg /cell_2L/soma/SynS3L2L /cell_2L/soma CHANNEL Gk Ek
   addmsg /cell_2L/soma /cell_2L/soma/SynS3L2L VOLTAGE Vm

   // SynS_object and synchan on cell_2L from cell_4L
   addmsg /cell_4L/soma /cell_2L/soma/mod_SynS4L2L VOLTAGE Vm
   addmsg /cell_2L/soma/mod_SynS4L2L /cell_2L/soma/SynS4L2L MOD m_SynS
   addmsg /cell_4L/soma/spike /cell_2L/soma/SynS4L2L SPIKE
   addmsg /cell_2L/soma/SynS4L2L /cell_2L/soma CHANNEL Gk Ek
   addmsg /cell_2L/soma /cell_2L/soma/SynS4L2L VOLTAGE Vm


// cell_2R

   // newspikegen 
   addmsg /cell_2R/soma /cell_2R/soma/spike INPUT Vm

   // SynS_object and synchan on cell_2R from cell_3R
   addmsg /cell_3R/soma /cell_2R/soma/mod_SynS3R2R VOLTAGE Vm
   addmsg /cell_2R/soma/mod_SynS3R2R /cell_2R/soma/SynS3R2R MOD m_SynS
   addmsg /cell_3R/soma/spike /cell_2R/soma/SynS3R2R SPIKE
   addmsg /cell_2R/soma/SynS3R2R /cell_2R/soma CHANNEL Gk Ek
   addmsg /cell_2R/soma /cell_2R/soma/SynS3R2R VOLTAGE Vm

   // SynS_object and synchan on cell_2R from cell_4R
   addmsg /cell_4R/soma /cell_2R/soma/mod_SynS4R2R VOLTAGE Vm
   addmsg /cell_2R/soma/mod_SynS4R2R /cell_2R/soma/SynS4R2R MOD m_SynS
   addmsg /cell_4R/soma/spike /cell_2R/soma/SynS4R2R SPIKE
   addmsg /cell_2R/soma/SynS4R2R /cell_2R/soma CHANNEL Gk Ek
   addmsg /cell_2R/soma /cell_2R/soma/SynS4R2R VOLTAGE Vm

// cell_5L extra cell

   // SynS_object and synchan on cell_5L 
   /* addmsg /cell_4L/soma /cell_5L/soma/mod_SynS4L5L VOLTAGE Vm
   addmsg /cell_5L/soma/mod_SynS4L5L /cell_5L/soma/SynS4L5L MOD m_SynS
   addmsg /cell_4L/soma/spike /cell_5L/soma/SynS4L5L SPIKE
   addmsg /cell_5L/soma/SynS4L5L /cell_5L/soma CHANNEL Gk Ek
   addmsg /cell_5L/soma /cell_5L/soma/SynS4L5L VOLTAGE Vm

   // graded synapses on cell_5L
   addmsg /cell_5L/soma/SynG cell_5L/soma CHANNEL Gk Ek
   addmsg /cell_4L/soma /cell_5L/soma/SynG VOLTAGE Vm 
   addmsg /cell_4L/soma/CaF_ron /cell_5L/soma/SynG CAF Ik 
   addmsg /cell_4L/soma/CaS_ron /cell_5L/soma/SynG CAS Ik 
   addmsg /cell_5L/soma /cell_5L/soma/SynG POSTVOLTAGE Vm 
*/

end
































