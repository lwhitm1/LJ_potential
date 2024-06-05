#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_w_updates/w_FE/prod_out/modified_117


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_w_updates/w_FE/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_w_updates/w_FE/prod_out/modified_117/modified_117.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_w_updates/w_FE/start_files/ljs.top -o modified_117.tpr

gmx mdrun -s modified_117.tpr -dhdl dhdl_modified_117.xvg
