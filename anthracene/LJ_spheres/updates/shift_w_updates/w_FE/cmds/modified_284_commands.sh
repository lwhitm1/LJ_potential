#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_w_updates/w_FE/prod_out/modified_284


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_w_updates/w_FE/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_w_updates/w_FE/prod_out/modified_284/modified_284.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_w_updates/w_FE/start_files/ljs.top -o modified_284.tpr

gmx mdrun -s modified_284.tpr -dhdl dhdl_modified_284.xvg
