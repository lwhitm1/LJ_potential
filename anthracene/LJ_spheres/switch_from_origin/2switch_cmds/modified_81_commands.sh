#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2switch/prod_switch_origin/modified_81


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2switch/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2switch/prod_switch_origin/modified_81/modified_81.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2switch/start_files/ljs.top -o modified_81.tpr

gmx mdrun -s modified_81.tpr -dhdl dhdl_modified_81.xvg
