# COLMAP-Mass-3D-Automatic-Reconstruction

## Description

This project provides a Bash script to automate the 3D reconstruction process using COLMAP. The script simplifies the process of reconstructing 3D models from a set of images in multiple subfolders, creating separate workspaces for each subfolder.

## Getting Started

Before using the provided script, ensure you have the necessary prerequisites:

- **COLMAP**: [Install COLMAP](https://colmap.github.io/install.html) and make sure it's properly configured on your system.

### Usage

1. **Copy or Download Script**: Copy or download the script to your local machine.

2. **Edit the Script**:
   
   - Open the `automate_reconstruction.sh` file in a text editor.
   
   - Modify the script to specify the paths to your root folder and root workspace:

     ```bash
     MAIN_WORKSPACE="workspace_path"
     for subfolder in root_folder*; do
     ```

     - `workspace_apth`: Replace this with the desired path where you want to create the workspace directories for 3D reconstructions.
     - `root_folder`: Replace this with the path to the folder that contains all of the subfolders of images to reconstruct.

3. **Ensure Directory Structure**:
   
   - Ensure your directory structure matches the expected layout:

     ```
     root_folder/
         subfolder1/
         subfolder2/
         ...
     ```

     The script expects to find subfolders inside a directory named `root_folder`.

4. **Save Changes**:
   
   - Save the changes to the script.

5. **Execute the Script**:

   - Open a terminal and navigate to the directory where you placed the script:

     ```bash
     cd /path/to/script/directory
     ```

   - Make the script executable, if not already done:

     ```bash
     chmod +x automate_reconstruction.sh
     ```

   - Execute the script:

     ```bash
     ./automate_reconstruction.sh
     ```

     Replace `automate_reconstruction.sh.sh` with the actual name of your script if it's different.

6. **Completion Message**:
   
   - Once all subfolders have been processed, you will see the final message: "All reconstructions completed."
