vim-flake8
===============

`vim-flake8` is a Vim plugin that checks the buffer with flake8 when saved.

[Flake8](http://pypi.python.org/pypi/flake8/) is a wrapper around PyFlakes
(static syntax checker), PEP8 (style checker) and Ned's MacCabe script
(complexity checker).

This plugin also provide flake8 compilr.

Usage:
------

### Validate current buffer with flake8 using `:make`

~~~vim
:update
:compiler flake8
:make [flake8 options] %
~~~

Requirements:
-------------

Install:
--------

Install Vundle, then run bundle install command:

~~~vim
Plugin 'sgur/vim-f8'
~~~

License:
--------

MIT License

Author:
-------

`sgur <sgurrr+vim@gmail.com>`
