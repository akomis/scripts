# Set of General Automation Scripts
A variety of ([bash](https://github.com/gitGNU/gnu_bash)) shell  scripts that make everyday life easier.

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
Dependencies: `neofetch cal checkupdates`
```
Usage: status
```

## tunefans  
Tune fan setup (fan mode, led mode & color and pump mode) and fan speeds using [OpenCorsairLink](https://github.com/audiohacked/OpenCorsairLink)  
Dependencies: `opencorsairlink`
```
Usage: tunefans DEVICE_ID FAN_CHANNEL FAN_MODE LED_CHANNEL LED_MODE LED_COLOR PUMP_MODE
```
