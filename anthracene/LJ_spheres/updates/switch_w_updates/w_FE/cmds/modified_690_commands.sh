#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_w_updates/w_FE/prod_out/modified_690


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_w_updates/w_FE/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_w_updates/w_FE/prod_out/modified_690/modified_690.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_w_updates/w_FE/start_files/ljs.top -o modified_690.tpr

gmx mdrun -s modified_690.tpr -dhdl dhdl_modified_690.xvg
