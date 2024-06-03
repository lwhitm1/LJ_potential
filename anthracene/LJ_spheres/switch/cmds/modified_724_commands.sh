#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch/prod_out/modified_724


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch/prod_out/modified_724/modified_724.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch/start_files/ljs.top -o modified_724.tpr

gmx mdrun -s modified_724.tpr -dhdl dhdl_modified_724.xvg
