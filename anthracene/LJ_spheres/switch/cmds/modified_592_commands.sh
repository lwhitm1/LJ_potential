#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch/prod_out/modified_592


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch/prod_out/modified_592/modified_592.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch/start_files/ljs.top -o modified_592.tpr

gmx mdrun -s modified_592.tpr -dhdl dhdl_modified_592.xvg
