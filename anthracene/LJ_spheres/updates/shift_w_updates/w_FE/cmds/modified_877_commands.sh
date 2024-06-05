#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_w_updates/w_FE/prod_out/modified_877


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_w_updates/w_FE/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_w_updates/w_FE/prod_out/modified_877/modified_877.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_w_updates/w_FE/start_files/ljs.top -o modified_877.tpr

gmx mdrun -s modified_877.tpr -dhdl dhdl_modified_877.xvg
