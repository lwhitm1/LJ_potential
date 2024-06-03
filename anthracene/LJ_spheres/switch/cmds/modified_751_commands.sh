#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch/prod_out/modified_751


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch/prod_out/modified_751/modified_751.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch/start_files/ljs.top -o modified_751.tpr

gmx mdrun -s modified_751.tpr -dhdl dhdl_modified_751.xvg
