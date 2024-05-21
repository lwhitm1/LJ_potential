#!/bin/bash

# Create parent directory if it doesn't exist
mkdir -p energy_eval

# Loop through each .gro file in the directory
for gro_file in *.gro; do
    # Create a directory based on the .gro file name
    dir_name="energy_eval/$(basename "$gro_file" .gro)"
    mkdir -p "$dir_name"

    # Run the commands in the directory
    cd "$dir_name" || exit

    gmx grompp -f "prod_energy_groups.mdp" -c "../$gro_file" -p "poly_solv.top" -o "poly_solv_prod_energy_groups.tpr" -n "energy_group_index.ndx" -maxwarn 5

    gmx mdrun -v -nt 1 -s poly_solv_prod_energy_groups.tpr -rerun poly_solv_prod.xtc -e poly_solv_prod_energy_groups.edr

    gmx energy -f "poly_solv_prod_energy_groups.edr" -s "poly_solv_prod_energy_groups.tpr" -o "energy_groups.xvg"

    # Move back to the parent directory
    cd ..
done

