# Download command line configs for zsh and vim from chrisying

import os
import os.path
import urllib2

_PREFIX = 'https://raw.githubusercontent.com/chrisying/cl-configs/master/'

_FILES = [
        '.zshrc',
        '.vimrc',
        '.dir_colors',
]

def main():
    print 'Downloading command line configs from https://github.com/chrisying/cl-configs'
    home = os.path.expanduser('~')

    for f in _FILES:
        path = os.path.join(home, f)

        # Save existing configs as backup
        if os.path.isfile(path):
            print '%s already exists in your home directory, renaming it %s.bak' % (f, f)
            os.rename(path, path + '.bak')


        # Download new files from github
        resp = urllib2.urlopen(_PREFIX + f)
        raw = resp.read()

        with open(path, 'w') as fd:
            fd.write(raw)


if __name__ == '__main__':
    main()
