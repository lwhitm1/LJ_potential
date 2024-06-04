#!/bin/bash

SCRIPT_DIR="/home/lindseywhitmore/projects/LJ_potential/anthracene/LJ_spheres/switch_1_rvdw_7/cmds" 

LOG_DIR="./logs"

mkdir -p "$LOG_DIR"


for script in "$SCRIPT_DIR"/*.sh; do
	script_name=$(basename "$script")
	log_file="$LOG_DIR/${script_name%.sh)}.log"
	bash "$script" > "$log_file" 2>&1
done
