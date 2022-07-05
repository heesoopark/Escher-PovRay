#! /usr/bin/octave -q

cr = cr_read_vasp("POSCAR","POTCAR");
#cr = cr_newcell(cr,[-1 1 1],[1 -1 1],[1 1 -1]);
cr = cr_newcell(cr,[5 0 0],[0 9 0],[0 0 1]);
mol = cr_crystalbox(cr);
molbig = cr_crystalbox(cr,[-0.5 -0.5 -0.5],[1.5 1.5 1.5]);
rep = representation();
rep = mol_ball(mol,rep,"Na",:,1.39);
rep = mol_ball(mol,rep,"Nb",:,0.74);
rep = mol_ball(mol,rep,"O",:,1.42);
rep = mol_ball(mol,rep,"S",:,1.84);
#rep = mol_stick(mol,rep,"Nb","O");
#rep = mol_stick(mol,rep,"Nb","S");
#rep = mol_polyhedron(mol,molbig,rep,"Nb","O",:,[127 255 127 0 153]);
#rep = mol_polyhedron(mol,molbig,rep,"Nb","S",:,[127 255 127 0 153]);
r = [
     0.9130300879 -0.2160353959 0.3459838331 0.0000000000
     0.3049260080 0.9248847365 -0.2271748185 0.0000000000
     -0.2709173858 0.3129168749 0.9103223681 0.0000000000
     0.0000000000 0.0000000000 -40.0000000000 1.0000000000
     ];
##r = [
##     1.0000000009  0.0000000009 0.0000000031 0.0000000000
##     0.0000000080 1.0000000065  0.0000000000 0.0000000000
##      0.0000000000 0.0000000000 1.0000000081 0.0000000000
##     0.0000000000 0.0000000000 -80.0000000000 1.0000000000
##     ];
rep = rep_setdefaultscene(rep,r);
rep_write_pov(rep,"agtao3.pov");
rep_write_obj(rep,"agtao3.obj");
