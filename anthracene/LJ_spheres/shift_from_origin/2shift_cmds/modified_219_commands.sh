#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2shift/prod_shift_origin/modified_219


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2shift/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2shift/prod_shift_origin/modified_219/modified_219.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2shift/start_files/ljs.top -o modified_219.tpr

gmx mdrun -s modified_219.tpr -dhdl dhdl_modified_219.xvg
