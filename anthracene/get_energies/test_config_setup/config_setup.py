import argparse
import os
import numpy as np
import MDAnalysis as mda

def modify_coordinates(input_file, output_dir, start_atom, end_atom, iterations):
    # Load the .gro file
    u = mda.Universe(input_file)

    for i in range(iterations):
        # Get the atoms within the specified range
        selection = u.atoms[start_atom-1:end_atom]

        # Move the selected atoms by a small distance (e.g., 1/100 of an angstrom)
        movement_vector = np.array([0.01, 0.01, 0.01])  # 1/100 of an angstrom in each direction
        selection.positions += movement_vector

        # Write the modified coordinates to a new .gro file
        output_file = os.path.join(output_dir, f"modified_{i}.gro")
        with mda.Writer(output_file, bonds=None, n_atoms=len(u.atoms)) as gro:
            gro.write(u.atoms)

if __name__ == "__main__":
    # Parse command-line arguments
    parser = argparse.ArgumentParser(description="Modify coordinates in a .gro file iteratively")
    parser.add_argument("input_file", type=str, help="Input .gro file")
    parser.add_argument("output_dir", type=str, help="Output directory for modified .gro files")
    parser.add_argument("start_atom", type=int, help="Start atom number")
    parser.add_argument("end_atom", type=int, help="End atom number")
    parser.add_argument("iterations", type=int, help="Number of iterations")
    args = parser.parse_args()

    # Create the output directory if it doesn't exist
    os.makedirs(args.output_dir, exist_ok=True)

    # Call the modify_coordinates function
    modify_coordinates(args.input_file, args.output_dir, args.start_atom, args.end_atom, args.iterations)
