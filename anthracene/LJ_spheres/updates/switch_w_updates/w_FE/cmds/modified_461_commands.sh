#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_w_updates/w_FE/prod_out/modified_461


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_w_updates/w_FE/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_w_updates/w_FE/prod_out/modified_461/modified_461.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_w_updates/w_FE/start_files/ljs.top -o modified_461.tpr

gmx mdrun -s modified_461.tpr -dhdl dhdl_modified_461.xvg
