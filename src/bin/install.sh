#!/bin/bash
#
# <meta:header>
#   <meta:licence>
#     Copyright (c) 2021, ROE (http://www.roe.ac.uk/)
#
#     This information is free software: you can redistribute it and/or modify
#     it under the terms of the GNU General Public License as published by
#     the Free Software Foundation, either version 3 of the License, or
#     (at your option) any later version.
#
#     This information is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU General Public License for more details.
#
#     You should have received a copy of the GNU General Public License
#     along with this program.  If not, see <http://www.gnu.org/licenses/>.
#   </meta:licence>
# </meta:header>
#
#

# -----------------------------------------------------
# Settings ...

#    set -eu
#    set -o pipefail

# -----------------------------------------------------
# Update the apt list

    sudo apt update


# -----------------------------------------------------
# Install AstroPy and Pyvo

    sudo apt install -y python3-astropy

    sudo apt install -y python3-pyvo


# -----------------------------------------------------
# Install Java

    sudo apt install -y default-jre
    java --version


# -----------------------------------------------------
# Install TopCat

    sudo apt install -y wget

    mkdir "${HOME}/Topcat"
    pushd "${HOME}/Topcat"
        wget http://www.star.bris.ac.uk/~mbt/topcat/topcat-full.jar
        wget https://github.com/Zarquan/jordanita/raw/main/logos/Topcat/Topcat-logo.png
    popd

    cat > "${HOME}/Desktop/TopCat.desktop" << EOF
#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Icon=${HOME}/Topcat/Topcat-logo.png
Icon[C]=mate-panel-launcher
Name[C]=TopCat
Exec=java -jar ${HOME}/Topcat/topcat-full.jar
Name=TopCat
EOF

    chmod a+x "${HOME}/Desktop/TopCat.desktop"


# -----------------------------------------------------
# Install Aladin

    wget https://aladin.u-strasbg.fr/java/Aladin.tar
    tar -xvf Aladin.tar
    rm Aladin.tar

    pushd Aladin
        wget https://github.com/Zarquan/jordanita/raw/main/logos/Aladin/Aladin.png
    popd

    cat > "${HOME}/Desktop/Aladin.desktop" << EOF
#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Icon=${HOME}/Aladin/Aladin.png
Icon[C]=mate-panel-launcher
Name[C]=Aladin
Exec=${HOME}/Aladin/Aladin
Name=TopCat
EOF

    chmod a+x "${HOME}/Desktop/Aladin.desktop"


# -----------------------------------------------------
# Install matplotlib

    sudo apt install -y python3-matplotlib


# -----------------------------------------------------
# Get a copy of the tutorial

    sudo apt install -y git
    git clone https://github.com/hendhd/taenaris



