#!/bin/bash
COLMAP_EXECUTABLE="colmap automatic_reconstructor"
MAIN_WORKSPACE="workspace_path"
for subfolder in root_folder*; do
if [[ -d "$subfolder" ]]; then
subfolder_name=$(basename "$subfolder")
workspace_path="$MAIN_WORKSPACE/${subfolder_name}_3d"
mkdir -p "$workspace_path"
$COLMAP_EXECUTABLE --workspace_path "$workspace_path" --image_path "$subfolder"
echo "Reconstruction completed for $subfolder_name"
fi
done
echo "All reconstructions completed."
