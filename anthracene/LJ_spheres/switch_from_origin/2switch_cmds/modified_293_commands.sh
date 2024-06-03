#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2switch/prod_switch_origin/modified_293


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2switch/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2switch/prod_switch_origin/modified_293/modified_293.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2switch/start_files/ljs.top -o modified_293.tpr

gmx mdrun -s modified_293.tpr -dhdl dhdl_modified_293.xvg