# fcitx5-extra-tables-deb
Debian/Ubuntu fcitx5 extra tables DEB packages (built from Arch packages)

# Usage
First install packages needed to build a DEB:
```
sudo apt-get install git wget zstd build-essential dpkg-dev devscripts debhelper
git clone https://github.com/duckfly-tw/fcitx5-extra-tables-deb.git
```
choose one directory and run build.sh:
```
cd fcitx5-extra-tables-deb/fcitx5-table-extra
./build.sh
```
or
```
cd fcitx5-extra-tables-deb/fcitx5-table-other
./build.sh
```
the build.sh script will download latest package from Arch to build a DEB.
