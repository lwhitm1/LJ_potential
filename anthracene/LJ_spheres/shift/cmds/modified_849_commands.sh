#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift/prod_out/modified_849


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift/prod_out/modified_849/modified_849.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift/start_files/ljs.top -o modified_849.tpr

gmx mdrun -s modified_849.tpr -dhdl dhdl_modified_849.xvg
