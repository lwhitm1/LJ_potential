#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_1_rvdw_7/prod_out/modified_216


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_1_rvdw_7/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_1_rvdw_7/prod_out/modified_216/modified_216.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_1_rvdw_7/start_files/ljs.top -o modified_216.tpr

gmx mdrun -s modified_216.tpr -dhdl dhdl_modified_216.xvg
