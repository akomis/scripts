# Set of General Automation Scripts
A variety of ([bash](https://github.com/gitGNU/gnu_bash)) shell  scripts that make everyday life easier.

# ALSM
### Arch Linux System Maintenance
A simple bash script that mainly follows the [System maintenance](https://wiki.archlinux.org/index.php/System_maintenance) Arch wiki page instructions but automating most of the procedures.
## Procedures
*as described in the Arch wiki*
- Check if any systemd services have entered in a failed state
- Look for errors in the log files located at /var/log, as well as high priority
- Remove orphans and dropped packages
- Update the mirror list using reflector
- Clear package cache

Disabled functionalities:
- Upgrade system
- Remove duplicates using rmlint
- Backup data using rsync  

For enabling the above functionalities one should make sure to read the corresponding source code, understand the risks of automating such procedures and changing the source code carefully (through the configuration and uncommenting of the corresponding lines) for the desired effects to take place.

After successful execution, the script produces report.txt at the specified directory where there is a status message for each procedure done by the script. It is highly recommended to check the report and act on any manual user intervention needed.
## Configuration
Before running the script alter any global $variables according to your system/preferences. Each variable has a description of use found in the source code as a comment above it.
## Dependencies
Get all the required packages to run the script at its full potential with  
`sudo pacman -S rsync rmlint reflector pacman-contrib`
## Usage
`cd ./alsm`  
`chmod +x alsm`  
`sudo ./alsm`  
## Disclaimer
This script is considered safe to use as it follows best practices found in the Arch wiki and it is generally risk averse (out of the box). However, proper configuration and use of the script is required to get the desired results and in no way is the author of this script responsible for any unwanted results to your system. It is highly recommended that the user reads the source code and alters it if necessary to suit the system before execution.

## arch-wiki-search  
A dmenu prompt to search the [Arch Wiki](https://wiki.archlinux.org/)  
```
Usage: arch-wiki-search
```

## cleanpng
A small script to remove all color correction properties from all png images (useful for web use)  
Dependencies: `pngcrush`
```
Usage: cleanpng [DIRECTORY_PATH]
```

## gitall
Perform a git command to all git subdirectories  
Dependencies: `git`
```
Usage: git GIT_COMMAND [DIRECTORY_PATH]
```

## push  
Add all modified files, commit and push a local git repository to Github  
Dependencies: `git`  
```
Usage: push [DIRECTORY_PATH]
```

## router  
Opens the settings page of the default gateway (router)  
```
Usage: router
```

## status  
Print useful information to the user about the system  
Dependencies: `neofetch cal liquidctl checkupdates`
```
Usage: status
```
