#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_w_updates/w_FE/prod_out/modified_221


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_w_updates/w_FE/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_w_updates/w_FE/prod_out/modified_221/modified_221.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_w_updates/w_FE/start_files/ljs.top -o modified_221.tpr

gmx mdrun -s modified_221.tpr -dhdl dhdl_modified_221.xvg
