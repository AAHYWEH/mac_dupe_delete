# dupedel.sh

## Overview

`dupedel.sh` is a shell script that scans a specified top-level directory and removes duplicate files based on their checksums. This helps free up disk space and organize your files by eliminating unnecessary duplicates.

## Features

- Recursively traverses the specified directory.
- Computes the checksum of each file using MD5
- Deletes duplicate files, keeping a single occurrence.

## Requirements

- bash
- md5 

## Usage

1. Clone the repository or download the script:

   ```bash
   git clone https://github.com/AAHYWEH/mac_dupe_delete.git
   cd mac_dupe_delete
   ```

2. Make the script executable:

   ```bash
   chmod +x dupedel.sh
   ```

3. Run the script with a top-level directory as an argument:

   ```bash
   ./dupedel.sh /path/to/top-level-directory
   ```

### Example

```bash
./dupedel.sh /Users
```

## Script Behavior

- The script will prompt for confirmation before deleting any files.
- The script will output the names of files that are deleted. Redirect to a file to save output.

## Important Notes

- **Backup Your Data**: Always make sure to back up your data before running the script, as deleted files cannot be recovered. Excercise extreme caution with sudo privileges.
- **Permission**: Ensure you have the necessary permissions to read and delete files in the specified directory.

## License

This script is released under the MIT License. Feel free to use, modify, and distribute it as you wish.

## Contributions

Contributions are welcome! If you find any bugs or have suggestions for improvements, please open an issue or submit a pull request.

## Author

Created by [bass](https://github.com/AAHYWEH)

---

Feel free to modify this README to better suit your project or add additional information as necessary!