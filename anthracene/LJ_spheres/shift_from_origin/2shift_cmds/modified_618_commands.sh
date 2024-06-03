#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2shift/prod_shift_origin/modified_618


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2shift/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2shift/prod_shift_origin/modified_618/modified_618.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2shift/start_files/ljs.top -o modified_618.tpr

gmx mdrun -s modified_618.tpr -dhdl dhdl_modified_618.xvg
