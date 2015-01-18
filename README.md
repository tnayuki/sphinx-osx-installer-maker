Sphinx Installer Maker for OS X
==============================

## Making the Installer

./make-installer.sh

will make an installer package in build directory.

## Uninstalation Instrunction

```
# Remove the installed files
sudo rm -rf /opt/sphinx-doc

# Remove the system installation entry
sudo pkgutil --forget org.sphinx-doc

# Remove the symlinks under /usr/bin for Sphinx
ls -la /usr/bin | egrep '/opt/sphinx-doc' | awk '{ print $9 }' | sudo xargs -I % rm -f /usr/bin/%

```
