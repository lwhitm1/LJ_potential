#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift/prod_out/modified_213


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift/prod_out/modified_213/modified_213.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift/start_files/ljs.top -o modified_213.tpr

gmx mdrun -s modified_213.tpr -dhdl dhdl_modified_213.xvg
