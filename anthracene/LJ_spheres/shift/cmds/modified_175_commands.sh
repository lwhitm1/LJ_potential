#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift/prod_out/modified_175


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift/prod_out/modified_175/modified_175.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift/start_files/ljs.top -o modified_175.tpr

gmx mdrun -s modified_175.tpr -dhdl dhdl_modified_175.xvg
