#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_w_updates/w_FE/prod_out/modified_205


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_w_updates/w_FE/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_w_updates/w_FE/prod_out/modified_205/modified_205.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_w_updates/w_FE/start_files/ljs.top -o modified_205.tpr

gmx mdrun -s modified_205.tpr -dhdl dhdl_modified_205.xvg
