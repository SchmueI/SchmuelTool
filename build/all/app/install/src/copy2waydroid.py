import pyotherside
import os
import threading
import sys
sys.path.append('deps')
sys.path.append('../deps')
import pexpect

class U2w:
    def copy(self, password):
        os.chdir("/home/phablet")

        #Starting bash and getting root privileges
        print("Starting bash and getting root privileges")
        child = pexpect.spawn('bash')
        child.expect(r'\$')
        child.sendline('sudo -s')
        child.expect('[p/P]ass.*')
        child.sendline(str(password))
        child.expect('root.*')
        child.sendline('sudo test -d .local/share/waydroid/data/media/0/UbuntuPictures/ || sudo mkdir .local/share/waydroid/data/media/0/UbuntuPictures/')
        child.expect('root.*')
        child.sendline('sudo cp -R /home/phablet/Pictures/* .local/share/waydroid/data/media/0/UbuntuPictures/')
        child.expect('root.*')
        child.close()

    def remove(self, password):
        os.chdir("/home/phablet")

        #Starting bash and getting root privileges
        print("Starting bash and getting root privileges")
        child = pexpect.spawn('bash')
        child.expect(r'\$')
        child.sendline('sudo -s')
        child.expect('[p/P]ass.*')
        child.sendline(str(password))
        child.expect('root.*')
        child.sendline('sudo test -d .local/share/waydroid/data/media/0/UbuntuPictures/ && sudo rm -R .local/share/waydroid/data/media/0/UbuntuPictures/* || sudo mkdir .local/share/waydroid/data/media/0/UbuntuPictures/')
        child.expect('root.*')
        child.close()
u2w = U2w()

class W2u:
    def copy(self, password):
        os.chdir("/home/phablet")

        #Starting bash and getting root privileges
        print("Starting bash and getting root privileges")
        child = pexpect.spawn('bash')
        child.expect(r'\$')
        child.sendline('sudo -s')
        child.expect('[p/P]ass.*')
        child.sendline(str(password))
        child.expect('root.*')
        child.sendline('sudo test -d /home/phablet/Downloads/WayDroid/ || sudo mkdir /home/phablet/Downloads/WayDroid/')
        child.expect('root.*')
        child.sendline('sudo cp -R .local/share/waydroid/data/media/0/DCIM/Camera/* /home/phablet/Downloads/WayDroid/')
        child.expect('root.*')
        child.close()

    def remove(self, password):
        os.chdir("/home/phablet")

        #Starting bash and getting root privileges
        print("Starting bash and getting root privileges")
        child = pexpect.spawn('bash')
        child.expect(r'\$')
        child.sendline('sudo -s')
        child.expect('[p/P]ass.*')
        child.sendline(str(password))
        child.expect('root.*')
        child.sendline('sudo test -d /home/phablet/Downloads/WayDroid/ && sudo rm -R /home/phablet/Downloads/WayDroid/* || sudo mkdir /home/phablet/Downloads/WayDroid/')
        child.expect('root.*')
        child.close()

w2u= W2u()
