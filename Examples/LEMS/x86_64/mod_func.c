#include <stdio.h>
#include "hocdec.h"
extern int nrnmpi_myid;
extern int nrn_nobanner_;

extern void _isopotential_reg(void);
extern void _pulseGenStart_reg(void);

void modl_reg(){
  if (!nrn_nobanner_) if (nrnmpi_myid < 1) {
    fprintf(stderr, "Additional mechanisms from files\n");

    fprintf(stderr," isopotential.mod");
    fprintf(stderr," pulseGenStart.mod");
    fprintf(stderr, "\n");
  }
  _isopotential_reg();
  _pulseGenStart_reg();
}
