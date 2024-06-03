#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch/prod_out/modified_609


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch/prod_out/modified_609/modified_609.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch/start_files/ljs.top -o modified_609.tpr

gmx mdrun -s modified_609.tpr -dhdl dhdl_modified_609.xvg
