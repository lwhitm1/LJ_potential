#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch/prod_out/modified_328


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch/prod_out/modified_328/modified_328.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch/start_files/ljs.top -o modified_328.tpr

gmx mdrun -s modified_328.tpr -dhdl dhdl_modified_328.xvg
