#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_1_rvdw_7/prod_out/modified_778


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_1_rvdw_7/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_1_rvdw_7/prod_out/modified_778/modified_778.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift_1_rvdw_7/start_files/ljs.top -o modified_778.tpr

gmx mdrun -s modified_778.tpr -dhdl dhdl_modified_778.xvg
