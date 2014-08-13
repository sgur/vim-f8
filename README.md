vim-flake8
===============

`vim-flake8` is a Vim plugin that checks the buffer with flake8 when saved.

[Flake8](http://pypi.python.org/pypi/flake8/) is a wrapper around PyFlakes
(static syntax checker), PEP8 (style checker) and Ned's MacCabe script
(complexity checker).

This plugin also provide flake8 compilr.

Usage:
------

### On update buffers

1. open \*.py
2. `:write` or `:update` the buffer
3. Open quickfix list if any errors exist

### Using `:make`

~~~vim
:update
:compiler flake8
:make [flake8 options] %
~~~

### Mannualy invoking ':Flake8' command


~~~vim
:Flake8 {buffer name}
~~~

Requirements:
-------------

- vim (supposed 7.4 or after)
- flake8

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
