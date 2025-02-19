
![Logo](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/th5xamgrr6se0x5ro4g6.png)


# CerroPKG

A simple and global way to install AUR and pacman packages and download some AppImages on Arch. This project is still on its first stage, having a few packages only.


## Usage

How to use it:

To install a package you can use:
```bash
sudo cerropkg -i [package]
```

To download an Appimage app you can only use:
```bash
sudo cerropkg -d [appimage]
```

Finally, to list all programs available with cerropkg you may use:
```bash
sudo cerropkg -l
```

or

```bash
sudo cerropkg --list
```

Sumarizing...
```bash
sudo cerropkg -i [package] #Installs a package

sudo cerropkg -l #Installs all packages

sudo cerropkg -d [package] #Downloads an AppImage
```

## How it works?

Cerropkg was originally designed as a metapackage installer and that will be one of its final functions. However, in the process, we thought of adding other packages that are either installed with AUR or have strange or unreasonable package names for a first time user, for example, some packages end in -bin or -git and if you don't read the page (which you should), you might not understand. So the goal is going to be to have packages that install with a simple name, install Appimages that are not found elsewhere and install metapackages.

In a very simple way (it is simple actually, this is not a revolution or anything new by the way), cerropkg works through scripts (.sh). When you run cerropkg -i chrome, for example, what you do is download the file chrome.sh from the Github repository of scripts, give execution permissions to that script, run it and start installing without user intervention. When it finishes installing, that script is removed from the system. It's that simple!
When we do cerropkg -l or --list it is practically the same: It downloads the packages.txt file, displays it in the terminal and is removed from the system.

