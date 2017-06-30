/* Created by Language version: 6.2.0 */
/* VECTORIZED */
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "scoplib_ansi.h"
#undef PI
#define nil 0
#include "md1redef.h"
#include "section.h"
#include "nrniv_mf.h"
#include "md2redef.h"
 
#if METHOD3
extern int _method3;
#endif

#if !NRNGPU
#undef exp
#define exp hoc_Exp
extern double hoc_Exp(double);
#endif
 
#define _threadargscomma_ _p, _ppvar, _thread, _nt,
#define _threadargs_ _p, _ppvar, _thread, _nt
 
#define _threadargsprotocomma_ double* _p, Datum* _ppvar, Datum* _thread, _NrnThread* _nt,
#define _threadargsproto_ double* _p, Datum* _ppvar, Datum* _thread, _NrnThread* _nt
 	/*SUPPRESS 761*/
	/*SUPPRESS 762*/
	/*SUPPRESS 763*/
	/*SUPPRESS 765*/
	 extern double *getarg();
 /* Thread safe. No static _p or _ppvar. */
 
#define t _nt->_t
#define dt _nt->_dt
#define gmax _p[0]
#define conductance _p[1]
#define m_instances _p[2]
#define m_forwardRate_rate _p[3]
#define m_forwardRate_midpoint _p[4]
#define m_forwardRate_scale _p[5]
#define m_reverseRate_rate _p[6]
#define m_reverseRate_midpoint _p[7]
#define m_reverseRate_scale _p[8]
#define h_instances _p[9]
#define h_forwardRate_rate _p[10]
#define h_forwardRate_midpoint _p[11]
#define h_forwardRate_scale _p[12]
#define h_reverseRate_rate _p[13]
#define h_reverseRate_midpoint _p[14]
#define h_reverseRate_scale _p[15]
#define gion _p[16]
#define m_forwardRate_x _p[17]
#define m_forwardRate_r _p[18]
#define m_reverseRate_r _p[19]
#define m_rateScale _p[20]
#define m_alpha _p[21]
#define m_beta _p[22]
#define m_fcond _p[23]
#define m_inf _p[24]
#define m_tau _p[25]
#define h_forwardRate_r _p[26]
#define h_reverseRate_r _p[27]
#define h_rateScale _p[28]
#define h_alpha _p[29]
#define h_beta _p[30]
#define h_fcond _p[31]
#define h_inf _p[32]
#define h_tau _p[33]
#define conductanceScale _p[34]
#define fopen0 _p[35]
#define fopen _p[36]
#define g _p[37]
#define m_q _p[38]
#define h_q _p[39]
#define temperature _p[40]
#define ena _p[41]
#define ina _p[42]
#define rate_m_q _p[43]
#define rate_h_q _p[44]
#define Dm_q _p[45]
#define Dh_q _p[46]
#define v _p[47]
#define _g _p[48]
#define _ion_ina	*_ppvar[0]._pval
#define _ion_dinadv	*_ppvar[1]._pval
 
#if MAC
#if !defined(v)
#define v _mlhv
#endif
#if !defined(h)
#define h _mlhh
#endif
#endif
 
#if defined(__cplusplus)
extern "C" {
#endif
 static int hoc_nrnpointerindex =  -1;
 static Datum* _extcall_thread;
 static Prop* _extcall_prop;
 /* external NEURON variables */
 extern double celsius;
 /* declaration of user functions */
 static void _hoc_rates(void);
 static int _mechtype;
extern void _nrn_cacheloop_reg(int, int);
extern void hoc_register_prop_size(int, int, int);
extern void hoc_register_limits(int, HocParmLimits*);
extern void hoc_register_units(int, HocParmUnits*);
extern void nrn_promote(Prop*, int, int);
extern Memb_func* memb_func;
 extern void _nrn_setdata_reg(int, void(*)(Prop*));
 static void _setdata(Prop* _prop) {
 _extcall_prop = _prop;
 }
 static void _hoc_setdata() {
 Prop *_prop, *hoc_getdata_range(int);
 _prop = hoc_getdata_range(_mechtype);
   _setdata(_prop);
 hoc_retpushx(1.);
}
 /* connect user functions to hoc names */
 static VoidFunc hoc_intfunc[] = {
 "setdata_naChan", _hoc_setdata,
 "rates_naChan", _hoc_rates,
 0, 0
};
 /* declare global and static user variables */
 /* some parameters have upper and lower limits */
 static HocParmLimits _hoc_parm_limits[] = {
 0,0,0
};
 static HocParmUnits _hoc_parm_units[] = {
 "gmax_naChan", "S/cm2",
 "conductance_naChan", "uS",
 "m_forwardRate_rate_naChan", "kHz",
 "m_forwardRate_midpoint_naChan", "mV",
 "m_forwardRate_scale_naChan", "mV",
 "m_reverseRate_rate_naChan", "kHz",
 "m_reverseRate_midpoint_naChan", "mV",
 "m_reverseRate_scale_naChan", "mV",
 "h_forwardRate_rate_naChan", "kHz",
 "h_forwardRate_midpoint_naChan", "mV",
 "h_forwardRate_scale_naChan", "mV",
 "h_reverseRate_rate_naChan", "kHz",
 "h_reverseRate_midpoint_naChan", "mV",
 "h_reverseRate_scale_naChan", "mV",
 "gion_naChan", "S/cm2",
 "m_forwardRate_r_naChan", "kHz",
 "m_reverseRate_r_naChan", "kHz",
 "m_alpha_naChan", "kHz",
 "m_beta_naChan", "kHz",
 "m_tau_naChan", "ms",
 "h_forwardRate_r_naChan", "kHz",
 "h_reverseRate_r_naChan", "kHz",
 "h_alpha_naChan", "kHz",
 "h_beta_naChan", "kHz",
 "h_tau_naChan", "ms",
 "g_naChan", "uS",
 0,0
};
 static double delta_t = 0.01;
 static double h_q0 = 0;
 static double m_q0 = 0;
 /* connect global user variables to hoc */
 static DoubScal hoc_scdoub[] = {
 0,0
};
 static DoubVec hoc_vdoub[] = {
 0,0,0
};
 static double _sav_indep;
 static void nrn_alloc(Prop*);
static void  nrn_init(_NrnThread*, _Memb_list*, int);
static void nrn_state(_NrnThread*, _Memb_list*, int);
 static void nrn_cur(_NrnThread*, _Memb_list*, int);
static void  nrn_jacob(_NrnThread*, _Memb_list*, int);
 
static int _ode_count(int);
static void _ode_map(int, double**, double**, double*, Datum*, double*, int);
static void _ode_spec(_NrnThread*, _Memb_list*, int);
static void _ode_matsol(_NrnThread*, _Memb_list*, int);
 
#define _cvode_ieq _ppvar[2]._i
 /* connect range variables in _p that hoc is supposed to know about */
 static const char *_mechanism[] = {
 "6.2.0",
"naChan",
 "gmax_naChan",
 "conductance_naChan",
 "m_instances_naChan",
 "m_forwardRate_rate_naChan",
 "m_forwardRate_midpoint_naChan",
 "m_forwardRate_scale_naChan",
 "m_reverseRate_rate_naChan",
 "m_reverseRate_midpoint_naChan",
 "m_reverseRate_scale_naChan",
 "h_instances_naChan",
 "h_forwardRate_rate_naChan",
 "h_forwardRate_midpoint_naChan",
 "h_forwardRate_scale_naChan",
 "h_reverseRate_rate_naChan",
 "h_reverseRate_midpoint_naChan",
 "h_reverseRate_scale_naChan",
 0,
 "gion_naChan",
 "m_forwardRate_x_naChan",
 "m_forwardRate_r_naChan",
 "m_reverseRate_r_naChan",
 "m_rateScale_naChan",
 "m_alpha_naChan",
 "m_beta_naChan",
 "m_fcond_naChan",
 "m_inf_naChan",
 "m_tau_naChan",
 "h_forwardRate_r_naChan",
 "h_reverseRate_r_naChan",
 "h_rateScale_naChan",
 "h_alpha_naChan",
 "h_beta_naChan",
 "h_fcond_naChan",
 "h_inf_naChan",
 "h_tau_naChan",
 "conductanceScale_naChan",
 "fopen0_naChan",
 "fopen_naChan",
 "g_naChan",
 0,
 "m_q_naChan",
 "h_q_naChan",
 0,
 0};
 static Symbol* _na_sym;
 
extern Prop* need_memb(Symbol*);

static void nrn_alloc(Prop* _prop) {
	Prop *prop_ion;
	double *_p; Datum *_ppvar;
 	_p = nrn_prop_data_alloc(_mechtype, 49, _prop);
 	/*initialize range parameters*/
 	gmax = 0;
 	conductance = 1e-05;
 	m_instances = 3;
 	m_forwardRate_rate = 1;
 	m_forwardRate_midpoint = -40;
 	m_forwardRate_scale = 10;
 	m_reverseRate_rate = 4;
 	m_reverseRate_midpoint = -65;
 	m_reverseRate_scale = -18;
 	h_instances = 1;
 	h_forwardRate_rate = 0.07;
 	h_forwardRate_midpoint = -65;
 	h_forwardRate_scale = -20;
 	h_reverseRate_rate = 1;
 	h_reverseRate_midpoint = -35;
 	h_reverseRate_scale = 10;
 	_prop->param = _p;
 	_prop->param_size = 49;
 	_ppvar = nrn_prop_datum_alloc(_mechtype, 3, _prop);
 	_prop->dparam = _ppvar;
 	/*connect ionic variables to this model*/
 prop_ion = need_memb(_na_sym);
 	_ppvar[0]._pval = &prop_ion->param[3]; /* ina */
 	_ppvar[1]._pval = &prop_ion->param[4]; /* _ion_dinadv */
 
}
 static void _initlists();
  /* some states have an absolute tolerance */
 static Symbol** _atollist;
 static HocStateTolerance _hoc_state_tol[] = {
 0,0
};
 static void _update_ion_pointer(Datum*);
 extern Symbol* hoc_lookup(const char*);
extern void _nrn_thread_reg(int, int, void(*f)(Datum*));
extern void _nrn_thread_table_reg(int, void(*)(double*, Datum*, Datum*, _NrnThread*, int));
extern void hoc_register_tolerance(int, HocStateTolerance*, Symbol***);
extern void _cvode_abstol( Symbol**, double*, int);

 void _naChan_reg() {
	int _vectorized = 1;
  _initlists();
 	ion_reg("na", 1.0);
 	_na_sym = hoc_lookup("na_ion");
 	register_mech(_mechanism, nrn_alloc,nrn_cur, nrn_jacob, nrn_state, nrn_init, hoc_nrnpointerindex, 1);
 _mechtype = nrn_get_mechtype(_mechanism[1]);
     _nrn_setdata_reg(_mechtype, _setdata);
     _nrn_thread_reg(_mechtype, 2, _update_ion_pointer);
  hoc_register_prop_size(_mechtype, 49, 3);
 	hoc_register_cvode(_mechtype, _ode_count, _ode_map, _ode_spec, _ode_matsol);
 	hoc_register_tolerance(_mechtype, _hoc_state_tol, &_atollist);
 	hoc_register_var(hoc_scdoub, hoc_vdoub, hoc_intfunc);
 	ivoc_help("help ?1 naChan /Users/johnrosejr/Documents/Emory Workspace/leech_tutorial_neuroml/Examples/x86_64/naChan.mod\n");
 hoc_register_limits(_mechtype, _hoc_parm_limits);
 hoc_register_units(_mechtype, _hoc_parm_units);
 }
static int _reset;
static char *modelname = "Mod file for component: Component(id=naChan type=ionChannelHH)";

static int error;
static int _ninits = 0;
static int _match_recurse=1;
static void _modl_cleanup(){ _match_recurse=1;}
static int rates(_threadargsproto_);
 
static int _ode_spec1(_threadargsproto_);
/*static int _ode_matsol1(_threadargsproto_);*/
 static int _slist1[2], _dlist1[2];
 static int states(_threadargsproto_);
 
/*CVODE*/
 static int _ode_spec1 (double* _p, Datum* _ppvar, Datum* _thread, _NrnThread* _nt) {int _reset = 0; {
   rates ( _threadargs_ ) ;
   Dm_q = rate_m_q ;
   Dh_q = rate_h_q ;
   }
 return _reset;
}
 static int _ode_matsol1 (double* _p, Datum* _ppvar, Datum* _thread, _NrnThread* _nt) {
 rates ( _threadargs_ ) ;
 Dm_q = Dm_q  / (1. - dt*( 0.0 )) ;
 Dh_q = Dh_q  / (1. - dt*( 0.0 )) ;
 return 0;
}
 /*END CVODE*/
 static int states (double* _p, Datum* _ppvar, Datum* _thread, _NrnThread* _nt) { {
   rates ( _threadargs_ ) ;
    m_q = m_q - dt*(- ( rate_m_q ) ) ;
    h_q = h_q - dt*(- ( rate_h_q ) ) ;
   }
  return 0;
}
 
static int  rates ( _threadargsproto_ ) {
   m_forwardRate_x = ( v - m_forwardRate_midpoint ) / m_forwardRate_scale ;
   if ( m_forwardRate_x  != 0.0 ) {
     m_forwardRate_r = m_forwardRate_rate * m_forwardRate_x / ( 1.0 - exp ( 0.0 - m_forwardRate_x ) ) ;
     }
   else if ( m_forwardRate_x  == 0.0 ) {
     m_forwardRate_r = m_forwardRate_rate ;
     }
   m_reverseRate_r = m_reverseRate_rate * exp ( ( v - m_reverseRate_midpoint ) / m_reverseRate_scale ) ;
   m_rateScale = 1.0 ;
   m_alpha = m_forwardRate_r ;
   m_beta = m_reverseRate_r ;
   m_fcond = pow( m_q , m_instances ) ;
   m_inf = m_alpha / ( m_alpha + m_beta ) ;
   m_tau = 1.0 / ( ( m_alpha + m_beta ) * m_rateScale ) ;
   h_forwardRate_r = h_forwardRate_rate * exp ( ( v - h_forwardRate_midpoint ) / h_forwardRate_scale ) ;
   h_reverseRate_r = h_reverseRate_rate / ( 1.0 + exp ( 0.0 - ( v - h_reverseRate_midpoint ) / h_reverseRate_scale ) ) ;
   h_rateScale = 1.0 ;
   h_alpha = h_forwardRate_r ;
   h_beta = h_reverseRate_r ;
   h_fcond = pow( h_q , h_instances ) ;
   h_inf = h_alpha / ( h_alpha + h_beta ) ;
   h_tau = 1.0 / ( ( h_alpha + h_beta ) * h_rateScale ) ;
   rate_m_q = ( m_inf - m_q ) / m_tau ;
   rate_h_q = ( h_inf - h_q ) / h_tau ;
    return 0; }
 
static void _hoc_rates(void) {
  double _r;
   double* _p; Datum* _ppvar; Datum* _thread; _NrnThread* _nt;
   if (_extcall_prop) {_p = _extcall_prop->param; _ppvar = _extcall_prop->dparam;}else{ _p = (double*)0; _ppvar = (Datum*)0; }
  _thread = _extcall_thread;
  _nt = nrn_threads;
 _r = 1.;
 rates ( _p, _ppvar, _thread, _nt );
 hoc_retpushx(_r);
}
 
static int _ode_count(int _type){ return 2;}
 
static void _ode_spec(_NrnThread* _nt, _Memb_list* _ml, int _type) {
   double* _p; Datum* _ppvar; Datum* _thread;
   Node* _nd; double _v; int _iml, _cntml;
  _cntml = _ml->_nodecount;
  _thread = _ml->_thread;
  for (_iml = 0; _iml < _cntml; ++_iml) {
    _p = _ml->_data[_iml]; _ppvar = _ml->_pdata[_iml];
    _nd = _ml->_nodelist[_iml];
    v = NODEV(_nd);
     _ode_spec1 (_p, _ppvar, _thread, _nt);
  }}
 
static void _ode_map(int _ieq, double** _pv, double** _pvdot, double* _pp, Datum* _ppd, double* _atol, int _type) { 
	double* _p; Datum* _ppvar;
 	int _i; _p = _pp; _ppvar = _ppd;
	_cvode_ieq = _ieq;
	for (_i=0; _i < 2; ++_i) {
		_pv[_i] = _pp + _slist1[_i];  _pvdot[_i] = _pp + _dlist1[_i];
		_cvode_abstol(_atollist, _atol, _i);
	}
 }
 
static void _ode_matsol(_NrnThread* _nt, _Memb_list* _ml, int _type) {
   double* _p; Datum* _ppvar; Datum* _thread;
   Node* _nd; double _v; int _iml, _cntml;
  _cntml = _ml->_nodecount;
  _thread = _ml->_thread;
  for (_iml = 0; _iml < _cntml; ++_iml) {
    _p = _ml->_data[_iml]; _ppvar = _ml->_pdata[_iml];
    _nd = _ml->_nodelist[_iml];
    v = NODEV(_nd);
 _ode_matsol1 (_p, _ppvar, _thread, _nt);
 }}
 extern void nrn_update_ion_pointer(Symbol*, Datum*, int, int);
 static void _update_ion_pointer(Datum* _ppvar) {
   nrn_update_ion_pointer(_na_sym, _ppvar, 0, 3);
   nrn_update_ion_pointer(_na_sym, _ppvar, 1, 4);
 }

static void initmodel(double* _p, Datum* _ppvar, Datum* _thread, _NrnThread* _nt) {
  int _i; double _save;{
  h_q = h_q0;
  m_q = m_q0;
 {
   ena = 50.0 ;
   temperature = celsius + 273.15 ;
   rates ( _threadargs_ ) ;
   rates ( _threadargs_ ) ;
   m_q = m_inf ;
   h_q = h_inf ;
   }
 
}
}

static void nrn_init(_NrnThread* _nt, _Memb_list* _ml, int _type){
double* _p; Datum* _ppvar; Datum* _thread;
Node *_nd; double _v; int* _ni; int _iml, _cntml;
#if CACHEVEC
    _ni = _ml->_nodeindices;
#endif
_cntml = _ml->_nodecount;
_thread = _ml->_thread;
for (_iml = 0; _iml < _cntml; ++_iml) {
 _p = _ml->_data[_iml]; _ppvar = _ml->_pdata[_iml];
#if CACHEVEC
  if (use_cachevec) {
    _v = VEC_V(_ni[_iml]);
  }else
#endif
  {
    _nd = _ml->_nodelist[_iml];
    _v = NODEV(_nd);
  }
 v = _v;
 initmodel(_p, _ppvar, _thread, _nt);
 }}

static double _nrn_current(double* _p, Datum* _ppvar, Datum* _thread, _NrnThread* _nt, double _v){double _current=0.;v=_v;{ {
   conductanceScale = 1.0 ;
   fopen0 = m_fcond * h_fcond ;
   fopen = conductanceScale * fopen0 ;
   g = conductance * fopen ;
   gion = gmax * fopen ;
   ina = gion * ( v - ena ) ;
   }
 _current += ina;

} return _current;
}

static void nrn_cur(_NrnThread* _nt, _Memb_list* _ml, int _type) {
double* _p; Datum* _ppvar; Datum* _thread;
Node *_nd; int* _ni; double _rhs, _v; int _iml, _cntml;
#if CACHEVEC
    _ni = _ml->_nodeindices;
#endif
_cntml = _ml->_nodecount;
_thread = _ml->_thread;
for (_iml = 0; _iml < _cntml; ++_iml) {
 _p = _ml->_data[_iml]; _ppvar = _ml->_pdata[_iml];
#if CACHEVEC
  if (use_cachevec) {
    _v = VEC_V(_ni[_iml]);
  }else
#endif
  {
    _nd = _ml->_nodelist[_iml];
    _v = NODEV(_nd);
  }
 _g = _nrn_current(_p, _ppvar, _thread, _nt, _v + .001);
 	{ double _dina;
  _dina = ina;
 _rhs = _nrn_current(_p, _ppvar, _thread, _nt, _v);
  _ion_dinadv += (_dina - ina)/.001 ;
 	}
 _g = (_g - _rhs)/.001;
  _ion_ina += ina ;
#if CACHEVEC
  if (use_cachevec) {
	VEC_RHS(_ni[_iml]) -= _rhs;
  }else
#endif
  {
	NODERHS(_nd) -= _rhs;
  }
 
}}

static void nrn_jacob(_NrnThread* _nt, _Memb_list* _ml, int _type) {
double* _p; Datum* _ppvar; Datum* _thread;
Node *_nd; int* _ni; int _iml, _cntml;
#if CACHEVEC
    _ni = _ml->_nodeindices;
#endif
_cntml = _ml->_nodecount;
_thread = _ml->_thread;
for (_iml = 0; _iml < _cntml; ++_iml) {
 _p = _ml->_data[_iml];
#if CACHEVEC
  if (use_cachevec) {
	VEC_D(_ni[_iml]) += _g;
  }else
#endif
  {
     _nd = _ml->_nodelist[_iml];
	NODED(_nd) += _g;
  }
 
}}

static void nrn_state(_NrnThread* _nt, _Memb_list* _ml, int _type) {
 double _break, _save;
double* _p; Datum* _ppvar; Datum* _thread;
Node *_nd; double _v; int* _ni; int _iml, _cntml;
#if CACHEVEC
    _ni = _ml->_nodeindices;
#endif
_cntml = _ml->_nodecount;
_thread = _ml->_thread;
for (_iml = 0; _iml < _cntml; ++_iml) {
 _p = _ml->_data[_iml]; _ppvar = _ml->_pdata[_iml];
 _nd = _ml->_nodelist[_iml];
#if CACHEVEC
  if (use_cachevec) {
    _v = VEC_V(_ni[_iml]);
  }else
#endif
  {
    _nd = _ml->_nodelist[_iml];
    _v = NODEV(_nd);
  }
 _break = t + .5*dt; _save = t;
 v=_v;
{
 { {
 for (; t < _break; t += dt) {
   states(_p, _ppvar, _thread, _nt);
  
}}
 t = _save;
 } }}

}

static void terminal(){}

static void _initlists(){
 double _x; double* _p = &_x;
 int _i; static int _first = 1;
  if (!_first) return;
 _slist1[0] = &(m_q) - _p;  _dlist1[0] = &(Dm_q) - _p;
 _slist1[1] = &(h_q) - _p;  _dlist1[1] = &(Dh_q) - _p;
_first = 0;
}

#if defined(__cplusplus)
} /* extern "C" */
#endif
