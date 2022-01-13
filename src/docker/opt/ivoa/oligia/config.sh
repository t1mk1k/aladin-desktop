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

#
# We need to do this in a separate step because the user's home directory
# doesn't exist during the Docker build process.
# These steps have to be done at runtime rather than at build time.
#

#
# Install our Desktop shortcuts
cp /opt/ivoa/desktop/* ${HOME}/Desktop

#
# Update our PATH
export PATH=${PATH}:/opt/ivoa/aladin:/opt/ivoa/topcat

