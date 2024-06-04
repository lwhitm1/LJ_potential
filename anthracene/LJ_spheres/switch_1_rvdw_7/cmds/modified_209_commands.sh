#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_1_rvdw_7/prod_out/modified_209


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_1_rvdw_7/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_1_rvdw_7/prod_out/modified_209/modified_209.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_1_rvdw_7/start_files/ljs.top -o modified_209.tpr

gmx mdrun -s modified_209.tpr -dhdl dhdl_modified_209.xvg
