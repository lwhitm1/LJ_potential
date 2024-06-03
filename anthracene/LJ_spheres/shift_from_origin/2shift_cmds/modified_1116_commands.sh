#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2shift/prod_shift_origin/modified_1116


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2shift/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2shift/prod_shift_origin/modified_1116/modified_1116.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2shift/start_files/ljs.top -o modified_1116.tpr

gmx mdrun -s modified_1116.tpr -dhdl dhdl_modified_1116.xvg