#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_w_updates/w_FE/prod_out/modified_339


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_w_updates/w_FE/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_w_updates/w_FE/prod_out/modified_339/modified_339.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_w_updates/w_FE/start_files/ljs.top -o modified_339.tpr

gmx mdrun -s modified_339.tpr -dhdl dhdl_modified_339.xvg
