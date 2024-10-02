# Mod Namer 5000

**Mod Namer 5000** is a Windows batch script that allows you to add or remove "[NoDelete]" to the names of top-level folders in a directory. This is particularly useful for preventing the deletion of mods you wish to retain when updating a Wabbajack install or MO2 install.

## Features

- **Add Prefix**: Automatically prepend [NoDelete] to folder names that do not already have it.
- **Remove Prefix**: Remove [NoDelete] from folder names that contain it.
- **Interactive**: Prompts the user to choose whether to add or remove the prefix.
- **Customizable**: Easily change the prefix by modifying the prefix variable in the script.

## Usage

### Prerequisites

- Windows operating system
- Basic understanding of human motor function
- Two brain cells

### Instructions

1. **Download the Script**

   - Download the latest release.

2. **Place the Script**

   - Move the script into the directory containing the folders you want to modify.

3. **Run the Script**

   - Double-click the `ModNamer5000.bat` file to execute it.
   - The script will prompt:

     ```
     Do you want to (A)dd the prefix or (R)emove the prefix from the folders?
     Enter A to add or R to remove:
     ```

4. **Choose an Option**

   - Type `A` to add the prefix to folders that do not already have it.
   - Type `R` to remove the prefix from folders that contain it.
   - Press **Enter** to proceed.

5. **View Results**

   - The script will display messages indicating which folders have been renamed or skipped.
   - After processing, it will pause to allow you to review the actions taken.
   - If this is confusing, give up now.
