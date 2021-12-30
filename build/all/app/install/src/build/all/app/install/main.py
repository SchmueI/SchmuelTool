'''
 Copyright (C) 2021  Schmuel Odradek

 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation; version 3.

 schmueltool is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.
'''

import os

class U2wApp:
	def create(self):
		f = open("/home/phablet/.local/share/applications/u2w.desktop", mode = "w")
		os.system("test -d /home/phablet/.local/share/waydroid/data/media/0/UbuntuPhotos/ || mkdir /home/phablet/.local/share/waydroid/data/media/0/UbuntuPhotos")
		f.write("[Desktop Entry]\nType=Application\nName=ST u2w \nExec=cp -R -u /home/phablet/Pictures/ /home/phablet/.local/share/waydroid/data/media/0/UbuntuPhotos/  \nIcon=/opt/click.ubuntu.com/.click/users/phablet/schmueltool.schmuel/assets/logo.svg")
		f.close
	def remove(self):
		os.system("rm /home/phablet/.local/share/applications/u2w.desktop")
u2wapp = U2wApp()

class RestartApp:
	def create(self):
		f = open("/home/phablet/.local/share/applications/restart8.desktop", mode = "w")
		f.write("[Desktop Entry]\nType=Application\nName=ST Restart Unity8 \nExec=restart unity8\nIcon=/opt/click.ubuntu.com/.click/users/phablet/schmueltool.schmuel/assets/logo.svg")
		f.close
	def remove(self):
		os.system("rm /home/phablet/.local/share/applications/restart8.desktop")
restartapp = RestartApp()
