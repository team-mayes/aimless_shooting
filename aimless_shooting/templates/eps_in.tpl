Short QM run to check for direction of reaction progress
 &cntrl
  imin=0,
  ioutfm=1,						!netCDF output format
  ntx=5,
  ntxo=1,
  nstlim=1000,
  dt=0.001,
  ntf=2,
  ntc=2,						! SHAKE. 1 = no, 2 = hydrogen bonds, 3 = all bonds
  irest=1,
  temp0=300.0,
  ntpr=10,  					! Steps between writes to out
  ntwx=1,						! Steps between writes to mdcrd. 0 = no mdcrd
  cut=8.0,
  ntb=2,						! Periodicity. = 2 for ntp > 0
  ntp=1,
  ntt=2,						! Temperature control sceme. 2 = Anderson, 3 = Langevin
  vrand=100,					! Steps between redistribution of velocities according to Boltzmann distribution
  ig=-1,
  ifqnt=1,
 &end
 &qmmm
  qmmask=':442-443 | (:248,260,262,263,58,284,61,123,219,28,26,165,44,52,53,216,277,122,60 & !@C,CA,N,HA,H,O) | :218,9688,9692,9740,9741,9670,9733,9645,9694,13599,9653',
  qmcharge=0, !two unprotonated carboxylate groups, one arginine, and one protonated histidine
  qm_theory='DFTB',
  qmshake=0,
  qmcut=8.0,
  writepdb=1,
 &end
 &wt
  type="END",
 &end
