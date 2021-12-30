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

class RestartApp:
	def create(self):
		f = open("/home/phablet/.local/share/applications/restart8.desktop", mode = "w")
		f.write("[Desktop Entry]\nType=Application\nName=ST Restart Unity8 \nExec=restart unity8\nIcon=/opt/click.ubuntu.com/.click/users/phablet/schmueltool.schmuel/assets/logo.svg")
		f.close
	def remove(self):
		os.system("rm /home/phablet/.local/share/applications/restart8.desktop")
restartapp = RestartApp()
