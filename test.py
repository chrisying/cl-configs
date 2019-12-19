"""Testing script to see if CI linter is worker."""
from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

from absl import app
from absl import flags

FLAGS = flags.FLAGS

def function_name(bad,parameters):
    print('this line is too long and should trigger a linter warning, blah blah balh, hello world, asdfasdf')

def main(argv):
    del argv    # Unused
    pass


if __name__ == '__main__':
    app.run(main)

