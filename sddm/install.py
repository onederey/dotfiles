import os
import sys
import shutil

SDDM_THEMES_FOLDER = '/usr/share/sddm/themes'
SDDM_CONF = '/etc/sddm.conf'

if len(sys.argv) <= 0:
    print('Use: sudo python ./install.sh ./theme_folder')

theme_path = sys.argv[1]
theme_name = os.path.basename(os.path.normpath(theme_path))

if not os.path.exists(theme_path):
    print(f'Folder {theme_path} is not found')

shutil.copytree(theme_path, os.path.join(SDDM_THEMES_FOLDER, theme_name))

if not os.path.exists(SDDM_CONF):
    with open(SDDM_CONF, "a") as conf:
        conf.write('[Theme]')
        conf.write(f'Current={theme_name}')
else:
    with open(SDDM_CONF, 'r') as conf:
        conf_lines = conf.readlines()
    
    with open(SDDM_CONF, 'w') as conf:
        for line in conf_lines:
            if 'Current=' in line:
                conf.write(f'Current={theme_name}')
            else:
                conf.write(line)