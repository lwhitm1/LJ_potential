#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2shift/prod_shift_origin/modified_189


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2shift/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2shift/prod_shift_origin/modified_189/modified_189.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/2shift/start_files/ljs.top -o modified_189.tpr

gmx mdrun -s modified_189.tpr -dhdl dhdl_modified_189.xvg
