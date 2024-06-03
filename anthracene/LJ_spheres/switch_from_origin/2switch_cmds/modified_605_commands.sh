#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2switch/prod_switch_origin/modified_605


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2switch/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2switch/prod_switch_origin/modified_605/modified_605.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2switch/start_files/ljs.top -o modified_605.tpr

gmx mdrun -s modified_605.tpr -dhdl dhdl_modified_605.xvg
