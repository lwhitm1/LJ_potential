#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_1_rvdw_7/prod_out/modified_403


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_1_rvdw_7/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_1_rvdw_7/prod_out/modified_403/modified_403.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_1_rvdw_7/start_files/ljs.top -o modified_403.tpr

gmx mdrun -s modified_403.tpr -dhdl dhdl_modified_403.xvg
