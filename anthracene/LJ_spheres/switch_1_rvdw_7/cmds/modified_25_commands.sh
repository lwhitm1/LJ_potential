#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_1_rvdw_7/prod_out/modified_25


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_1_rvdw_7/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_1_rvdw_7/prod_out/modified_25/modified_25.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_1_rvdw_7/start_files/ljs.top -o modified_25.tpr

gmx mdrun -s modified_25.tpr -dhdl dhdl_modified_25.xvg
