#include "textures.inc"
include "colors.inc"
#include "shapes.inc"
 global_settings
 { photons
   { count 20000
     media 100
   }
 }


#declare Finish=finish{diffuse 0.75 ambient 0}
#declare White=texture{pigment{image_map {
                              png "cloud.png" //or use any valid type like png
		              }
			translate -0.0 //centers unit square
                        scale <300,300,1>
                              } finish{Finish}}
#declare Ahmer=texture{pigment{image_map {
                              png "Ahmer_Rot.png" //or use any valid type like png
		              map_type 0 interpolate 2 once}
			translate 0.0 //centers unit square
                        scale <60,60,1>
                              } finish{Finish}}
#declare AhmerR=texture{pigment{image_map {
                              png "Bottom-TOC-m.png" //or use any valid type like png
		              map_type 0 interpolate 2 once}
			translate 0.0 //centers unit square
                        scale <60,60,1>
                              } finish{Finish}}
#declare Red=texture{pigment{rgb<0.57,0.025,0.025>} finish{Finish}}
#declare Green=texture{pigment{rgb<0.025,0.236,0.025>} finish{Finish}}
//Bottom
box{<0,0,0>, <200, 200, 1>
     texture{ pigment { image_map{ png "Bottom-TOC-m.png"
                        map_type 0 }
                        scale <20,20,1> }
              finish  { diffuse 0.9 phong 1}}
     scale 1.0 rotate<0,0,0> translate<-75,-70,-25>}
//left wall     
box{<0,0,0>, <72, 72, 1>
     texture{Ahmer}
     scale 1.0 rotate<0,90,27> translate<44,0,40>}
//right wall     
box{<0,0,0>, <72, 72, 1>
     texture{AhmerR}
     scale 1.0 rotate<0,90,-27> translate<-21,0,40>}
//Ceiling
box{<0,0,0>, <600, 600, 1>
     texture{White}
     scale 1.0 rotate<0,0,0> translate<-25,0,40>}
//Back wall
box{<0,0,0>, <1200, 1200, 1>
     texture{White}
     scale 1.2 rotate<90,0,0> translate<-170,-250,-180>}

// Model created MolWare, adapted from tessel's writepov.f 
// 

#declare ball_default = texture {NBwinebottle}
#declare opaque_triangle_default = texture {NBwinebottle}
#declare stick_default = texture {NBwinebottle}
#declare Mol1 = union {
  sphere{<0.000000000,0.000000000,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<0.000000000,0.000000000,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<0.000000000,15.908263106,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<0.000000000,15.908263106,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<23.862394659,0.000000000,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<23.862394659,0.000000000,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<23.862394659,15.908263106,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<23.862394659,15.908263106,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<3.977065776,3.977065776,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<3.977065776,3.977065776,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<3.977065776,0.000000000,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<3.977065776,0.000000000,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<3.977065776,15.908263106,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<3.977065776,15.908263106,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<0.000000000,3.977065776,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<0.000000000,3.977065776,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<23.862394659,3.977065776,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<23.862394659,3.977065776,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<7.954131553,7.954131553,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<7.954131553,7.954131553,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<7.954131553,3.977065776,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<7.954131553,3.977065776,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<7.954131553,0.000000000,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<7.954131553,0.000000000,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<7.954131553,15.908263106,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<7.954131553,15.908263106,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<3.977065776,7.954131553,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<3.977065776,7.954131553,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<0.000000000,7.954131553,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<0.000000000,7.954131553,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<23.862394659,7.954131553,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<23.862394659,7.954131553,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<11.931197329,11.931197329,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<11.931197329,11.931197329,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<11.931197329,7.954131553,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<11.931197329,7.954131553,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<11.931197329,3.977065776,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<11.931197329,3.977065776,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<11.931197329,0.000000000,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<11.931197329,0.000000000,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<11.931197329,15.908263106,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<11.931197329,15.908263106,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<7.954131553,11.931197329,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<7.954131553,11.931197329,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<3.977065776,11.931197329,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<3.977065776,11.931197329,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<0.000000000,11.931197329,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<0.000000000,11.931197329,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<23.862394659,11.931197329,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<23.862394659,11.931197329,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<15.908263106,0.000000000,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<15.908263106,0.000000000,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<15.908263106,15.908263106,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<15.908263106,15.908263106,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<15.908263106,11.931197329,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<15.908263106,11.931197329,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<15.908263106,7.954131553,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<15.908263106,7.954131553,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<15.908263106,3.977065776,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<15.908263106,3.977065776,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<19.885328882,0.000000000,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<19.885328882,0.000000000,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<19.885328882,15.908263106,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<19.885328882,15.908263106,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<19.885328882,11.931197329,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<19.885328882,11.931197329,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<19.885328882,7.954131553,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<19.885328882,7.954131553,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<19.885328882,3.977065776,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<19.885328882,3.977065776,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000>} }}
  sphere{<1.988532888,1.988532888,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<5.965598665,5.965598665,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<5.965598665,1.988532888,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<1.988532888,5.965598665,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<21.873861771,5.965598665,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<21.873861771,1.988532888,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<9.942664441,9.942664441,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<9.942664441,5.965598665,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<9.942664441,1.988532888,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<5.965598665,9.942664441,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<1.988532888,9.942664441,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<21.873861771,9.942664441,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<13.919730218,13.919730218,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<13.919730218,9.942664441,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<13.919730218,5.965598665,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<13.919730218,1.988532888,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<9.942664441,13.919730218,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<5.965598665,13.919730218,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<1.988532888,13.919730218,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<21.873861771,13.919730218,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<17.896795994,13.919730218,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<17.896795994,9.942664441,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<17.896795994,5.965598665,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<17.896795994,1.988532888,2.518309029>, 0.090000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000>} }}
  sphere{<1.988532888,0.000000000,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<1.988532888,15.908263106,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<0.000000000,1.988532888,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<23.862394659,1.988532888,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<1.988532888,1.988532888,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<1.988532888,1.988532888,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<5.965598665,5.965598665,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<5.965598665,5.965598665,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<5.965598665,3.977065776,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<3.977065776,5.965598665,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<5.965598665,1.988532888,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<5.965598665,1.988532888,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<5.965598665,0.000000000,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<5.965598665,15.908263106,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<3.977065776,1.988532888,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<1.988532888,5.965598665,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<1.988532888,5.965598665,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<1.988532888,3.977065776,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<0.000000000,5.965598665,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<23.862394659,5.965598665,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<21.873861771,5.965598665,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<21.873861771,5.965598665,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<21.873861771,3.977065776,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<21.873861771,1.988532888,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<21.873861771,1.988532888,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<21.873861771,0.000000000,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<21.873861771,15.908263106,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<9.942664441,9.942664441,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<9.942664441,9.942664441,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<9.942664441,7.954131553,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<7.954131553,9.942664441,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<9.942664441,5.965598665,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<9.942664441,5.965598665,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<9.942664441,3.977065776,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<7.954131553,5.965598665,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<9.942664441,1.988532888,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<9.942664441,1.988532888,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<9.942664441,0.000000000,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<9.942664441,15.908263106,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<7.954131553,1.988532888,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<5.965598665,9.942664441,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<5.965598665,9.942664441,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<5.965598665,7.954131553,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<3.977065776,9.942664441,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<1.988532888,9.942664441,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<1.988532888,9.942664441,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<1.988532888,7.954131553,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<0.000000000,9.942664441,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<23.862394659,9.942664441,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<21.873861771,9.942664441,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<21.873861771,9.942664441,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<21.873861771,7.954131553,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<13.919730218,13.919730218,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<13.919730218,13.919730218,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<13.919730218,11.931197329,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<11.931197329,13.919730218,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<13.919730218,9.942664441,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<13.919730218,9.942664441,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<13.919730218,7.954131553,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<11.931197329,9.942664441,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<13.919730218,5.965598665,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<13.919730218,5.965598665,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<13.919730218,3.977065776,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<11.931197329,5.965598665,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<13.919730218,1.988532888,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<13.919730218,1.988532888,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<13.919730218,0.000000000,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<13.919730218,15.908263106,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<11.931197329,1.988532888,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<9.942664441,13.919730218,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<9.942664441,13.919730218,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<9.942664441,11.931197329,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<7.954131553,13.919730218,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<5.965598665,13.919730218,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<5.965598665,13.919730218,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<5.965598665,11.931197329,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<3.977065776,13.919730218,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<1.988532888,13.919730218,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<1.988532888,13.919730218,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<1.988532888,11.931197329,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<0.000000000,13.919730218,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<23.862394659,13.919730218,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<21.873861771,13.919730218,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<21.873861771,13.919730218,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<21.873861771,11.931197329,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<17.896795994,0.000000000,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<17.896795994,15.908263106,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<17.896795994,13.919730218,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<17.896795994,13.919730218,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<17.896795994,11.931197329,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<15.908263106,13.919730218,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<17.896795994,9.942664441,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<17.896795994,9.942664441,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<17.896795994,7.954131553,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<15.908263106,9.942664441,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<17.896795994,5.965598665,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<17.896795994,5.965598665,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<17.896795994,3.977065776,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<15.908263106,5.965598665,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<17.896795994,1.988532888,0.000000000>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<17.896795994,1.988532888,5.036618058>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<15.908263106,1.988532888,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<19.885328882,13.919730218,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<19.885328882,9.942664441,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<19.885328882,5.965598665,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
  sphere{<19.885328882,1.988532888,2.518309029>, 0.085000000 texture {ball_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,3.977065776,2.518309029>,<1.988532888,1.988532888,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,3.977065776,2.518309029>,<0.000000000,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,1.988532888,5.036618058>,<0.000000000,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,1.988532888,5.036618058>,<1.988532888,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,1.988532888,5.036618058>,<3.977065776,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,3.977065776,2.518309029>,<3.977065776,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,1.988532888,0.000000000>,<1.988532888,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,1.988532888,0.000000000>,<0.000000000,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,3.977065776,2.518309029>,<0.000000000,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,3.977065776,2.518309029>,<1.988532888,1.988532888,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,3.977065776,2.518309029>,<3.977065776,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,1.988532888,0.000000000>,<3.977065776,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,0.000000000,2.518309029>,<1.988532888,1.988532888,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,0.000000000,2.518309029>,<3.977065776,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,1.988532888,5.036618058>,<3.977065776,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,1.988532888,5.036618058>,<1.988532888,0.000000000,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,1.988532888,5.036618058>,<0.000000000,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,0.000000000,2.518309029>,<0.000000000,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,0.000000000,2.518309029>,<1.988532888,1.988532888,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,0.000000000,2.518309029>,<0.000000000,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,1.988532888,0.000000000>,<0.000000000,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,1.988532888,0.000000000>,<1.988532888,0.000000000,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,1.988532888,0.000000000>,<3.977065776,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,0.000000000,2.518309029>,<3.977065776,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,7.954131553,2.518309029>,<5.965598665,5.965598665,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,7.954131553,2.518309029>,<3.977065776,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,5.965598665,5.036618058>,<3.977065776,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,5.965598665,5.036618058>,<5.965598665,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,5.965598665,5.036618058>,<7.954131553,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,7.954131553,2.518309029>,<7.954131553,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,5.965598665,0.000000000>,<5.965598665,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,5.965598665,0.000000000>,<3.977065776,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,7.954131553,2.518309029>,<3.977065776,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,7.954131553,2.518309029>,<5.965598665,5.965598665,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,7.954131553,2.518309029>,<7.954131553,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,5.965598665,0.000000000>,<7.954131553,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,3.977065776,2.518309029>,<5.965598665,5.965598665,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,3.977065776,2.518309029>,<7.954131553,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,5.965598665,5.036618058>,<7.954131553,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,5.965598665,5.036618058>,<5.965598665,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,5.965598665,5.036618058>,<3.977065776,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,3.977065776,2.518309029>,<3.977065776,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,3.977065776,2.518309029>,<5.965598665,5.965598665,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,3.977065776,2.518309029>,<3.977065776,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,5.965598665,0.000000000>,<3.977065776,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,5.965598665,0.000000000>,<5.965598665,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,5.965598665,0.000000000>,<7.954131553,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,3.977065776,2.518309029>,<7.954131553,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,3.977065776,2.518309029>,<5.965598665,1.988532888,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,3.977065776,2.518309029>,<3.977065776,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,1.988532888,5.036618058>,<3.977065776,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,1.988532888,5.036618058>,<5.965598665,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,1.988532888,5.036618058>,<7.954131553,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,3.977065776,2.518309029>,<7.954131553,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,1.988532888,0.000000000>,<5.965598665,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,1.988532888,0.000000000>,<3.977065776,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,3.977065776,2.518309029>,<3.977065776,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,3.977065776,2.518309029>,<5.965598665,1.988532888,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,3.977065776,2.518309029>,<7.954131553,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,1.988532888,0.000000000>,<7.954131553,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,0.000000000,2.518309029>,<5.965598665,1.988532888,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,0.000000000,2.518309029>,<7.954131553,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,1.988532888,5.036618058>,<7.954131553,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,1.988532888,5.036618058>,<5.965598665,0.000000000,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,1.988532888,5.036618058>,<3.977065776,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,0.000000000,2.518309029>,<3.977065776,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,0.000000000,2.518309029>,<5.965598665,1.988532888,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,0.000000000,2.518309029>,<3.977065776,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,1.988532888,0.000000000>,<3.977065776,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,1.988532888,0.000000000>,<5.965598665,0.000000000,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,1.988532888,0.000000000>,<7.954131553,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,0.000000000,2.518309029>,<7.954131553,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,7.954131553,2.518309029>,<1.988532888,5.965598665,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,7.954131553,2.518309029>,<0.000000000,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,5.965598665,5.036618058>,<0.000000000,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,5.965598665,5.036618058>,<1.988532888,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,5.965598665,5.036618058>,<3.977065776,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,7.954131553,2.518309029>,<3.977065776,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,5.965598665,0.000000000>,<1.988532888,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,5.965598665,0.000000000>,<0.000000000,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,7.954131553,2.518309029>,<0.000000000,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,7.954131553,2.518309029>,<1.988532888,5.965598665,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,7.954131553,2.518309029>,<3.977065776,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,5.965598665,0.000000000>,<3.977065776,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,3.977065776,2.518309029>,<1.988532888,5.965598665,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,3.977065776,2.518309029>,<3.977065776,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,5.965598665,5.036618058>,<3.977065776,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,5.965598665,5.036618058>,<1.988532888,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,5.965598665,5.036618058>,<0.000000000,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,3.977065776,2.518309029>,<0.000000000,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,3.977065776,2.518309029>,<1.988532888,5.965598665,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,3.977065776,2.518309029>,<0.000000000,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,5.965598665,0.000000000>,<0.000000000,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,5.965598665,0.000000000>,<1.988532888,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,5.965598665,0.000000000>,<3.977065776,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,3.977065776,2.518309029>,<3.977065776,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,7.954131553,2.518309029>,<21.873861771,5.965598665,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,7.954131553,2.518309029>,<19.885328882,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,5.965598665,5.036618058>,<19.885328882,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,5.965598665,5.036618058>,<21.873861771,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,5.965598665,5.036618058>,<23.862394659,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,7.954131553,2.518309029>,<23.862394659,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,5.965598665,0.000000000>,<21.873861771,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,5.965598665,0.000000000>,<19.885328882,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,7.954131553,2.518309029>,<19.885328882,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,7.954131553,2.518309029>,<21.873861771,5.965598665,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,7.954131553,2.518309029>,<23.862394659,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,5.965598665,0.000000000>,<23.862394659,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,3.977065776,2.518309029>,<21.873861771,5.965598665,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,3.977065776,2.518309029>,<23.862394659,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,5.965598665,5.036618058>,<23.862394659,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,5.965598665,5.036618058>,<21.873861771,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,5.965598665,5.036618058>,<19.885328882,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,3.977065776,2.518309029>,<19.885328882,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,3.977065776,2.518309029>,<21.873861771,5.965598665,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,3.977065776,2.518309029>,<19.885328882,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,5.965598665,0.000000000>,<19.885328882,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,5.965598665,0.000000000>,<21.873861771,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,5.965598665,0.000000000>,<23.862394659,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,3.977065776,2.518309029>,<23.862394659,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,3.977065776,2.518309029>,<21.873861771,1.988532888,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,3.977065776,2.518309029>,<19.885328882,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,1.988532888,5.036618058>,<19.885328882,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,1.988532888,5.036618058>,<21.873861771,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,1.988532888,5.036618058>,<23.862394659,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,3.977065776,2.518309029>,<23.862394659,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,1.988532888,0.000000000>,<21.873861771,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,1.988532888,0.000000000>,<19.885328882,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,3.977065776,2.518309029>,<19.885328882,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,3.977065776,2.518309029>,<21.873861771,1.988532888,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,3.977065776,2.518309029>,<23.862394659,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,1.988532888,0.000000000>,<23.862394659,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,0.000000000,2.518309029>,<21.873861771,1.988532888,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,0.000000000,2.518309029>,<23.862394659,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,1.988532888,5.036618058>,<23.862394659,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,1.988532888,5.036618058>,<21.873861771,0.000000000,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,1.988532888,5.036618058>,<19.885328882,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,0.000000000,2.518309029>,<19.885328882,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,0.000000000,2.518309029>,<21.873861771,1.988532888,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,0.000000000,2.518309029>,<19.885328882,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,1.988532888,0.000000000>,<19.885328882,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,1.988532888,0.000000000>,<21.873861771,0.000000000,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,1.988532888,0.000000000>,<23.862394659,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,0.000000000,2.518309029>,<23.862394659,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,9.942664441,5.036618058>,<9.942664441,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,9.942664441,5.036618058>,<7.954131553,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,7.954131553,2.518309029>,<7.954131553,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,7.954131553,2.518309029>,<9.942664441,9.942664441,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,7.954131553,2.518309029>,<11.931197329,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,9.942664441,5.036618058>,<11.931197329,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,7.954131553,2.518309029>,<9.942664441,9.942664441,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,7.954131553,2.518309029>,<7.954131553,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,9.942664441,0.000000000>,<7.954131553,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,9.942664441,0.000000000>,<9.942664441,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,9.942664441,0.000000000>,<11.931197329,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,7.954131553,2.518309029>,<11.931197329,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,9.942664441,5.036618058>,<9.942664441,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,9.942664441,5.036618058>,<11.931197329,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,11.931197329,2.518309029>,<11.931197329,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,11.931197329,2.518309029>,<9.942664441,9.942664441,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,11.931197329,2.518309029>,<7.954131553,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,9.942664441,5.036618058>,<7.954131553,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,9.942664441,0.000000000>,<9.942664441,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,9.942664441,0.000000000>,<7.954131553,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,11.931197329,2.518309029>,<7.954131553,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,11.931197329,2.518309029>,<9.942664441,9.942664441,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,11.931197329,2.518309029>,<11.931197329,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,9.942664441,0.000000000>,<11.931197329,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,7.954131553,2.518309029>,<9.942664441,5.965598665,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,7.954131553,2.518309029>,<7.954131553,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,5.965598665,5.036618058>,<7.954131553,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,5.965598665,5.036618058>,<9.942664441,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,5.965598665,5.036618058>,<11.931197329,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,7.954131553,2.518309029>,<11.931197329,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,5.965598665,0.000000000>,<9.942664441,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,5.965598665,0.000000000>,<7.954131553,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,7.954131553,2.518309029>,<7.954131553,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,7.954131553,2.518309029>,<9.942664441,5.965598665,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,7.954131553,2.518309029>,<11.931197329,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,5.965598665,0.000000000>,<11.931197329,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,3.977065776,2.518309029>,<9.942664441,5.965598665,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,3.977065776,2.518309029>,<11.931197329,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,5.965598665,5.036618058>,<11.931197329,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,5.965598665,5.036618058>,<9.942664441,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,5.965598665,5.036618058>,<7.954131553,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,3.977065776,2.518309029>,<7.954131553,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,3.977065776,2.518309029>,<9.942664441,5.965598665,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,3.977065776,2.518309029>,<7.954131553,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,5.965598665,0.000000000>,<7.954131553,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,5.965598665,0.000000000>,<9.942664441,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,5.965598665,0.000000000>,<11.931197329,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,3.977065776,2.518309029>,<11.931197329,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,3.977065776,2.518309029>,<9.942664441,1.988532888,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,3.977065776,2.518309029>,<7.954131553,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,1.988532888,5.036618058>,<7.954131553,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,1.988532888,5.036618058>,<9.942664441,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,1.988532888,5.036618058>,<11.931197329,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,3.977065776,2.518309029>,<11.931197329,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,1.988532888,0.000000000>,<9.942664441,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,1.988532888,0.000000000>,<7.954131553,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,3.977065776,2.518309029>,<7.954131553,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,3.977065776,2.518309029>,<9.942664441,1.988532888,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,3.977065776,2.518309029>,<11.931197329,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,1.988532888,0.000000000>,<11.931197329,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,0.000000000,2.518309029>,<9.942664441,1.988532888,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,0.000000000,2.518309029>,<11.931197329,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,1.988532888,5.036618058>,<11.931197329,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,1.988532888,5.036618058>,<9.942664441,0.000000000,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,1.988532888,5.036618058>,<7.954131553,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,0.000000000,2.518309029>,<7.954131553,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,0.000000000,2.518309029>,<9.942664441,1.988532888,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,0.000000000,2.518309029>,<7.954131553,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,1.988532888,0.000000000>,<7.954131553,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,1.988532888,0.000000000>,<9.942664441,0.000000000,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,1.988532888,0.000000000>,<11.931197329,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,0.000000000,2.518309029>,<11.931197329,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,9.942664441,5.036618058>,<5.965598665,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,9.942664441,5.036618058>,<3.977065776,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,7.954131553,2.518309029>,<3.977065776,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,7.954131553,2.518309029>,<5.965598665,9.942664441,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,7.954131553,2.518309029>,<7.954131553,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,9.942664441,5.036618058>,<7.954131553,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,7.954131553,2.518309029>,<5.965598665,9.942664441,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,7.954131553,2.518309029>,<3.977065776,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,9.942664441,0.000000000>,<3.977065776,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,9.942664441,0.000000000>,<5.965598665,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,9.942664441,0.000000000>,<7.954131553,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,7.954131553,2.518309029>,<7.954131553,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,9.942664441,5.036618058>,<5.965598665,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,9.942664441,5.036618058>,<7.954131553,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,11.931197329,2.518309029>,<7.954131553,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,11.931197329,2.518309029>,<5.965598665,9.942664441,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,11.931197329,2.518309029>,<3.977065776,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,9.942664441,5.036618058>,<3.977065776,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,9.942664441,0.000000000>,<5.965598665,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,9.942664441,0.000000000>,<3.977065776,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,11.931197329,2.518309029>,<3.977065776,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,11.931197329,2.518309029>,<5.965598665,9.942664441,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,11.931197329,2.518309029>,<7.954131553,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,9.942664441,0.000000000>,<7.954131553,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,9.942664441,5.036618058>,<1.988532888,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,9.942664441,5.036618058>,<0.000000000,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,7.954131553,2.518309029>,<0.000000000,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,7.954131553,2.518309029>,<1.988532888,9.942664441,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,7.954131553,2.518309029>,<3.977065776,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,9.942664441,5.036618058>,<3.977065776,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,7.954131553,2.518309029>,<1.988532888,9.942664441,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,7.954131553,2.518309029>,<0.000000000,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,9.942664441,0.000000000>,<0.000000000,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,9.942664441,0.000000000>,<1.988532888,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,9.942664441,0.000000000>,<3.977065776,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,7.954131553,2.518309029>,<3.977065776,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,9.942664441,5.036618058>,<1.988532888,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,9.942664441,5.036618058>,<3.977065776,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,11.931197329,2.518309029>,<3.977065776,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,11.931197329,2.518309029>,<1.988532888,9.942664441,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,11.931197329,2.518309029>,<0.000000000,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,9.942664441,5.036618058>,<0.000000000,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,9.942664441,0.000000000>,<1.988532888,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,9.942664441,0.000000000>,<0.000000000,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,11.931197329,2.518309029>,<0.000000000,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,11.931197329,2.518309029>,<1.988532888,9.942664441,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,11.931197329,2.518309029>,<3.977065776,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,9.942664441,0.000000000>,<3.977065776,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,9.942664441,5.036618058>,<21.873861771,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,9.942664441,5.036618058>,<19.885328882,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,7.954131553,2.518309029>,<19.885328882,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,7.954131553,2.518309029>,<21.873861771,9.942664441,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,7.954131553,2.518309029>,<23.862394659,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,9.942664441,5.036618058>,<23.862394659,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,7.954131553,2.518309029>,<21.873861771,9.942664441,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,7.954131553,2.518309029>,<19.885328882,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,9.942664441,0.000000000>,<19.885328882,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,9.942664441,0.000000000>,<21.873861771,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,9.942664441,0.000000000>,<23.862394659,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,7.954131553,2.518309029>,<23.862394659,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,9.942664441,5.036618058>,<21.873861771,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,9.942664441,5.036618058>,<23.862394659,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,11.931197329,2.518309029>,<23.862394659,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,11.931197329,2.518309029>,<21.873861771,9.942664441,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,11.931197329,2.518309029>,<19.885328882,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,9.942664441,5.036618058>,<19.885328882,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,9.942664441,0.000000000>,<21.873861771,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,9.942664441,0.000000000>,<19.885328882,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,11.931197329,2.518309029>,<19.885328882,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,11.931197329,2.518309029>,<21.873861771,9.942664441,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,11.931197329,2.518309029>,<23.862394659,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,9.942664441,0.000000000>,<23.862394659,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,15.908263106,2.518309029>,<13.919730218,13.919730218,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,15.908263106,2.518309029>,<11.931197329,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,13.919730218,5.036618058>,<11.931197329,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,13.919730218,5.036618058>,<13.919730218,15.908263106,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,13.919730218,5.036618058>,<15.908263106,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,15.908263106,2.518309029>,<15.908263106,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,13.919730218,0.000000000>,<13.919730218,15.908263106,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,13.919730218,0.000000000>,<11.931197329,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,15.908263106,2.518309029>,<11.931197329,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,15.908263106,2.518309029>,<13.919730218,13.919730218,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,15.908263106,2.518309029>,<15.908263106,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,13.919730218,0.000000000>,<15.908263106,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,11.931197329,2.518309029>,<13.919730218,13.919730218,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,11.931197329,2.518309029>,<15.908263106,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,13.919730218,5.036618058>,<15.908263106,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,13.919730218,5.036618058>,<13.919730218,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,13.919730218,5.036618058>,<11.931197329,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,11.931197329,2.518309029>,<11.931197329,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,11.931197329,2.518309029>,<13.919730218,13.919730218,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,11.931197329,2.518309029>,<11.931197329,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,13.919730218,0.000000000>,<11.931197329,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,13.919730218,0.000000000>,<13.919730218,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,13.919730218,0.000000000>,<15.908263106,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,11.931197329,2.518309029>,<15.908263106,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,9.942664441,5.036618058>,<13.919730218,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,9.942664441,5.036618058>,<11.931197329,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,7.954131553,2.518309029>,<11.931197329,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,7.954131553,2.518309029>,<13.919730218,9.942664441,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,7.954131553,2.518309029>,<15.908263106,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,9.942664441,5.036618058>,<15.908263106,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,7.954131553,2.518309029>,<13.919730218,9.942664441,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,7.954131553,2.518309029>,<11.931197329,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,9.942664441,0.000000000>,<11.931197329,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,9.942664441,0.000000000>,<13.919730218,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,9.942664441,0.000000000>,<15.908263106,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,7.954131553,2.518309029>,<15.908263106,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,9.942664441,5.036618058>,<13.919730218,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,9.942664441,5.036618058>,<15.908263106,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,11.931197329,2.518309029>,<15.908263106,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,11.931197329,2.518309029>,<13.919730218,9.942664441,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,11.931197329,2.518309029>,<11.931197329,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,9.942664441,5.036618058>,<11.931197329,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,9.942664441,0.000000000>,<13.919730218,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,9.942664441,0.000000000>,<11.931197329,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,11.931197329,2.518309029>,<11.931197329,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,11.931197329,2.518309029>,<13.919730218,9.942664441,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,11.931197329,2.518309029>,<15.908263106,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,9.942664441,0.000000000>,<15.908263106,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,7.954131553,2.518309029>,<13.919730218,5.965598665,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,7.954131553,2.518309029>,<11.931197329,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,5.965598665,5.036618058>,<11.931197329,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,5.965598665,5.036618058>,<13.919730218,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,5.965598665,5.036618058>,<15.908263106,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,7.954131553,2.518309029>,<15.908263106,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,5.965598665,0.000000000>,<13.919730218,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,5.965598665,0.000000000>,<11.931197329,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,7.954131553,2.518309029>,<11.931197329,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,7.954131553,2.518309029>,<13.919730218,5.965598665,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,7.954131553,2.518309029>,<15.908263106,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,5.965598665,0.000000000>,<15.908263106,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,3.977065776,2.518309029>,<13.919730218,5.965598665,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,3.977065776,2.518309029>,<15.908263106,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,5.965598665,5.036618058>,<15.908263106,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,5.965598665,5.036618058>,<13.919730218,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,5.965598665,5.036618058>,<11.931197329,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,3.977065776,2.518309029>,<11.931197329,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,3.977065776,2.518309029>,<13.919730218,5.965598665,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,3.977065776,2.518309029>,<11.931197329,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,5.965598665,0.000000000>,<11.931197329,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,5.965598665,0.000000000>,<13.919730218,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,5.965598665,0.000000000>,<15.908263106,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,3.977065776,2.518309029>,<15.908263106,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,3.977065776,2.518309029>,<13.919730218,1.988532888,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,3.977065776,2.518309029>,<11.931197329,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,1.988532888,5.036618058>,<11.931197329,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,1.988532888,5.036618058>,<13.919730218,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,1.988532888,5.036618058>,<15.908263106,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,3.977065776,2.518309029>,<15.908263106,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,1.988532888,0.000000000>,<13.919730218,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,1.988532888,0.000000000>,<11.931197329,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,3.977065776,2.518309029>,<11.931197329,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,3.977065776,2.518309029>,<13.919730218,1.988532888,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,3.977065776,2.518309029>,<15.908263106,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,1.988532888,0.000000000>,<15.908263106,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,0.000000000,2.518309029>,<13.919730218,1.988532888,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,0.000000000,2.518309029>,<15.908263106,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,1.988532888,5.036618058>,<15.908263106,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,1.988532888,5.036618058>,<13.919730218,0.000000000,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,1.988532888,5.036618058>,<11.931197329,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,0.000000000,2.518309029>,<11.931197329,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,0.000000000,2.518309029>,<13.919730218,1.988532888,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,0.000000000,2.518309029>,<11.931197329,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,1.988532888,0.000000000>,<11.931197329,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,1.988532888,0.000000000>,<13.919730218,0.000000000,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,1.988532888,0.000000000>,<15.908263106,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<13.919730218,0.000000000,2.518309029>,<15.908263106,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,15.908263106,2.518309029>,<9.942664441,13.919730218,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,15.908263106,2.518309029>,<7.954131553,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,13.919730218,5.036618058>,<7.954131553,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,13.919730218,5.036618058>,<9.942664441,15.908263106,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,13.919730218,5.036618058>,<11.931197329,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,15.908263106,2.518309029>,<11.931197329,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,13.919730218,0.000000000>,<9.942664441,15.908263106,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,13.919730218,0.000000000>,<7.954131553,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,15.908263106,2.518309029>,<7.954131553,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,15.908263106,2.518309029>,<9.942664441,13.919730218,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,15.908263106,2.518309029>,<11.931197329,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,13.919730218,0.000000000>,<11.931197329,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,11.931197329,2.518309029>,<9.942664441,13.919730218,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,11.931197329,2.518309029>,<11.931197329,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,13.919730218,5.036618058>,<11.931197329,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,13.919730218,5.036618058>,<9.942664441,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,13.919730218,5.036618058>,<7.954131553,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,11.931197329,2.518309029>,<7.954131553,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,11.931197329,2.518309029>,<9.942664441,13.919730218,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,11.931197329,2.518309029>,<7.954131553,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,13.919730218,0.000000000>,<7.954131553,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,13.919730218,0.000000000>,<9.942664441,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,13.919730218,0.000000000>,<11.931197329,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<9.942664441,11.931197329,2.518309029>,<11.931197329,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,15.908263106,2.518309029>,<5.965598665,13.919730218,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,15.908263106,2.518309029>,<3.977065776,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,13.919730218,5.036618058>,<3.977065776,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,13.919730218,5.036618058>,<5.965598665,15.908263106,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,13.919730218,5.036618058>,<7.954131553,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,15.908263106,2.518309029>,<7.954131553,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,13.919730218,0.000000000>,<5.965598665,15.908263106,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,13.919730218,0.000000000>,<3.977065776,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,15.908263106,2.518309029>,<3.977065776,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,15.908263106,2.518309029>,<5.965598665,13.919730218,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,15.908263106,2.518309029>,<7.954131553,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,13.919730218,0.000000000>,<7.954131553,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,11.931197329,2.518309029>,<5.965598665,13.919730218,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,11.931197329,2.518309029>,<7.954131553,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,13.919730218,5.036618058>,<7.954131553,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,13.919730218,5.036618058>,<5.965598665,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,13.919730218,5.036618058>,<3.977065776,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,11.931197329,2.518309029>,<3.977065776,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,11.931197329,2.518309029>,<5.965598665,13.919730218,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,11.931197329,2.518309029>,<3.977065776,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,13.919730218,0.000000000>,<3.977065776,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,13.919730218,0.000000000>,<5.965598665,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,13.919730218,0.000000000>,<7.954131553,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<5.965598665,11.931197329,2.518309029>,<7.954131553,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,15.908263106,2.518309029>,<1.988532888,13.919730218,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,15.908263106,2.518309029>,<0.000000000,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,13.919730218,5.036618058>,<0.000000000,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,13.919730218,5.036618058>,<1.988532888,15.908263106,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,13.919730218,5.036618058>,<3.977065776,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,15.908263106,2.518309029>,<3.977065776,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,13.919730218,0.000000000>,<1.988532888,15.908263106,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,13.919730218,0.000000000>,<0.000000000,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,15.908263106,2.518309029>,<0.000000000,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,15.908263106,2.518309029>,<1.988532888,13.919730218,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,15.908263106,2.518309029>,<3.977065776,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,13.919730218,0.000000000>,<3.977065776,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,11.931197329,2.518309029>,<1.988532888,13.919730218,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,11.931197329,2.518309029>,<3.977065776,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,13.919730218,5.036618058>,<3.977065776,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,13.919730218,5.036618058>,<1.988532888,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,13.919730218,5.036618058>,<0.000000000,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,11.931197329,2.518309029>,<0.000000000,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,11.931197329,2.518309029>,<1.988532888,13.919730218,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,11.931197329,2.518309029>,<0.000000000,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,13.919730218,0.000000000>,<0.000000000,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,13.919730218,0.000000000>,<1.988532888,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,13.919730218,0.000000000>,<3.977065776,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<1.988532888,11.931197329,2.518309029>,<3.977065776,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,15.908263106,2.518309029>,<21.873861771,13.919730218,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,15.908263106,2.518309029>,<19.885328882,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,13.919730218,5.036618058>,<19.885328882,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,13.919730218,5.036618058>,<21.873861771,15.908263106,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,13.919730218,5.036618058>,<23.862394659,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,15.908263106,2.518309029>,<23.862394659,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,13.919730218,0.000000000>,<21.873861771,15.908263106,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,13.919730218,0.000000000>,<19.885328882,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,15.908263106,2.518309029>,<19.885328882,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,15.908263106,2.518309029>,<21.873861771,13.919730218,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,15.908263106,2.518309029>,<23.862394659,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,13.919730218,0.000000000>,<23.862394659,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,11.931197329,2.518309029>,<21.873861771,13.919730218,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,11.931197329,2.518309029>,<23.862394659,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,13.919730218,5.036618058>,<23.862394659,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,13.919730218,5.036618058>,<21.873861771,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,13.919730218,5.036618058>,<19.885328882,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,11.931197329,2.518309029>,<19.885328882,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,11.931197329,2.518309029>,<21.873861771,13.919730218,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,11.931197329,2.518309029>,<19.885328882,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,13.919730218,0.000000000>,<19.885328882,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,13.919730218,0.000000000>,<21.873861771,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,13.919730218,0.000000000>,<23.862394659,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<21.873861771,11.931197329,2.518309029>,<23.862394659,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,15.908263106,2.518309029>,<17.896795994,13.919730218,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,15.908263106,2.518309029>,<15.908263106,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,13.919730218,5.036618058>,<15.908263106,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,13.919730218,5.036618058>,<17.896795994,15.908263106,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,13.919730218,5.036618058>,<19.885328882,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,15.908263106,2.518309029>,<19.885328882,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,13.919730218,0.000000000>,<17.896795994,15.908263106,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,13.919730218,0.000000000>,<15.908263106,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,15.908263106,2.518309029>,<15.908263106,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,15.908263106,2.518309029>,<17.896795994,13.919730218,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,15.908263106,2.518309029>,<19.885328882,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,13.919730218,0.000000000>,<19.885328882,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,11.931197329,2.518309029>,<17.896795994,13.919730218,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,11.931197329,2.518309029>,<19.885328882,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,13.919730218,5.036618058>,<19.885328882,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,13.919730218,5.036618058>,<17.896795994,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,13.919730218,5.036618058>,<15.908263106,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,11.931197329,2.518309029>,<15.908263106,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,11.931197329,2.518309029>,<17.896795994,13.919730218,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,11.931197329,2.518309029>,<15.908263106,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,13.919730218,0.000000000>,<15.908263106,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,13.919730218,0.000000000>,<17.896795994,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,13.919730218,0.000000000>,<19.885328882,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,11.931197329,2.518309029>,<19.885328882,13.919730218,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,9.942664441,5.036618058>,<17.896795994,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,9.942664441,5.036618058>,<15.908263106,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,7.954131553,2.518309029>,<15.908263106,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,7.954131553,2.518309029>,<17.896795994,9.942664441,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,7.954131553,2.518309029>,<19.885328882,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,9.942664441,5.036618058>,<19.885328882,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,7.954131553,2.518309029>,<17.896795994,9.942664441,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,7.954131553,2.518309029>,<15.908263106,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,9.942664441,0.000000000>,<15.908263106,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,9.942664441,0.000000000>,<17.896795994,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,9.942664441,0.000000000>,<19.885328882,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,7.954131553,2.518309029>,<19.885328882,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,9.942664441,5.036618058>,<17.896795994,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,9.942664441,5.036618058>,<19.885328882,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,11.931197329,2.518309029>,<19.885328882,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,11.931197329,2.518309029>,<17.896795994,9.942664441,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,11.931197329,2.518309029>,<15.908263106,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,9.942664441,5.036618058>,<15.908263106,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,9.942664441,0.000000000>,<17.896795994,11.931197329,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,9.942664441,0.000000000>,<15.908263106,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,11.931197329,2.518309029>,<15.908263106,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,11.931197329,2.518309029>,<17.896795994,9.942664441,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,11.931197329,2.518309029>,<19.885328882,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,9.942664441,0.000000000>,<19.885328882,9.942664441,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,7.954131553,2.518309029>,<17.896795994,5.965598665,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,7.954131553,2.518309029>,<15.908263106,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,5.965598665,5.036618058>,<15.908263106,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,5.965598665,5.036618058>,<17.896795994,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,5.965598665,5.036618058>,<19.885328882,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,7.954131553,2.518309029>,<19.885328882,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,5.965598665,0.000000000>,<17.896795994,7.954131553,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,5.965598665,0.000000000>,<15.908263106,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,7.954131553,2.518309029>,<15.908263106,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,7.954131553,2.518309029>,<17.896795994,5.965598665,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,7.954131553,2.518309029>,<19.885328882,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,5.965598665,0.000000000>,<19.885328882,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,3.977065776,2.518309029>,<17.896795994,5.965598665,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,3.977065776,2.518309029>,<19.885328882,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,5.965598665,5.036618058>,<19.885328882,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,5.965598665,5.036618058>,<17.896795994,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,5.965598665,5.036618058>,<15.908263106,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,3.977065776,2.518309029>,<15.908263106,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,3.977065776,2.518309029>,<17.896795994,5.965598665,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,3.977065776,2.518309029>,<15.908263106,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,5.965598665,0.000000000>,<15.908263106,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,5.965598665,0.000000000>,<17.896795994,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,5.965598665,0.000000000>,<19.885328882,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,3.977065776,2.518309029>,<19.885328882,5.965598665,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,3.977065776,2.518309029>,<17.896795994,1.988532888,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,3.977065776,2.518309029>,<15.908263106,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,1.988532888,5.036618058>,<15.908263106,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,1.988532888,5.036618058>,<17.896795994,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,1.988532888,5.036618058>,<19.885328882,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,3.977065776,2.518309029>,<19.885328882,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,1.988532888,0.000000000>,<17.896795994,3.977065776,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,1.988532888,0.000000000>,<15.908263106,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,3.977065776,2.518309029>,<15.908263106,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,3.977065776,2.518309029>,<17.896795994,1.988532888,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,3.977065776,2.518309029>,<19.885328882,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,1.988532888,0.000000000>,<19.885328882,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,0.000000000,2.518309029>,<17.896795994,1.988532888,5.036618058>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,0.000000000,2.518309029>,<19.885328882,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,1.988532888,5.036618058>,<19.885328882,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,1.988532888,5.036618058>,<17.896795994,0.000000000,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,1.988532888,5.036618058>,<15.908263106,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,0.000000000,2.518309029>,<15.908263106,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,0.000000000,2.518309029>,<17.896795994,1.988532888,0.000000000>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,0.000000000,2.518309029>,<15.908263106,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,1.988532888,0.000000000>,<15.908263106,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,1.988532888,0.000000000>,<17.896795994,0.000000000,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,1.988532888,0.000000000>,<19.885328882,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   cylinder{<17.896795994,0.000000000,2.518309029>,<19.885328882,1.988532888,2.518309029>, 0.070000000 texture {stick_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.0000>} }}
   triangle{<1.988532888,3.977065776,2.518309029> <1.988532888,1.988532888,5.036618058> <0.000000000,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,1.988532888,5.036618058> <1.988532888,3.977065776,2.518309029> <3.977065776,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,1.988532888,0.000000000> <1.988532888,3.977065776,2.518309029> <0.000000000,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,3.977065776,2.518309029> <1.988532888,1.988532888,0.000000000> <3.977065776,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,0.000000000,2.518309029> <1.988532888,1.988532888,5.036618058> <3.977065776,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,1.988532888,5.036618058> <1.988532888,0.000000000,2.518309029> <0.000000000,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,0.000000000,2.518309029> <1.988532888,1.988532888,0.000000000> <0.000000000,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,1.988532888,0.000000000> <1.988532888,0.000000000,2.518309029> <3.977065776,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,7.954131553,2.518309029> <5.965598665,5.965598665,5.036618058> <3.977065776,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,5.965598665,5.036618058> <5.965598665,7.954131553,2.518309029> <7.954131553,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,5.965598665,0.000000000> <5.965598665,7.954131553,2.518309029> <3.977065776,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,7.954131553,2.518309029> <5.965598665,5.965598665,0.000000000> <7.954131553,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,3.977065776,2.518309029> <5.965598665,5.965598665,5.036618058> <7.954131553,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,5.965598665,5.036618058> <5.965598665,3.977065776,2.518309029> <3.977065776,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,3.977065776,2.518309029> <5.965598665,5.965598665,0.000000000> <3.977065776,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,5.965598665,0.000000000> <5.965598665,3.977065776,2.518309029> <7.954131553,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,3.977065776,2.518309029> <5.965598665,1.988532888,5.036618058> <3.977065776,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,1.988532888,5.036618058> <5.965598665,3.977065776,2.518309029> <7.954131553,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,1.988532888,0.000000000> <5.965598665,3.977065776,2.518309029> <3.977065776,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,3.977065776,2.518309029> <5.965598665,1.988532888,0.000000000> <7.954131553,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,0.000000000,2.518309029> <5.965598665,1.988532888,5.036618058> <7.954131553,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,1.988532888,5.036618058> <5.965598665,0.000000000,2.518309029> <3.977065776,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,0.000000000,2.518309029> <5.965598665,1.988532888,0.000000000> <3.977065776,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,1.988532888,0.000000000> <5.965598665,0.000000000,2.518309029> <7.954131553,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,7.954131553,2.518309029> <1.988532888,5.965598665,5.036618058> <0.000000000,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,5.965598665,5.036618058> <1.988532888,7.954131553,2.518309029> <3.977065776,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,5.965598665,0.000000000> <1.988532888,7.954131553,2.518309029> <0.000000000,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,7.954131553,2.518309029> <1.988532888,5.965598665,0.000000000> <3.977065776,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,3.977065776,2.518309029> <1.988532888,5.965598665,5.036618058> <3.977065776,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,5.965598665,5.036618058> <1.988532888,3.977065776,2.518309029> <0.000000000,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,3.977065776,2.518309029> <1.988532888,5.965598665,0.000000000> <0.000000000,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,5.965598665,0.000000000> <1.988532888,3.977065776,2.518309029> <3.977065776,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,7.954131553,2.518309029> <21.873861771,5.965598665,5.036618058> <19.885328882,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,5.965598665,5.036618058> <21.873861771,7.954131553,2.518309029> <23.862394659,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,5.965598665,0.000000000> <21.873861771,7.954131553,2.518309029> <19.885328882,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,7.954131553,2.518309029> <21.873861771,5.965598665,0.000000000> <23.862394659,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,3.977065776,2.518309029> <21.873861771,5.965598665,5.036618058> <23.862394659,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,5.965598665,5.036618058> <21.873861771,3.977065776,2.518309029> <19.885328882,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,3.977065776,2.518309029> <21.873861771,5.965598665,0.000000000> <19.885328882,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,5.965598665,0.000000000> <21.873861771,3.977065776,2.518309029> <23.862394659,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,3.977065776,2.518309029> <21.873861771,1.988532888,5.036618058> <19.885328882,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,1.988532888,5.036618058> <21.873861771,3.977065776,2.518309029> <23.862394659,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,1.988532888,0.000000000> <21.873861771,3.977065776,2.518309029> <19.885328882,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,3.977065776,2.518309029> <21.873861771,1.988532888,0.000000000> <23.862394659,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,0.000000000,2.518309029> <21.873861771,1.988532888,5.036618058> <23.862394659,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,1.988532888,5.036618058> <21.873861771,0.000000000,2.518309029> <19.885328882,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,0.000000000,2.518309029> <21.873861771,1.988532888,0.000000000> <19.885328882,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,1.988532888,0.000000000> <21.873861771,0.000000000,2.518309029> <23.862394659,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,9.942664441,5.036618058> <9.942664441,7.954131553,2.518309029> <7.954131553,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,7.954131553,2.518309029> <9.942664441,9.942664441,5.036618058> <11.931197329,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,7.954131553,2.518309029> <9.942664441,9.942664441,0.000000000> <7.954131553,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,9.942664441,0.000000000> <9.942664441,7.954131553,2.518309029> <11.931197329,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,9.942664441,5.036618058> <9.942664441,11.931197329,2.518309029> <11.931197329,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,11.931197329,2.518309029> <9.942664441,9.942664441,5.036618058> <7.954131553,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,9.942664441,0.000000000> <9.942664441,11.931197329,2.518309029> <7.954131553,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,11.931197329,2.518309029> <9.942664441,9.942664441,0.000000000> <11.931197329,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,7.954131553,2.518309029> <9.942664441,5.965598665,5.036618058> <7.954131553,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,5.965598665,5.036618058> <9.942664441,7.954131553,2.518309029> <11.931197329,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,5.965598665,0.000000000> <9.942664441,7.954131553,2.518309029> <7.954131553,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,7.954131553,2.518309029> <9.942664441,5.965598665,0.000000000> <11.931197329,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,3.977065776,2.518309029> <9.942664441,5.965598665,5.036618058> <11.931197329,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,5.965598665,5.036618058> <9.942664441,3.977065776,2.518309029> <7.954131553,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,3.977065776,2.518309029> <9.942664441,5.965598665,0.000000000> <7.954131553,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,5.965598665,0.000000000> <9.942664441,3.977065776,2.518309029> <11.931197329,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,3.977065776,2.518309029> <9.942664441,1.988532888,5.036618058> <7.954131553,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,1.988532888,5.036618058> <9.942664441,3.977065776,2.518309029> <11.931197329,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,1.988532888,0.000000000> <9.942664441,3.977065776,2.518309029> <7.954131553,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,3.977065776,2.518309029> <9.942664441,1.988532888,0.000000000> <11.931197329,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,0.000000000,2.518309029> <9.942664441,1.988532888,5.036618058> <11.931197329,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,1.988532888,5.036618058> <9.942664441,0.000000000,2.518309029> <7.954131553,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,0.000000000,2.518309029> <9.942664441,1.988532888,0.000000000> <7.954131553,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,1.988532888,0.000000000> <9.942664441,0.000000000,2.518309029> <11.931197329,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,9.942664441,5.036618058> <5.965598665,7.954131553,2.518309029> <3.977065776,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,7.954131553,2.518309029> <5.965598665,9.942664441,5.036618058> <7.954131553,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,7.954131553,2.518309029> <5.965598665,9.942664441,0.000000000> <3.977065776,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,9.942664441,0.000000000> <5.965598665,7.954131553,2.518309029> <7.954131553,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,9.942664441,5.036618058> <5.965598665,11.931197329,2.518309029> <7.954131553,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,11.931197329,2.518309029> <5.965598665,9.942664441,5.036618058> <3.977065776,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,9.942664441,0.000000000> <5.965598665,11.931197329,2.518309029> <3.977065776,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,11.931197329,2.518309029> <5.965598665,9.942664441,0.000000000> <7.954131553,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,9.942664441,5.036618058> <1.988532888,7.954131553,2.518309029> <0.000000000,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,7.954131553,2.518309029> <1.988532888,9.942664441,5.036618058> <3.977065776,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,7.954131553,2.518309029> <1.988532888,9.942664441,0.000000000> <0.000000000,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,9.942664441,0.000000000> <1.988532888,7.954131553,2.518309029> <3.977065776,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,9.942664441,5.036618058> <1.988532888,11.931197329,2.518309029> <3.977065776,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,11.931197329,2.518309029> <1.988532888,9.942664441,5.036618058> <0.000000000,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,9.942664441,0.000000000> <1.988532888,11.931197329,2.518309029> <0.000000000,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,11.931197329,2.518309029> <1.988532888,9.942664441,0.000000000> <3.977065776,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,9.942664441,5.036618058> <21.873861771,7.954131553,2.518309029> <19.885328882,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,7.954131553,2.518309029> <21.873861771,9.942664441,5.036618058> <23.862394659,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,7.954131553,2.518309029> <21.873861771,9.942664441,0.000000000> <19.885328882,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,9.942664441,0.000000000> <21.873861771,7.954131553,2.518309029> <23.862394659,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,9.942664441,5.036618058> <21.873861771,11.931197329,2.518309029> <23.862394659,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,11.931197329,2.518309029> <21.873861771,9.942664441,5.036618058> <19.885328882,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,9.942664441,0.000000000> <21.873861771,11.931197329,2.518309029> <19.885328882,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,11.931197329,2.518309029> <21.873861771,9.942664441,0.000000000> <23.862394659,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,15.908263106,2.518309029> <13.919730218,13.919730218,5.036618058> <11.931197329,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,13.919730218,5.036618058> <13.919730218,15.908263106,2.518309029> <15.908263106,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,13.919730218,0.000000000> <13.919730218,15.908263106,2.518309029> <11.931197329,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,15.908263106,2.518309029> <13.919730218,13.919730218,0.000000000> <15.908263106,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,11.931197329,2.518309029> <13.919730218,13.919730218,5.036618058> <15.908263106,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,13.919730218,5.036618058> <13.919730218,11.931197329,2.518309029> <11.931197329,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,11.931197329,2.518309029> <13.919730218,13.919730218,0.000000000> <11.931197329,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,13.919730218,0.000000000> <13.919730218,11.931197329,2.518309029> <15.908263106,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,9.942664441,5.036618058> <13.919730218,7.954131553,2.518309029> <11.931197329,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,7.954131553,2.518309029> <13.919730218,9.942664441,5.036618058> <15.908263106,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,7.954131553,2.518309029> <13.919730218,9.942664441,0.000000000> <11.931197329,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,9.942664441,0.000000000> <13.919730218,7.954131553,2.518309029> <15.908263106,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,9.942664441,5.036618058> <13.919730218,11.931197329,2.518309029> <15.908263106,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,11.931197329,2.518309029> <13.919730218,9.942664441,5.036618058> <11.931197329,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,9.942664441,0.000000000> <13.919730218,11.931197329,2.518309029> <11.931197329,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,11.931197329,2.518309029> <13.919730218,9.942664441,0.000000000> <15.908263106,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,7.954131553,2.518309029> <13.919730218,5.965598665,5.036618058> <11.931197329,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,5.965598665,5.036618058> <13.919730218,7.954131553,2.518309029> <15.908263106,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,5.965598665,0.000000000> <13.919730218,7.954131553,2.518309029> <11.931197329,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,7.954131553,2.518309029> <13.919730218,5.965598665,0.000000000> <15.908263106,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,3.977065776,2.518309029> <13.919730218,5.965598665,5.036618058> <15.908263106,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,5.965598665,5.036618058> <13.919730218,3.977065776,2.518309029> <11.931197329,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,3.977065776,2.518309029> <13.919730218,5.965598665,0.000000000> <11.931197329,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,5.965598665,0.000000000> <13.919730218,3.977065776,2.518309029> <15.908263106,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,3.977065776,2.518309029> <13.919730218,1.988532888,5.036618058> <11.931197329,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,1.988532888,5.036618058> <13.919730218,3.977065776,2.518309029> <15.908263106,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,1.988532888,0.000000000> <13.919730218,3.977065776,2.518309029> <11.931197329,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,3.977065776,2.518309029> <13.919730218,1.988532888,0.000000000> <15.908263106,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,0.000000000,2.518309029> <13.919730218,1.988532888,5.036618058> <15.908263106,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,1.988532888,5.036618058> <13.919730218,0.000000000,2.518309029> <11.931197329,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,0.000000000,2.518309029> <13.919730218,1.988532888,0.000000000> <11.931197329,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<13.919730218,1.988532888,0.000000000> <13.919730218,0.000000000,2.518309029> <15.908263106,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,15.908263106,2.518309029> <9.942664441,13.919730218,5.036618058> <7.954131553,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,13.919730218,5.036618058> <9.942664441,15.908263106,2.518309029> <11.931197329,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,13.919730218,0.000000000> <9.942664441,15.908263106,2.518309029> <7.954131553,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,15.908263106,2.518309029> <9.942664441,13.919730218,0.000000000> <11.931197329,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,11.931197329,2.518309029> <9.942664441,13.919730218,5.036618058> <11.931197329,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,13.919730218,5.036618058> <9.942664441,11.931197329,2.518309029> <7.954131553,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,11.931197329,2.518309029> <9.942664441,13.919730218,0.000000000> <7.954131553,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<9.942664441,13.919730218,0.000000000> <9.942664441,11.931197329,2.518309029> <11.931197329,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,15.908263106,2.518309029> <5.965598665,13.919730218,5.036618058> <3.977065776,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,13.919730218,5.036618058> <5.965598665,15.908263106,2.518309029> <7.954131553,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,13.919730218,0.000000000> <5.965598665,15.908263106,2.518309029> <3.977065776,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,15.908263106,2.518309029> <5.965598665,13.919730218,0.000000000> <7.954131553,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,11.931197329,2.518309029> <5.965598665,13.919730218,5.036618058> <7.954131553,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,13.919730218,5.036618058> <5.965598665,11.931197329,2.518309029> <3.977065776,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,11.931197329,2.518309029> <5.965598665,13.919730218,0.000000000> <3.977065776,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<5.965598665,13.919730218,0.000000000> <5.965598665,11.931197329,2.518309029> <7.954131553,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,15.908263106,2.518309029> <1.988532888,13.919730218,5.036618058> <0.000000000,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,13.919730218,5.036618058> <1.988532888,15.908263106,2.518309029> <3.977065776,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,13.919730218,0.000000000> <1.988532888,15.908263106,2.518309029> <0.000000000,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,15.908263106,2.518309029> <1.988532888,13.919730218,0.000000000> <3.977065776,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,11.931197329,2.518309029> <1.988532888,13.919730218,5.036618058> <3.977065776,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,13.919730218,5.036618058> <1.988532888,11.931197329,2.518309029> <0.000000000,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,11.931197329,2.518309029> <1.988532888,13.919730218,0.000000000> <0.000000000,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<1.988532888,13.919730218,0.000000000> <1.988532888,11.931197329,2.518309029> <3.977065776,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,15.908263106,2.518309029> <21.873861771,13.919730218,5.036618058> <19.885328882,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,13.919730218,5.036618058> <21.873861771,15.908263106,2.518309029> <23.862394659,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,13.919730218,0.000000000> <21.873861771,15.908263106,2.518309029> <19.885328882,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,15.908263106,2.518309029> <21.873861771,13.919730218,0.000000000> <23.862394659,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,11.931197329,2.518309029> <21.873861771,13.919730218,5.036618058> <23.862394659,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,13.919730218,5.036618058> <21.873861771,11.931197329,2.518309029> <19.885328882,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,11.931197329,2.518309029> <21.873861771,13.919730218,0.000000000> <19.885328882,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<21.873861771,13.919730218,0.000000000> <21.873861771,11.931197329,2.518309029> <23.862394659,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,15.908263106,2.518309029> <17.896795994,13.919730218,5.036618058> <15.908263106,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,13.919730218,5.036618058> <17.896795994,15.908263106,2.518309029> <19.885328882,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,13.919730218,0.000000000> <17.896795994,15.908263106,2.518309029> <15.908263106,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,15.908263106,2.518309029> <17.896795994,13.919730218,0.000000000> <19.885328882,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,11.931197329,2.518309029> <17.896795994,13.919730218,5.036618058> <19.885328882,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,13.919730218,5.036618058> <17.896795994,11.931197329,2.518309029> <15.908263106,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,11.931197329,2.518309029> <17.896795994,13.919730218,0.000000000> <15.908263106,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,13.919730218,0.000000000> <17.896795994,11.931197329,2.518309029> <19.885328882,13.919730218,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,9.942664441,5.036618058> <17.896795994,7.954131553,2.518309029> <15.908263106,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,7.954131553,2.518309029> <17.896795994,9.942664441,5.036618058> <19.885328882,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,7.954131553,2.518309029> <17.896795994,9.942664441,0.000000000> <15.908263106,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,9.942664441,0.000000000> <17.896795994,7.954131553,2.518309029> <19.885328882,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,9.942664441,5.036618058> <17.896795994,11.931197329,2.518309029> <19.885328882,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,11.931197329,2.518309029> <17.896795994,9.942664441,5.036618058> <15.908263106,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,9.942664441,0.000000000> <17.896795994,11.931197329,2.518309029> <15.908263106,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,11.931197329,2.518309029> <17.896795994,9.942664441,0.000000000> <19.885328882,9.942664441,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,7.954131553,2.518309029> <17.896795994,5.965598665,5.036618058> <15.908263106,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,5.965598665,5.036618058> <17.896795994,7.954131553,2.518309029> <19.885328882,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,5.965598665,0.000000000> <17.896795994,7.954131553,2.518309029> <15.908263106,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,7.954131553,2.518309029> <17.896795994,5.965598665,0.000000000> <19.885328882,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,3.977065776,2.518309029> <17.896795994,5.965598665,5.036618058> <19.885328882,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,5.965598665,5.036618058> <17.896795994,3.977065776,2.518309029> <15.908263106,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,3.977065776,2.518309029> <17.896795994,5.965598665,0.000000000> <15.908263106,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,5.965598665,0.000000000> <17.896795994,3.977065776,2.518309029> <19.885328882,5.965598665,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,3.977065776,2.518309029> <17.896795994,1.988532888,5.036618058> <15.908263106,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,1.988532888,5.036618058> <17.896795994,3.977065776,2.518309029> <19.885328882,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,1.988532888,0.000000000> <17.896795994,3.977065776,2.518309029> <15.908263106,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,3.977065776,2.518309029> <17.896795994,1.988532888,0.000000000> <19.885328882,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,0.000000000,2.518309029> <17.896795994,1.988532888,5.036618058> <19.885328882,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,1.988532888,5.036618058> <17.896795994,0.000000000,2.518309029> <15.908263106,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,0.000000000,2.518309029> <17.896795994,1.988532888,0.000000000> <15.908263106,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
   triangle{<17.896795994,1.988532888,0.000000000> <17.896795994,0.000000000,2.518309029> <19.885328882,1.988532888,2.518309029> texture {opaque_triangle_default pigment {color rgbft <0.0000,0.7255,0.8941,0.0000,0.2078>} }}
}
#declare Mol2 = union {
  sphere{<0.000000000,0.000000000,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<0.000000000,0.000000000,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<0.000000000,15.908263106,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<0.000000000,15.908263106,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,0.000000000,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,0.000000000,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,15.908263106,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,15.908263106,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,3.977065776,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,3.977065776,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,3.977065776,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,3.977065776,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,0.000000000,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,0.000000000,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,15.908263106,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,15.908263106,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,0.000000000,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,0.000000000,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,15.908263106,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,15.908263106,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<0.000000000,3.977065776,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<0.000000000,3.977065776,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,3.977065776,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,3.977065776,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<0.000000000,3.977065776,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<0.000000000,3.977065776,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,3.977065776,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,3.977065776,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<0.000000000,0.000000000,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<0.000000000,0.000000000,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<0.000000000,15.908263106,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<0.000000000,15.908263106,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,0.000000000,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,0.000000000,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,15.908263106,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,15.908263106,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,7.954131553,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,7.954131553,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,7.954131553,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,7.954131553,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,3.977065776,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,3.977065776,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,3.977065776,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,3.977065776,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,0.000000000,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,0.000000000,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,15.908263106,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,15.908263106,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,0.000000000,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,0.000000000,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,15.908263106,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,15.908263106,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,7.954131553,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,7.954131553,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,7.954131553,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,7.954131553,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<0.000000000,7.954131553,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<0.000000000,7.954131553,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,7.954131553,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,7.954131553,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<0.000000000,7.954131553,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<0.000000000,7.954131553,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,7.954131553,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,7.954131553,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,11.931197329,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,11.931197329,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,11.931197329,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,11.931197329,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,7.954131553,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,7.954131553,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,7.954131553,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,7.954131553,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,3.977065776,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,3.977065776,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,3.977065776,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,3.977065776,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,0.000000000,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,0.000000000,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,15.908263106,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,15.908263106,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,0.000000000,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,0.000000000,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,15.908263106,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,15.908263106,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,11.931197329,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,11.931197329,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,11.931197329,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,11.931197329,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,11.931197329,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,11.931197329,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,11.931197329,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,11.931197329,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<0.000000000,11.931197329,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<0.000000000,11.931197329,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,11.931197329,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,11.931197329,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<0.000000000,11.931197329,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<0.000000000,11.931197329,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,11.931197329,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,11.931197329,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,0.000000000,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,0.000000000,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,15.908263106,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,15.908263106,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,0.000000000,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,0.000000000,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,15.908263106,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,15.908263106,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,11.931197329,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,11.931197329,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,11.931197329,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,11.931197329,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,7.954131553,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,7.954131553,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,7.954131553,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,7.954131553,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,3.977065776,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,3.977065776,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,3.977065776,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,3.977065776,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,0.000000000,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,0.000000000,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,15.908263106,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,15.908263106,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,0.000000000,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,0.000000000,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,15.908263106,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,15.908263106,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,11.931197329,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,11.931197329,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,11.931197329,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,11.931197329,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,7.954131553,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,7.954131553,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,7.954131553,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,7.954131553,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,3.977065776,-0.005036618>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,3.977065776,5.036618058>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,3.977065776,0.000000000>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,3.977065776,5.041654676>, 0.700000000 texture {ball_default pigment {color rgbft <0.6706,0.3608,0.9490,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,1.988532888,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,5.965598665,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,1.988532888,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,5.965598665,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,5.965598665,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,1.988532888,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,9.942664441,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,5.965598665,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,1.988532888,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,9.942664441,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,9.942664441,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,9.942664441,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,13.919730218,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,9.942664441,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,5.965598665,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,1.988532888,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,13.919730218,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,13.919730218,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,13.919730218,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,13.919730218,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,13.919730218,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,9.942664441,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,5.965598665,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,1.988532888,2.518309029>, 0.400000000 texture {ball_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,0.000000000,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,15.908263106,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<0.000000000,1.988532888,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,1.988532888,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,3.977065776,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,5.965598665,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,0.000000000,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,15.908263106,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,1.988532888,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,3.977065776,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<0.000000000,5.965598665,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,5.965598665,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,3.977065776,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,0.000000000,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,15.908263106,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,7.954131553,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,9.942664441,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,3.977065776,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,5.965598665,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,0.000000000,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,15.908263106,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,1.988532888,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,7.954131553,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,9.942664441,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,7.954131553,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<0.000000000,9.942664441,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,9.942664441,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,7.954131553,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,11.931197329,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,13.919730218,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,7.954131553,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,9.942664441,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,3.977065776,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,5.965598665,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,0.000000000,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,15.908263106,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<11.931197329,1.988532888,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,11.931197329,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<7.954131553,13.919730218,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,11.931197329,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<3.977065776,13.919730218,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,11.931197329,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<0.000000000,13.919730218,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<23.862394659,13.919730218,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,11.931197329,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,0.000000000,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,15.908263106,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,11.931197329,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,13.919730218,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,7.954131553,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,9.942664441,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,3.977065776,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,5.965598665,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<15.908263106,1.988532888,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,13.919730218,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,9.942664441,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,5.965598665,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<19.885328882,1.988532888,2.518309029>, 0.700000000 texture {ball_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,1.988532888,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,1.988532888,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,5.965598665,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,5.965598665,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,5.965598665,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,5.965598665,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,1.988532888,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,1.988532888,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,1.988532888,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,1.988532888,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,5.965598665,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,5.965598665,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,5.965598665,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,5.965598665,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,1.988532888,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,1.988532888,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,5.965598665,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,5.965598665,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,5.965598665,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,5.965598665,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,1.988532888,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,1.988532888,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,1.988532888,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,1.988532888,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,9.942664441,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,9.942664441,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,9.942664441,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,9.942664441,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,5.965598665,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,5.965598665,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,5.965598665,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,5.965598665,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,1.988532888,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,1.988532888,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,1.988532888,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,1.988532888,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,9.942664441,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,9.942664441,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,9.942664441,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,9.942664441,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,9.942664441,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,9.942664441,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,9.942664441,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,9.942664441,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,9.942664441,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,9.942664441,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,9.942664441,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,9.942664441,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,13.919730218,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,13.919730218,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,13.919730218,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,13.919730218,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,9.942664441,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,9.942664441,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,9.942664441,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,9.942664441,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,5.965598665,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,5.965598665,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,5.965598665,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,5.965598665,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,1.988532888,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,1.988532888,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,1.988532888,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<13.919730218,1.988532888,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,13.919730218,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,13.919730218,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,13.919730218,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<9.942664441,13.919730218,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,13.919730218,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,13.919730218,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,13.919730218,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<5.965598665,13.919730218,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,13.919730218,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,13.919730218,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,13.919730218,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<1.988532888,13.919730218,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,13.919730218,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,13.919730218,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,13.919730218,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<21.873861771,13.919730218,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,13.919730218,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,13.919730218,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,13.919730218,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,13.919730218,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,9.942664441,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,9.942664441,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,9.942664441,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,9.942664441,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,5.965598665,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,5.965598665,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,5.965598665,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,5.965598665,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,1.988532888,-0.005036618>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,1.988532888,5.036618058>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,1.988532888,0.000000000>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
  sphere{<17.896795994,1.988532888,5.041654676>, 0.900000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,0.000000000,2.518309029>,<1.988532888,0.994266444,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,0.994266444,2.518309029>,<1.988532888,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<0.000000000,1.988532888,2.518309029>,<0.994266444,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<0.994266444,1.988532888,2.518309029>,<1.988532888,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<3.977065776,1.988532888,2.518309029>,<2.982799332,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<2.982799332,1.988532888,2.518309029>,<1.988532888,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,3.977065776,2.518309029>,<1.988532888,2.982799332,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,2.982799332,2.518309029>,<1.988532888,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,1.988532888,2.518309029>,<1.988532888,0.994266444,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,0.994266444,2.518309029>,<1.988532888,0.000000000,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,13.919730218,2.518309029>,<1.988532888,14.913996662,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,14.913996662,2.518309029>,<1.988532888,15.908263106,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,1.988532888,2.518309029>,<0.994266444,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<0.994266444,1.988532888,2.518309029>,<0.000000000,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,1.988532888,2.518309029>,<22.868128215,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<22.868128215,1.988532888,2.518309029>,<23.862394659,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,3.977065776,2.518309029>,<5.965598665,4.971332221,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,4.971332221,2.518309029>,<5.965598665,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<3.977065776,5.965598665,2.518309029>,<4.971332221,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<4.971332221,5.965598665,2.518309029>,<5.965598665,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<7.954131553,5.965598665,2.518309029>,<6.959865109,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<6.959865109,5.965598665,2.518309029>,<5.965598665,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,7.954131553,2.518309029>,<5.965598665,6.959865109,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,6.959865109,2.518309029>,<5.965598665,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,5.965598665,2.518309029>,<5.965598665,4.971332221,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,4.971332221,2.518309029>,<5.965598665,3.977065776,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,1.988532888,2.518309029>,<5.965598665,2.982799332,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,2.982799332,2.518309029>,<5.965598665,3.977065776,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,5.965598665,2.518309029>,<4.971332221,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<4.971332221,5.965598665,2.518309029>,<3.977065776,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,5.965598665,2.518309029>,<2.982799332,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<2.982799332,5.965598665,2.518309029>,<3.977065776,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,3.977065776,2.518309029>,<5.965598665,2.982799332,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,2.982799332,2.518309029>,<5.965598665,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,0.000000000,2.518309029>,<5.965598665,0.994266444,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,0.994266444,2.518309029>,<5.965598665,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<3.977065776,1.988532888,2.518309029>,<4.971332221,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<4.971332221,1.988532888,2.518309029>,<5.965598665,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<7.954131553,1.988532888,2.518309029>,<6.959865109,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<6.959865109,1.988532888,2.518309029>,<5.965598665,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,1.988532888,2.518309029>,<5.965598665,0.994266444,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,0.994266444,2.518309029>,<5.965598665,0.000000000,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,13.919730218,2.518309029>,<5.965598665,14.913996662,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,14.913996662,2.518309029>,<5.965598665,15.908263106,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,1.988532888,2.518309029>,<2.982799332,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<2.982799332,1.988532888,2.518309029>,<3.977065776,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,1.988532888,2.518309029>,<4.971332221,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<4.971332221,1.988532888,2.518309029>,<3.977065776,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<3.977065776,5.965598665,2.518309029>,<2.982799332,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<2.982799332,5.965598665,2.518309029>,<1.988532888,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,3.977065776,2.518309029>,<1.988532888,4.971332221,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,4.971332221,2.518309029>,<1.988532888,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<0.000000000,5.965598665,2.518309029>,<0.994266444,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<0.994266444,5.965598665,2.518309029>,<1.988532888,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,7.954131553,2.518309029>,<1.988532888,6.959865109,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,6.959865109,2.518309029>,<1.988532888,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,1.988532888,2.518309029>,<1.988532888,2.982799332,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,2.982799332,2.518309029>,<1.988532888,3.977065776,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,5.965598665,2.518309029>,<1.988532888,4.971332221,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,4.971332221,2.518309029>,<1.988532888,3.977065776,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,5.965598665,2.518309029>,<0.994266444,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<0.994266444,5.965598665,2.518309029>,<0.000000000,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,5.965598665,2.518309029>,<22.868128215,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<22.868128215,5.965598665,2.518309029>,<23.862394659,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<23.862394659,5.965598665,2.518309029>,<22.868128215,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<22.868128215,5.965598665,2.518309029>,<21.873861771,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,3.977065776,2.518309029>,<21.873861771,4.971332221,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,4.971332221,2.518309029>,<21.873861771,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,7.954131553,2.518309029>,<21.873861771,6.959865109,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,6.959865109,2.518309029>,<21.873861771,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<19.885328882,5.965598665,2.518309029>,<20.879595326,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<20.879595326,5.965598665,2.518309029>,<21.873861771,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,5.965598665,2.518309029>,<21.873861771,4.971332221,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,4.971332221,2.518309029>,<21.873861771,3.977065776,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,1.988532888,2.518309029>,<21.873861771,2.982799332,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,2.982799332,2.518309029>,<21.873861771,3.977065776,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<23.862394659,1.988532888,2.518309029>,<22.868128215,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<22.868128215,1.988532888,2.518309029>,<21.873861771,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,3.977065776,2.518309029>,<21.873861771,2.982799332,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,2.982799332,2.518309029>,<21.873861771,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,0.000000000,2.518309029>,<21.873861771,0.994266444,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,0.994266444,2.518309029>,<21.873861771,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<19.885328882,1.988532888,2.518309029>,<20.879595326,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<20.879595326,1.988532888,2.518309029>,<21.873861771,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,1.988532888,2.518309029>,<21.873861771,0.994266444,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,0.994266444,2.518309029>,<21.873861771,0.000000000,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,13.919730218,2.518309029>,<21.873861771,14.913996662,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,14.913996662,2.518309029>,<21.873861771,15.908263106,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,7.954131553,2.518309029>,<9.942664441,8.948397997,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,8.948397997,2.518309029>,<9.942664441,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<7.954131553,9.942664441,2.518309029>,<8.948397997,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<8.948397997,9.942664441,2.518309029>,<9.942664441,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<11.931197329,9.942664441,2.518309029>,<10.936930885,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<10.936930885,9.942664441,2.518309029>,<9.942664441,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,11.931197329,2.518309029>,<9.942664441,10.936930885,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,10.936930885,2.518309029>,<9.942664441,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,9.942664441,2.518309029>,<9.942664441,8.948397997,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,8.948397997,2.518309029>,<9.942664441,7.954131553,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,5.965598665,2.518309029>,<9.942664441,6.959865109,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,6.959865109,2.518309029>,<9.942664441,7.954131553,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,9.942664441,2.518309029>,<8.948397997,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<8.948397997,9.942664441,2.518309029>,<7.954131553,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,9.942664441,2.518309029>,<6.959865109,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<6.959865109,9.942664441,2.518309029>,<7.954131553,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,7.954131553,2.518309029>,<9.942664441,6.959865109,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,6.959865109,2.518309029>,<9.942664441,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,3.977065776,2.518309029>,<9.942664441,4.971332221,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,4.971332221,2.518309029>,<9.942664441,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<7.954131553,5.965598665,2.518309029>,<8.948397997,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<8.948397997,5.965598665,2.518309029>,<9.942664441,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<11.931197329,5.965598665,2.518309029>,<10.936930885,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<10.936930885,5.965598665,2.518309029>,<9.942664441,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,5.965598665,2.518309029>,<9.942664441,4.971332221,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,4.971332221,2.518309029>,<9.942664441,3.977065776,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,1.988532888,2.518309029>,<9.942664441,2.982799332,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,2.982799332,2.518309029>,<9.942664441,3.977065776,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,5.965598665,2.518309029>,<6.959865109,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<6.959865109,5.965598665,2.518309029>,<7.954131553,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,5.965598665,2.518309029>,<8.948397997,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<8.948397997,5.965598665,2.518309029>,<7.954131553,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,3.977065776,2.518309029>,<9.942664441,2.982799332,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,2.982799332,2.518309029>,<9.942664441,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,0.000000000,2.518309029>,<9.942664441,0.994266444,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,0.994266444,2.518309029>,<9.942664441,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<7.954131553,1.988532888,2.518309029>,<8.948397997,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<8.948397997,1.988532888,2.518309029>,<9.942664441,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<11.931197329,1.988532888,2.518309029>,<10.936930885,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<10.936930885,1.988532888,2.518309029>,<9.942664441,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,1.988532888,2.518309029>,<9.942664441,0.994266444,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,0.994266444,2.518309029>,<9.942664441,0.000000000,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,13.919730218,2.518309029>,<9.942664441,14.913996662,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,14.913996662,2.518309029>,<9.942664441,15.908263106,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,1.988532888,2.518309029>,<6.959865109,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<6.959865109,1.988532888,2.518309029>,<7.954131553,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,1.988532888,2.518309029>,<8.948397997,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<8.948397997,1.988532888,2.518309029>,<7.954131553,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<7.954131553,9.942664441,2.518309029>,<6.959865109,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<6.959865109,9.942664441,2.518309029>,<5.965598665,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,7.954131553,2.518309029>,<5.965598665,8.948397997,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,8.948397997,2.518309029>,<5.965598665,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<3.977065776,9.942664441,2.518309029>,<4.971332221,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<4.971332221,9.942664441,2.518309029>,<5.965598665,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,11.931197329,2.518309029>,<5.965598665,10.936930885,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,10.936930885,2.518309029>,<5.965598665,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,5.965598665,2.518309029>,<5.965598665,6.959865109,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,6.959865109,2.518309029>,<5.965598665,7.954131553,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,9.942664441,2.518309029>,<5.965598665,8.948397997,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,8.948397997,2.518309029>,<5.965598665,7.954131553,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,9.942664441,2.518309029>,<4.971332221,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<4.971332221,9.942664441,2.518309029>,<3.977065776,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,9.942664441,2.518309029>,<2.982799332,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<2.982799332,9.942664441,2.518309029>,<3.977065776,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<3.977065776,9.942664441,2.518309029>,<2.982799332,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<2.982799332,9.942664441,2.518309029>,<1.988532888,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,7.954131553,2.518309029>,<1.988532888,8.948397997,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,8.948397997,2.518309029>,<1.988532888,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<0.000000000,9.942664441,2.518309029>,<0.994266444,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<0.994266444,9.942664441,2.518309029>,<1.988532888,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,11.931197329,2.518309029>,<1.988532888,10.936930885,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,10.936930885,2.518309029>,<1.988532888,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,5.965598665,2.518309029>,<1.988532888,6.959865109,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,6.959865109,2.518309029>,<1.988532888,7.954131553,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,9.942664441,2.518309029>,<1.988532888,8.948397997,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,8.948397997,2.518309029>,<1.988532888,7.954131553,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,9.942664441,2.518309029>,<0.994266444,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<0.994266444,9.942664441,2.518309029>,<0.000000000,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,9.942664441,2.518309029>,<22.868128215,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<22.868128215,9.942664441,2.518309029>,<23.862394659,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<23.862394659,9.942664441,2.518309029>,<22.868128215,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<22.868128215,9.942664441,2.518309029>,<21.873861771,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,7.954131553,2.518309029>,<21.873861771,8.948397997,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,8.948397997,2.518309029>,<21.873861771,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,11.931197329,2.518309029>,<21.873861771,10.936930885,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,10.936930885,2.518309029>,<21.873861771,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<19.885328882,9.942664441,2.518309029>,<20.879595326,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<20.879595326,9.942664441,2.518309029>,<21.873861771,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,5.965598665,2.518309029>,<21.873861771,6.959865109,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,6.959865109,2.518309029>,<21.873861771,7.954131553,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,9.942664441,2.518309029>,<21.873861771,8.948397997,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,8.948397997,2.518309029>,<21.873861771,7.954131553,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,11.931197329,2.518309029>,<13.919730218,12.925463774,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,12.925463774,2.518309029>,<13.919730218,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<11.931197329,13.919730218,2.518309029>,<12.925463774,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<12.925463774,13.919730218,2.518309029>,<13.919730218,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,15.908263106,2.518309029>,<13.919730218,14.913996662,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,14.913996662,2.518309029>,<13.919730218,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<15.908263106,13.919730218,2.518309029>,<14.913996662,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<14.913996662,13.919730218,2.518309029>,<13.919730218,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,13.919730218,2.518309029>,<13.919730218,12.925463774,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,12.925463774,2.518309029>,<13.919730218,11.931197329,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,9.942664441,2.518309029>,<13.919730218,10.936930885,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,10.936930885,2.518309029>,<13.919730218,11.931197329,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,13.919730218,2.518309029>,<12.925463774,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<12.925463774,13.919730218,2.518309029>,<11.931197329,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,13.919730218,2.518309029>,<10.936930885,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<10.936930885,13.919730218,2.518309029>,<11.931197329,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,11.931197329,2.518309029>,<13.919730218,10.936930885,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,10.936930885,2.518309029>,<13.919730218,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,7.954131553,2.518309029>,<13.919730218,8.948397997,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,8.948397997,2.518309029>,<13.919730218,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<11.931197329,9.942664441,2.518309029>,<12.925463774,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<12.925463774,9.942664441,2.518309029>,<13.919730218,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<15.908263106,9.942664441,2.518309029>,<14.913996662,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<14.913996662,9.942664441,2.518309029>,<13.919730218,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,9.942664441,2.518309029>,<13.919730218,8.948397997,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,8.948397997,2.518309029>,<13.919730218,7.954131553,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,5.965598665,2.518309029>,<13.919730218,6.959865109,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,6.959865109,2.518309029>,<13.919730218,7.954131553,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,9.942664441,2.518309029>,<10.936930885,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<10.936930885,9.942664441,2.518309029>,<11.931197329,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,9.942664441,2.518309029>,<12.925463774,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<12.925463774,9.942664441,2.518309029>,<11.931197329,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,7.954131553,2.518309029>,<13.919730218,6.959865109,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,6.959865109,2.518309029>,<13.919730218,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,3.977065776,2.518309029>,<13.919730218,4.971332221,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,4.971332221,2.518309029>,<13.919730218,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<11.931197329,5.965598665,2.518309029>,<12.925463774,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<12.925463774,5.965598665,2.518309029>,<13.919730218,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<15.908263106,5.965598665,2.518309029>,<14.913996662,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<14.913996662,5.965598665,2.518309029>,<13.919730218,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,5.965598665,2.518309029>,<13.919730218,4.971332221,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,4.971332221,2.518309029>,<13.919730218,3.977065776,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,1.988532888,2.518309029>,<13.919730218,2.982799332,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,2.982799332,2.518309029>,<13.919730218,3.977065776,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,5.965598665,2.518309029>,<10.936930885,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<10.936930885,5.965598665,2.518309029>,<11.931197329,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,5.965598665,2.518309029>,<12.925463774,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<12.925463774,5.965598665,2.518309029>,<11.931197329,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,3.977065776,2.518309029>,<13.919730218,2.982799332,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,2.982799332,2.518309029>,<13.919730218,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,0.000000000,2.518309029>,<13.919730218,0.994266444,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,0.994266444,2.518309029>,<13.919730218,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<11.931197329,1.988532888,2.518309029>,<12.925463774,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<12.925463774,1.988532888,2.518309029>,<13.919730218,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<15.908263106,1.988532888,2.518309029>,<14.913996662,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<14.913996662,1.988532888,2.518309029>,<13.919730218,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,1.988532888,2.518309029>,<13.919730218,0.994266444,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,0.994266444,2.518309029>,<13.919730218,0.000000000,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,13.919730218,2.518309029>,<13.919730218,14.913996662,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,14.913996662,2.518309029>,<13.919730218,15.908263106,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,1.988532888,2.518309029>,<10.936930885,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<10.936930885,1.988532888,2.518309029>,<11.931197329,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,1.988532888,2.518309029>,<12.925463774,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<12.925463774,1.988532888,2.518309029>,<11.931197329,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,15.908263106,2.518309029>,<9.942664441,14.913996662,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,14.913996662,2.518309029>,<9.942664441,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<11.931197329,13.919730218,2.518309029>,<10.936930885,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<10.936930885,13.919730218,2.518309029>,<9.942664441,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,11.931197329,2.518309029>,<9.942664441,12.925463774,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,12.925463774,2.518309029>,<9.942664441,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<7.954131553,13.919730218,2.518309029>,<8.948397997,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<8.948397997,13.919730218,2.518309029>,<9.942664441,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,9.942664441,2.518309029>,<9.942664441,10.936930885,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,10.936930885,2.518309029>,<9.942664441,11.931197329,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,13.919730218,2.518309029>,<9.942664441,12.925463774,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,12.925463774,2.518309029>,<9.942664441,11.931197329,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,13.919730218,2.518309029>,<8.948397997,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<8.948397997,13.919730218,2.518309029>,<7.954131553,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,13.919730218,2.518309029>,<6.959865109,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<6.959865109,13.919730218,2.518309029>,<7.954131553,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,15.908263106,2.518309029>,<5.965598665,14.913996662,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,14.913996662,2.518309029>,<5.965598665,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<7.954131553,13.919730218,2.518309029>,<6.959865109,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<6.959865109,13.919730218,2.518309029>,<5.965598665,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,11.931197329,2.518309029>,<5.965598665,12.925463774,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,12.925463774,2.518309029>,<5.965598665,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<3.977065776,13.919730218,2.518309029>,<4.971332221,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<4.971332221,13.919730218,2.518309029>,<5.965598665,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,9.942664441,2.518309029>,<5.965598665,10.936930885,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,10.936930885,2.518309029>,<5.965598665,11.931197329,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,13.919730218,2.518309029>,<5.965598665,12.925463774,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,12.925463774,2.518309029>,<5.965598665,11.931197329,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,13.919730218,2.518309029>,<4.971332221,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<4.971332221,13.919730218,2.518309029>,<3.977065776,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,13.919730218,2.518309029>,<2.982799332,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<2.982799332,13.919730218,2.518309029>,<3.977065776,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,15.908263106,2.518309029>,<1.988532888,14.913996662,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,14.913996662,2.518309029>,<1.988532888,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<3.977065776,13.919730218,2.518309029>,<2.982799332,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<2.982799332,13.919730218,2.518309029>,<1.988532888,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,11.931197329,2.518309029>,<1.988532888,12.925463774,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,12.925463774,2.518309029>,<1.988532888,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<0.000000000,13.919730218,2.518309029>,<0.994266444,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<0.994266444,13.919730218,2.518309029>,<1.988532888,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,9.942664441,2.518309029>,<1.988532888,10.936930885,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,10.936930885,2.518309029>,<1.988532888,11.931197329,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,13.919730218,2.518309029>,<1.988532888,12.925463774,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,12.925463774,2.518309029>,<1.988532888,11.931197329,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,13.919730218,2.518309029>,<0.994266444,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<0.994266444,13.919730218,2.518309029>,<0.000000000,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,13.919730218,2.518309029>,<22.868128215,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<22.868128215,13.919730218,2.518309029>,<23.862394659,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,15.908263106,2.518309029>,<21.873861771,14.913996662,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,14.913996662,2.518309029>,<21.873861771,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<23.862394659,13.919730218,2.518309029>,<22.868128215,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<22.868128215,13.919730218,2.518309029>,<21.873861771,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,11.931197329,2.518309029>,<21.873861771,12.925463774,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,12.925463774,2.518309029>,<21.873861771,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<19.885328882,13.919730218,2.518309029>,<20.879595326,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<20.879595326,13.919730218,2.518309029>,<21.873861771,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,9.942664441,2.518309029>,<21.873861771,10.936930885,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,10.936930885,2.518309029>,<21.873861771,11.931197329,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,13.919730218,2.518309029>,<21.873861771,12.925463774,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,12.925463774,2.518309029>,<21.873861771,11.931197329,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,1.988532888,2.518309029>,<17.896795994,0.994266444,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,0.994266444,2.518309029>,<17.896795994,0.000000000,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,13.919730218,2.518309029>,<17.896795994,14.913996662,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,14.913996662,2.518309029>,<17.896795994,15.908263106,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,15.908263106,2.518309029>,<17.896795994,14.913996662,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,14.913996662,2.518309029>,<17.896795994,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,11.931197329,2.518309029>,<17.896795994,12.925463774,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,12.925463774,2.518309029>,<17.896795994,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<15.908263106,13.919730218,2.518309029>,<16.902529550,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<16.902529550,13.919730218,2.518309029>,<17.896795994,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<19.885328882,13.919730218,2.518309029>,<18.891062438,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<18.891062438,13.919730218,2.518309029>,<17.896795994,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,13.919730218,2.518309029>,<17.896795994,12.925463774,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,12.925463774,2.518309029>,<17.896795994,11.931197329,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,9.942664441,2.518309029>,<17.896795994,10.936930885,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,10.936930885,2.518309029>,<17.896795994,11.931197329,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,13.919730218,2.518309029>,<14.913996662,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<14.913996662,13.919730218,2.518309029>,<15.908263106,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,13.919730218,2.518309029>,<16.902529550,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<16.902529550,13.919730218,2.518309029>,<15.908263106,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,11.931197329,2.518309029>,<17.896795994,10.936930885,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,10.936930885,2.518309029>,<17.896795994,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,7.954131553,2.518309029>,<17.896795994,8.948397997,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,8.948397997,2.518309029>,<17.896795994,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<15.908263106,9.942664441,2.518309029>,<16.902529550,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<16.902529550,9.942664441,2.518309029>,<17.896795994,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<19.885328882,9.942664441,2.518309029>,<18.891062438,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<18.891062438,9.942664441,2.518309029>,<17.896795994,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,9.942664441,2.518309029>,<17.896795994,8.948397997,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,8.948397997,2.518309029>,<17.896795994,7.954131553,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,5.965598665,2.518309029>,<17.896795994,6.959865109,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,6.959865109,2.518309029>,<17.896795994,7.954131553,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,9.942664441,2.518309029>,<14.913996662,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<14.913996662,9.942664441,2.518309029>,<15.908263106,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,9.942664441,2.518309029>,<16.902529550,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<16.902529550,9.942664441,2.518309029>,<15.908263106,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,7.954131553,2.518309029>,<17.896795994,6.959865109,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,6.959865109,2.518309029>,<17.896795994,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,3.977065776,2.518309029>,<17.896795994,4.971332221,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,4.971332221,2.518309029>,<17.896795994,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<15.908263106,5.965598665,2.518309029>,<16.902529550,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<16.902529550,5.965598665,2.518309029>,<17.896795994,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<19.885328882,5.965598665,2.518309029>,<18.891062438,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<18.891062438,5.965598665,2.518309029>,<17.896795994,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,5.965598665,2.518309029>,<17.896795994,4.971332221,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,4.971332221,2.518309029>,<17.896795994,3.977065776,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,1.988532888,2.518309029>,<17.896795994,2.982799332,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,2.982799332,2.518309029>,<17.896795994,3.977065776,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,5.965598665,2.518309029>,<14.913996662,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<14.913996662,5.965598665,2.518309029>,<15.908263106,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,5.965598665,2.518309029>,<16.902529550,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<16.902529550,5.965598665,2.518309029>,<15.908263106,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,0.000000000,2.518309029>,<17.896795994,0.994266444,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,0.994266444,2.518309029>,<17.896795994,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,3.977065776,2.518309029>,<17.896795994,2.982799332,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,2.982799332,2.518309029>,<17.896795994,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<15.908263106,1.988532888,2.518309029>,<16.902529550,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<16.902529550,1.988532888,2.518309029>,<17.896795994,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<19.885328882,1.988532888,2.518309029>,<18.891062438,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<18.891062438,1.988532888,2.518309029>,<17.896795994,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,1.988532888,2.518309029>,<14.913996662,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<14.913996662,1.988532888,2.518309029>,<15.908263106,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,1.988532888,2.518309029>,<16.902529550,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<16.902529550,1.988532888,2.518309029>,<15.908263106,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,13.919730218,2.518309029>,<20.879595326,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<20.879595326,13.919730218,2.518309029>,<19.885328882,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,13.919730218,2.518309029>,<18.891062438,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<18.891062438,13.919730218,2.518309029>,<19.885328882,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,9.942664441,2.518309029>,<20.879595326,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<20.879595326,9.942664441,2.518309029>,<19.885328882,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,9.942664441,2.518309029>,<18.891062438,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<18.891062438,9.942664441,2.518309029>,<19.885328882,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,5.965598665,2.518309029>,<20.879595326,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<20.879595326,5.965598665,2.518309029>,<19.885328882,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,5.965598665,2.518309029>,<18.891062438,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<18.891062438,5.965598665,2.518309029>,<19.885328882,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,1.988532888,2.518309029>,<20.879595326,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<20.879595326,1.988532888,2.518309029>,<19.885328882,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,1.988532888,2.518309029>,<18.891062438,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<18.891062438,1.988532888,2.518309029>,<19.885328882,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.9412,0.0000,0.0000,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,1.988532888,0.000000000>,<1.988532888,1.988532888,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,1.988532888,1.259154514>,<1.988532888,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,1.988532888,5.041654676>,<1.988532888,1.988532888,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,1.988532888,3.779981852>,<1.988532888,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,1.988532888,-0.005036618>,<1.988532888,1.988532888,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,1.988532888,1.256636205>,<1.988532888,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,1.988532888,5.036618058>,<1.988532888,1.988532888,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,1.988532888,3.777463543>,<1.988532888,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,1.988532888,2.518309029>,<1.988532888,1.988532888,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,1.988532888,1.259154514>,<1.988532888,1.988532888,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,1.988532888,2.518309029>,<1.988532888,1.988532888,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,1.988532888,3.779981852>,<1.988532888,1.988532888,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,5.965598665,2.518309029>,<5.965598665,5.965598665,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,5.965598665,1.256636205>,<5.965598665,5.965598665,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,5.965598665,2.518309029>,<5.965598665,5.965598665,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,5.965598665,3.777463543>,<5.965598665,5.965598665,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,5.965598665,-0.005036618>,<5.965598665,5.965598665,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,5.965598665,1.256636205>,<5.965598665,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,5.965598665,5.036618058>,<5.965598665,5.965598665,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,5.965598665,3.777463543>,<5.965598665,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,5.965598665,0.000000000>,<5.965598665,5.965598665,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,5.965598665,1.259154514>,<5.965598665,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,5.965598665,5.041654676>,<5.965598665,5.965598665,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,5.965598665,3.779981852>,<5.965598665,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,5.965598665,2.518309029>,<5.965598665,5.965598665,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,5.965598665,1.259154514>,<5.965598665,5.965598665,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,5.965598665,2.518309029>,<5.965598665,5.965598665,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,5.965598665,3.779981852>,<5.965598665,5.965598665,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,1.988532888,2.518309029>,<5.965598665,1.988532888,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,1.988532888,1.256636205>,<5.965598665,1.988532888,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,1.988532888,2.518309029>,<5.965598665,1.988532888,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,1.988532888,3.777463543>,<5.965598665,1.988532888,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,1.988532888,-0.005036618>,<5.965598665,1.988532888,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,1.988532888,1.256636205>,<5.965598665,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,1.988532888,5.036618058>,<5.965598665,1.988532888,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,1.988532888,3.777463543>,<5.965598665,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,1.988532888,0.000000000>,<5.965598665,1.988532888,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,1.988532888,1.259154514>,<5.965598665,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,1.988532888,5.041654676>,<5.965598665,1.988532888,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,1.988532888,3.779981852>,<5.965598665,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,1.988532888,2.518309029>,<5.965598665,1.988532888,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,1.988532888,1.259154514>,<5.965598665,1.988532888,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,1.988532888,2.518309029>,<5.965598665,1.988532888,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,1.988532888,3.779981852>,<5.965598665,1.988532888,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,5.965598665,2.518309029>,<1.988532888,5.965598665,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,5.965598665,1.256636205>,<1.988532888,5.965598665,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,5.965598665,2.518309029>,<1.988532888,5.965598665,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,5.965598665,3.777463543>,<1.988532888,5.965598665,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,5.965598665,-0.005036618>,<1.988532888,5.965598665,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,5.965598665,1.256636205>,<1.988532888,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,5.965598665,5.036618058>,<1.988532888,5.965598665,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,5.965598665,3.777463543>,<1.988532888,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,5.965598665,0.000000000>,<1.988532888,5.965598665,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,5.965598665,1.259154514>,<1.988532888,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,5.965598665,5.041654676>,<1.988532888,5.965598665,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,5.965598665,3.779981852>,<1.988532888,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,5.965598665,2.518309029>,<1.988532888,5.965598665,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,5.965598665,1.259154514>,<1.988532888,5.965598665,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,5.965598665,2.518309029>,<1.988532888,5.965598665,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,5.965598665,3.779981852>,<1.988532888,5.965598665,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,1.988532888,2.518309029>,<1.988532888,1.988532888,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,1.988532888,1.256636205>,<1.988532888,1.988532888,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,1.988532888,2.518309029>,<1.988532888,1.988532888,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,1.988532888,3.777463543>,<1.988532888,1.988532888,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,5.965598665,2.518309029>,<21.873861771,5.965598665,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,5.965598665,1.256636205>,<21.873861771,5.965598665,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,5.965598665,2.518309029>,<21.873861771,5.965598665,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,5.965598665,3.777463543>,<21.873861771,5.965598665,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,5.965598665,-0.005036618>,<21.873861771,5.965598665,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,5.965598665,1.256636205>,<21.873861771,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,5.965598665,5.036618058>,<21.873861771,5.965598665,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,5.965598665,3.777463543>,<21.873861771,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,5.965598665,0.000000000>,<21.873861771,5.965598665,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,5.965598665,1.259154514>,<21.873861771,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,5.965598665,5.041654676>,<21.873861771,5.965598665,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,5.965598665,3.779981852>,<21.873861771,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,5.965598665,2.518309029>,<21.873861771,5.965598665,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,5.965598665,1.259154514>,<21.873861771,5.965598665,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,5.965598665,2.518309029>,<21.873861771,5.965598665,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,5.965598665,3.779981852>,<21.873861771,5.965598665,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,1.988532888,2.518309029>,<21.873861771,1.988532888,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,1.988532888,1.256636205>,<21.873861771,1.988532888,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,1.988532888,2.518309029>,<21.873861771,1.988532888,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,1.988532888,3.777463543>,<21.873861771,1.988532888,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,1.988532888,-0.005036618>,<21.873861771,1.988532888,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,1.988532888,1.256636205>,<21.873861771,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,1.988532888,5.036618058>,<21.873861771,1.988532888,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,1.988532888,3.777463543>,<21.873861771,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,1.988532888,0.000000000>,<21.873861771,1.988532888,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,1.988532888,1.259154514>,<21.873861771,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,1.988532888,5.041654676>,<21.873861771,1.988532888,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,1.988532888,3.779981852>,<21.873861771,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,1.988532888,2.518309029>,<21.873861771,1.988532888,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,1.988532888,1.259154514>,<21.873861771,1.988532888,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,1.988532888,2.518309029>,<21.873861771,1.988532888,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,1.988532888,3.779981852>,<21.873861771,1.988532888,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,9.942664441,2.518309029>,<9.942664441,9.942664441,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,9.942664441,1.256636205>,<9.942664441,9.942664441,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,9.942664441,2.518309029>,<9.942664441,9.942664441,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,9.942664441,3.777463543>,<9.942664441,9.942664441,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,9.942664441,-0.005036618>,<9.942664441,9.942664441,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,9.942664441,1.256636205>,<9.942664441,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,9.942664441,5.036618058>,<9.942664441,9.942664441,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,9.942664441,3.777463543>,<9.942664441,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,9.942664441,0.000000000>,<9.942664441,9.942664441,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,9.942664441,1.259154514>,<9.942664441,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,9.942664441,5.041654676>,<9.942664441,9.942664441,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,9.942664441,3.779981852>,<9.942664441,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,9.942664441,2.518309029>,<9.942664441,9.942664441,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,9.942664441,1.259154514>,<9.942664441,9.942664441,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,9.942664441,2.518309029>,<9.942664441,9.942664441,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,9.942664441,3.779981852>,<9.942664441,9.942664441,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,5.965598665,2.518309029>,<9.942664441,5.965598665,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,5.965598665,1.256636205>,<9.942664441,5.965598665,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,5.965598665,2.518309029>,<9.942664441,5.965598665,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,5.965598665,3.777463543>,<9.942664441,5.965598665,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,5.965598665,-0.005036618>,<9.942664441,5.965598665,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,5.965598665,1.256636205>,<9.942664441,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,5.965598665,5.036618058>,<9.942664441,5.965598665,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,5.965598665,3.777463543>,<9.942664441,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,5.965598665,0.000000000>,<9.942664441,5.965598665,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,5.965598665,1.259154514>,<9.942664441,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,5.965598665,5.041654676>,<9.942664441,5.965598665,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,5.965598665,3.779981852>,<9.942664441,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,5.965598665,2.518309029>,<9.942664441,5.965598665,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,5.965598665,1.259154514>,<9.942664441,5.965598665,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,5.965598665,2.518309029>,<9.942664441,5.965598665,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,5.965598665,3.779981852>,<9.942664441,5.965598665,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,1.988532888,2.518309029>,<9.942664441,1.988532888,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,1.988532888,1.256636205>,<9.942664441,1.988532888,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,1.988532888,2.518309029>,<9.942664441,1.988532888,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,1.988532888,3.777463543>,<9.942664441,1.988532888,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,1.988532888,-0.005036618>,<9.942664441,1.988532888,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,1.988532888,1.256636205>,<9.942664441,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,1.988532888,5.036618058>,<9.942664441,1.988532888,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,1.988532888,3.777463543>,<9.942664441,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,1.988532888,0.000000000>,<9.942664441,1.988532888,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,1.988532888,1.259154514>,<9.942664441,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,1.988532888,5.041654676>,<9.942664441,1.988532888,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,1.988532888,3.779981852>,<9.942664441,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,1.988532888,2.518309029>,<9.942664441,1.988532888,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,1.988532888,1.259154514>,<9.942664441,1.988532888,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,1.988532888,2.518309029>,<9.942664441,1.988532888,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,1.988532888,3.779981852>,<9.942664441,1.988532888,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,9.942664441,2.518309029>,<5.965598665,9.942664441,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,9.942664441,1.256636205>,<5.965598665,9.942664441,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,9.942664441,2.518309029>,<5.965598665,9.942664441,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,9.942664441,3.777463543>,<5.965598665,9.942664441,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,9.942664441,-0.005036618>,<5.965598665,9.942664441,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,9.942664441,1.256636205>,<5.965598665,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,9.942664441,5.036618058>,<5.965598665,9.942664441,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,9.942664441,3.777463543>,<5.965598665,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,9.942664441,0.000000000>,<5.965598665,9.942664441,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,9.942664441,1.259154514>,<5.965598665,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,9.942664441,5.041654676>,<5.965598665,9.942664441,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,9.942664441,3.779981852>,<5.965598665,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,9.942664441,2.518309029>,<5.965598665,9.942664441,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,9.942664441,1.259154514>,<5.965598665,9.942664441,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,9.942664441,2.518309029>,<5.965598665,9.942664441,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,9.942664441,3.779981852>,<5.965598665,9.942664441,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,9.942664441,2.518309029>,<1.988532888,9.942664441,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,9.942664441,1.256636205>,<1.988532888,9.942664441,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,9.942664441,2.518309029>,<1.988532888,9.942664441,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,9.942664441,3.777463543>,<1.988532888,9.942664441,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,9.942664441,-0.005036618>,<1.988532888,9.942664441,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,9.942664441,1.256636205>,<1.988532888,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,9.942664441,5.036618058>,<1.988532888,9.942664441,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,9.942664441,3.777463543>,<1.988532888,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,9.942664441,0.000000000>,<1.988532888,9.942664441,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,9.942664441,1.259154514>,<1.988532888,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,9.942664441,5.041654676>,<1.988532888,9.942664441,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,9.942664441,3.779981852>,<1.988532888,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,9.942664441,2.518309029>,<1.988532888,9.942664441,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,9.942664441,1.259154514>,<1.988532888,9.942664441,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,9.942664441,2.518309029>,<1.988532888,9.942664441,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,9.942664441,3.779981852>,<1.988532888,9.942664441,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,9.942664441,2.518309029>,<21.873861771,9.942664441,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,9.942664441,1.256636205>,<21.873861771,9.942664441,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,9.942664441,2.518309029>,<21.873861771,9.942664441,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,9.942664441,3.777463543>,<21.873861771,9.942664441,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,9.942664441,-0.005036618>,<21.873861771,9.942664441,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,9.942664441,1.256636205>,<21.873861771,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,9.942664441,5.036618058>,<21.873861771,9.942664441,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,9.942664441,3.777463543>,<21.873861771,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,9.942664441,0.000000000>,<21.873861771,9.942664441,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,9.942664441,1.259154514>,<21.873861771,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,9.942664441,5.041654676>,<21.873861771,9.942664441,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,9.942664441,3.779981852>,<21.873861771,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,9.942664441,2.518309029>,<21.873861771,9.942664441,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,9.942664441,1.259154514>,<21.873861771,9.942664441,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,9.942664441,2.518309029>,<21.873861771,9.942664441,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,9.942664441,3.779981852>,<21.873861771,9.942664441,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,13.919730218,2.518309029>,<13.919730218,13.919730218,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,13.919730218,1.256636205>,<13.919730218,13.919730218,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,13.919730218,2.518309029>,<13.919730218,13.919730218,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,13.919730218,3.777463543>,<13.919730218,13.919730218,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,13.919730218,-0.005036618>,<13.919730218,13.919730218,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,13.919730218,1.256636205>,<13.919730218,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,13.919730218,5.036618058>,<13.919730218,13.919730218,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,13.919730218,3.777463543>,<13.919730218,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,13.919730218,0.000000000>,<13.919730218,13.919730218,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,13.919730218,1.259154514>,<13.919730218,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,13.919730218,5.041654676>,<13.919730218,13.919730218,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,13.919730218,3.779981852>,<13.919730218,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,13.919730218,2.518309029>,<13.919730218,13.919730218,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,13.919730218,1.259154514>,<13.919730218,13.919730218,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,13.919730218,2.518309029>,<13.919730218,13.919730218,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,13.919730218,3.779981852>,<13.919730218,13.919730218,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,9.942664441,2.518309029>,<13.919730218,9.942664441,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,9.942664441,1.256636205>,<13.919730218,9.942664441,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,9.942664441,2.518309029>,<13.919730218,9.942664441,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,9.942664441,3.777463543>,<13.919730218,9.942664441,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,9.942664441,-0.005036618>,<13.919730218,9.942664441,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,9.942664441,1.256636205>,<13.919730218,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,9.942664441,5.036618058>,<13.919730218,9.942664441,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,9.942664441,3.777463543>,<13.919730218,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,9.942664441,0.000000000>,<13.919730218,9.942664441,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,9.942664441,1.259154514>,<13.919730218,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,9.942664441,5.041654676>,<13.919730218,9.942664441,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,9.942664441,3.779981852>,<13.919730218,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,9.942664441,2.518309029>,<13.919730218,9.942664441,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,9.942664441,1.259154514>,<13.919730218,9.942664441,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,9.942664441,2.518309029>,<13.919730218,9.942664441,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,9.942664441,3.779981852>,<13.919730218,9.942664441,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,5.965598665,2.518309029>,<13.919730218,5.965598665,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,5.965598665,1.256636205>,<13.919730218,5.965598665,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,5.965598665,2.518309029>,<13.919730218,5.965598665,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,5.965598665,3.777463543>,<13.919730218,5.965598665,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,5.965598665,-0.005036618>,<13.919730218,5.965598665,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,5.965598665,1.256636205>,<13.919730218,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,5.965598665,5.036618058>,<13.919730218,5.965598665,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,5.965598665,3.777463543>,<13.919730218,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,5.965598665,0.000000000>,<13.919730218,5.965598665,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,5.965598665,1.259154514>,<13.919730218,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,5.965598665,5.041654676>,<13.919730218,5.965598665,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,5.965598665,3.779981852>,<13.919730218,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,5.965598665,2.518309029>,<13.919730218,5.965598665,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,5.965598665,1.259154514>,<13.919730218,5.965598665,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,5.965598665,2.518309029>,<13.919730218,5.965598665,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,5.965598665,3.779981852>,<13.919730218,5.965598665,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,1.988532888,2.518309029>,<13.919730218,1.988532888,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,1.988532888,1.256636205>,<13.919730218,1.988532888,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,1.988532888,2.518309029>,<13.919730218,1.988532888,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,1.988532888,3.777463543>,<13.919730218,1.988532888,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,1.988532888,-0.005036618>,<13.919730218,1.988532888,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,1.988532888,1.256636205>,<13.919730218,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,1.988532888,5.036618058>,<13.919730218,1.988532888,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,1.988532888,3.777463543>,<13.919730218,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,1.988532888,0.000000000>,<13.919730218,1.988532888,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,1.988532888,1.259154514>,<13.919730218,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,1.988532888,5.041654676>,<13.919730218,1.988532888,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,1.988532888,3.779981852>,<13.919730218,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,1.988532888,2.518309029>,<13.919730218,1.988532888,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,1.988532888,1.259154514>,<13.919730218,1.988532888,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,1.988532888,2.518309029>,<13.919730218,1.988532888,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<13.919730218,1.988532888,3.779981852>,<13.919730218,1.988532888,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,13.919730218,2.518309029>,<9.942664441,13.919730218,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,13.919730218,1.256636205>,<9.942664441,13.919730218,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,13.919730218,2.518309029>,<9.942664441,13.919730218,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,13.919730218,3.777463543>,<9.942664441,13.919730218,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,13.919730218,-0.005036618>,<9.942664441,13.919730218,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,13.919730218,1.256636205>,<9.942664441,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,13.919730218,5.036618058>,<9.942664441,13.919730218,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,13.919730218,3.777463543>,<9.942664441,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,13.919730218,0.000000000>,<9.942664441,13.919730218,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,13.919730218,1.259154514>,<9.942664441,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,13.919730218,5.041654676>,<9.942664441,13.919730218,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,13.919730218,3.779981852>,<9.942664441,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,13.919730218,2.518309029>,<9.942664441,13.919730218,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,13.919730218,1.259154514>,<9.942664441,13.919730218,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,13.919730218,2.518309029>,<9.942664441,13.919730218,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<9.942664441,13.919730218,3.779981852>,<9.942664441,13.919730218,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,13.919730218,2.518309029>,<5.965598665,13.919730218,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,13.919730218,1.256636205>,<5.965598665,13.919730218,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,13.919730218,2.518309029>,<5.965598665,13.919730218,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,13.919730218,3.777463543>,<5.965598665,13.919730218,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,13.919730218,-0.005036618>,<5.965598665,13.919730218,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,13.919730218,1.256636205>,<5.965598665,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,13.919730218,5.036618058>,<5.965598665,13.919730218,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,13.919730218,3.777463543>,<5.965598665,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,13.919730218,0.000000000>,<5.965598665,13.919730218,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,13.919730218,1.259154514>,<5.965598665,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,13.919730218,5.041654676>,<5.965598665,13.919730218,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,13.919730218,3.779981852>,<5.965598665,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,13.919730218,2.518309029>,<5.965598665,13.919730218,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,13.919730218,1.259154514>,<5.965598665,13.919730218,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,13.919730218,2.518309029>,<5.965598665,13.919730218,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<5.965598665,13.919730218,3.779981852>,<5.965598665,13.919730218,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,13.919730218,2.518309029>,<1.988532888,13.919730218,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,13.919730218,1.256636205>,<1.988532888,13.919730218,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,13.919730218,2.518309029>,<1.988532888,13.919730218,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,13.919730218,3.777463543>,<1.988532888,13.919730218,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,13.919730218,-0.005036618>,<1.988532888,13.919730218,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,13.919730218,1.256636205>,<1.988532888,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,13.919730218,5.036618058>,<1.988532888,13.919730218,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,13.919730218,3.777463543>,<1.988532888,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,13.919730218,0.000000000>,<1.988532888,13.919730218,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,13.919730218,1.259154514>,<1.988532888,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,13.919730218,5.041654676>,<1.988532888,13.919730218,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,13.919730218,3.779981852>,<1.988532888,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,13.919730218,2.518309029>,<1.988532888,13.919730218,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,13.919730218,1.259154514>,<1.988532888,13.919730218,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,13.919730218,2.518309029>,<1.988532888,13.919730218,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<1.988532888,13.919730218,3.779981852>,<1.988532888,13.919730218,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,13.919730218,2.518309029>,<21.873861771,13.919730218,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,13.919730218,1.256636205>,<21.873861771,13.919730218,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,13.919730218,2.518309029>,<21.873861771,13.919730218,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,13.919730218,3.777463543>,<21.873861771,13.919730218,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,13.919730218,-0.005036618>,<21.873861771,13.919730218,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,13.919730218,1.256636205>,<21.873861771,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,13.919730218,5.036618058>,<21.873861771,13.919730218,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,13.919730218,3.777463543>,<21.873861771,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,13.919730218,0.000000000>,<21.873861771,13.919730218,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,13.919730218,1.259154514>,<21.873861771,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,13.919730218,5.041654676>,<21.873861771,13.919730218,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,13.919730218,3.779981852>,<21.873861771,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,13.919730218,2.518309029>,<21.873861771,13.919730218,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,13.919730218,1.259154514>,<21.873861771,13.919730218,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,13.919730218,2.518309029>,<21.873861771,13.919730218,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<21.873861771,13.919730218,3.779981852>,<21.873861771,13.919730218,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,13.919730218,2.518309029>,<17.896795994,13.919730218,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,13.919730218,1.256636205>,<17.896795994,13.919730218,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,13.919730218,2.518309029>,<17.896795994,13.919730218,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,13.919730218,3.777463543>,<17.896795994,13.919730218,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,13.919730218,-0.005036618>,<17.896795994,13.919730218,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,13.919730218,1.256636205>,<17.896795994,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,13.919730218,5.036618058>,<17.896795994,13.919730218,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,13.919730218,3.777463543>,<17.896795994,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,13.919730218,0.000000000>,<17.896795994,13.919730218,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,13.919730218,1.259154514>,<17.896795994,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,13.919730218,5.041654676>,<17.896795994,13.919730218,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,13.919730218,3.779981852>,<17.896795994,13.919730218,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,13.919730218,2.518309029>,<17.896795994,13.919730218,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,13.919730218,1.259154514>,<17.896795994,13.919730218,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,13.919730218,2.518309029>,<17.896795994,13.919730218,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,13.919730218,3.779981852>,<17.896795994,13.919730218,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,9.942664441,2.518309029>,<17.896795994,9.942664441,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,9.942664441,1.256636205>,<17.896795994,9.942664441,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,9.942664441,2.518309029>,<17.896795994,9.942664441,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,9.942664441,3.777463543>,<17.896795994,9.942664441,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,9.942664441,-0.005036618>,<17.896795994,9.942664441,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,9.942664441,1.256636205>,<17.896795994,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,9.942664441,5.036618058>,<17.896795994,9.942664441,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,9.942664441,3.777463543>,<17.896795994,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,9.942664441,0.000000000>,<17.896795994,9.942664441,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,9.942664441,1.259154514>,<17.896795994,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,9.942664441,5.041654676>,<17.896795994,9.942664441,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,9.942664441,3.779981852>,<17.896795994,9.942664441,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,9.942664441,2.518309029>,<17.896795994,9.942664441,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,9.942664441,1.259154514>,<17.896795994,9.942664441,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,9.942664441,2.518309029>,<17.896795994,9.942664441,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,9.942664441,3.779981852>,<17.896795994,9.942664441,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,5.965598665,2.518309029>,<17.896795994,5.965598665,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,5.965598665,1.256636205>,<17.896795994,5.965598665,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,5.965598665,2.518309029>,<17.896795994,5.965598665,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,5.965598665,3.777463543>,<17.896795994,5.965598665,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,5.965598665,-0.005036618>,<17.896795994,5.965598665,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,5.965598665,1.256636205>,<17.896795994,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,5.965598665,5.036618058>,<17.896795994,5.965598665,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,5.965598665,3.777463543>,<17.896795994,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,5.965598665,0.000000000>,<17.896795994,5.965598665,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,5.965598665,1.259154514>,<17.896795994,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,5.965598665,5.041654676>,<17.896795994,5.965598665,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,5.965598665,3.779981852>,<17.896795994,5.965598665,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,5.965598665,2.518309029>,<17.896795994,5.965598665,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,5.965598665,1.259154514>,<17.896795994,5.965598665,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,5.965598665,2.518309029>,<17.896795994,5.965598665,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,5.965598665,3.779981852>,<17.896795994,5.965598665,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,1.988532888,2.518309029>,<17.896795994,1.988532888,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,1.988532888,1.256636205>,<17.896795994,1.988532888,-0.005036618>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,1.988532888,2.518309029>,<17.896795994,1.988532888,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,1.988532888,3.777463543>,<17.896795994,1.988532888,5.036618058>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,1.988532888,-0.005036618>,<17.896795994,1.988532888,1.256636205>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,1.988532888,1.256636205>,<17.896795994,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,1.988532888,5.036618058>,<17.896795994,1.988532888,3.777463543>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,1.988532888,3.777463543>,<17.896795994,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,1.988532888,0.000000000>,<17.896795994,1.988532888,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,1.988532888,1.259154514>,<17.896795994,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,1.988532888,5.041654676>,<17.896795994,1.988532888,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,1.988532888,3.779981852>,<17.896795994,1.988532888,2.518309029>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,1.988532888,2.518309029>,<17.896795994,1.988532888,1.259154514>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,1.988532888,1.259154514>,<17.896795994,1.988532888,0.000000000>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,1.988532888,2.518309029>,<17.896795994,1.988532888,3.779981852>, 0.251234567 texture {stick_default pigment {color rgbft <0.4510,0.7608,0.7882,0.0000,0.0000> transmit 0.00 } }}
   cylinder{<17.896795994,1.988532888,3.779981852>,<17.896795994,1.988532888,5.041654676>, 0.251234567 texture {stick_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00 } }}
translate z*5.0366180580
}

object {Mol1 rotate <0,0,0>}
object {Mol2 rotate <0,0,0>}

//  location  <11.93120,80.95413,8.03662>
//camera {
//  perspective
//  location  <12.93120,32.95413,2.03662>
//  look_at   <11.93120,7.95413,9.03662>
//  angle   45.00000
//  sky       <0.00000,0.00000,1.00000>
//  right     <1.00000,0.00000,0.00000>
//  up       <0.00000,0.00000,1.00000>
//}
//camera {
//   fisheye
//   location <12.93120,22.95413,2.03662>
//   look_at <11.93120,7.95413,9.03662>
//   right  x*image_width/image_height
//}
camera{ ultra_wide_angle angle 60
  location  <11.93120,26.95413,5.03662>
  look_at   <11.93120,7.95413,6.03662>
   right x*image_width/image_height
      } 
//camera{ cylinder 1 angle 180
//   location <12.93120,36.95413,2.03662>
//   look_at <11.93120,7.95413,9.03662>
//   right 1.33
//   up  1
//      } 

light_source {
  <20.20825,35.95413,36.17606>
  color rgb<2.00000,2.00000,2.00000>
}
light_source {
  <10.20825,27.95413,10.17606>
  color rgb<0.80000,0.80000,0.80000>
  shadowless
}
light_source {
  <4.07064,30.95413,5.76217>
  color rgb<0.50000,0.50000,0.50000>
  shadowless
}
light_source {
  <13.93120,17.04587,5.0662>
  color rgb<1.20000,1.20000,1.20000>
  shadowless
}

//light_source {
//  <11.93120,17.04587,7.0662>
//  color rgb<1.0,1.0,200.0>
//  spotlight    // specifies spotlight
//  radius 45    // cone opening from its axis in degrees. Light start to dim outside of this.
//  falloff 10   // outside of this, there is no light.
//  tightness 1  // over-all coherence of the light beam
//  point_at <8.93120,7.95413,5.0>
//}


#declare Emitting_sphere1 =
object{
  sphere{<23.862394659,50.000000000,30.146472232>, 1.840000000 texture {ball_default pigment {color rgbft <1.0000,0.7804,0.1882,0.0000,0.0000> transmit 0.00  } } interior { ior 1.3}}
  hollow
  interior{
      media{
             emission <1.0,1.0,0.5>*0.3
          } // end media
         } // end interior
  } // end object

union{
 light_source{<0, 0, 0>
               color rgb <0.5,0.0,0.3>*0.5
               area_light
               <0, 0.1, 0> <0, 0.9, 0> //
               1, 5                    //
             } //---------------------------
 object{ Emitting_sphere1 }
}
 background {color rgb <0.00000,0.00000,0.00000>}

//plane {z,20 //higher number moves away
//pigment {
//image_map {
//png "image.png" //or use any valid type like png
//}
//translate -0.0 //centers unit square
//scale <100,100,1>
////set this to resolution or same ratio as image file
//}
//finish {diffuse 0 ambient 0 emission 1}
//}

//runme: povray -D -UV +INaNbO2S.pov +ONaNbO2S.png +W1000 +H1000 +A


