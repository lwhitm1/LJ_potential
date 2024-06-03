#!/bin/bash
cd /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift/prod_out/modified_529


gmx grompp -f /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift/start_files/energy_eval.mdp -c /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift/prod_out/modified_529/modified_529.gro -p /home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/shift/start_files/ljs.top -o modified_529.tpr

gmx mdrun -s modified_529.tpr -dhdl dhdl_modified_529.xvg
