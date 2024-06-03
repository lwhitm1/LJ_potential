#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift/prod_out/modified_711


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift/prod_out/modified_711/modified_711.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift/start_files/ljs.top -o modified_711.tpr

gmx mdrun -s modified_711.tpr -dhdl dhdl_modified_711.xvg
