#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_w_updates/w_FE/prod_out/modified_542


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_w_updates/w_FE/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_w_updates/w_FE/prod_out/modified_542/modified_542.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_w_updates/w_FE/start_files/ljs.top -o modified_542.tpr

gmx mdrun -s modified_542.tpr -dhdl dhdl_modified_542.xvg
