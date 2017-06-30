#include <stdio.h>
#include "hocdec.h"
extern int nrnmpi_myid;
extern int nrn_nobanner_;

extern void _kChan_reg(void);
extern void _naChan_reg(void);
extern void _passiveChan_reg(void);
extern void _pulseGen1_reg(void);

void modl_reg(){
  if (!nrn_nobanner_) if (nrnmpi_myid < 1) {
    fprintf(stderr, "Additional mechanisms from files\n");

    fprintf(stderr," kChan.mod");
    fprintf(stderr," naChan.mod");
    fprintf(stderr," passiveChan.mod");
    fprintf(stderr," pulseGen1.mod");
    fprintf(stderr, "\n");
  }
  _kChan_reg();
  _naChan_reg();
  _passiveChan_reg();
  _pulseGen1_reg();
}
