#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_1_rvdw_7/prod_out/modified_164


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_1_rvdw_7/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_1_rvdw_7/prod_out/modified_164/modified_164.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_1_rvdw_7/start_files/ljs.top -o modified_164.tpr

gmx mdrun -s modified_164.tpr -dhdl dhdl_modified_164.xvg
