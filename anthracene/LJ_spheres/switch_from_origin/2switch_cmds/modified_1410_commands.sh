#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2switch/prod_switch_origin/modified_1410


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2switch/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2switch/prod_switch_origin/modified_1410/modified_1410.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2switch/start_files/ljs.top -o modified_1410.tpr

gmx mdrun -s modified_1410.tpr -dhdl dhdl_modified_1410.xvg
