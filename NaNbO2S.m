#! /usr/bin/octave -q

cr = cr_read_vasp("POSCAR","POTCAR");
#cr = cr_newcell(cr,[1 0 0],[0 1 0],[0 0 1]);
cr = cr_newcell(cr,[6 0 0],[0 4 0],[0 0 1]);
mol = cr_crystalbox(cr);
molbig = cr_crystalbox(cr,[-0.5 -0.5 -0.5],[1.5 1.5 1.5]);
rep = representation();
rep = mol_ball(mol,rep,"Na",:,0.70);
rep = mol_ball(mol,rep,"Nb",:,0.090);
rep = mol_ball(mol,rep,"O",:,0.085, [0 185 228]);
#rep = mol_ball(mol,rep,"S",:,0.090);
#rep = mol_stick(mol,rep,"Nb","O",[-1 1.35], strict=0, radius=0.25);
#rep = mol_stick(mol,rep,"Nb","S",[-1 1.35], strict=0, radius=0.25);
rep = mol_polyhedron(mol,molbig,rep,"Nb","O",[-1.5 1.5],[0 185 228 0 53], [0 185 228], "opaque_triangle_default","stick_default",0.070);
r = [
     0.000000000  60.00000000  10.000000000 
     ];
rep = rep_setdefaultscene(rep,r);
rep_write_pov(rep,"NaNbO2S.pov");
rep_write_obj(rep,"NaNbO2S.obj");
