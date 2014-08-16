vim-f8
===============

`vim-f8` is a Vim plugin that checks the buffer with flake8 when saved.

[Flake8](http://pypi.python.org/pypi/flake8/) is a wrapper around PyFlakes, PEP8 and mccabe.

This plugin also provide flake8 compiler script.

Usage:
------

### On updating buffers

1. Open \*.py
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

Options:
--------

- `g:f8_auto_enable`
  Enables validation on writing buffers
- `g:f8_builtins`
  values for `--builtins` ex: `['apply', '_']`
- `g:f8_ignore`
  values for `--ignore` ex: `['E4', 'W']`
- `g:f8_max_line_length`
  values for `--max-line-length` ex: `79`
- `g:f8_max_complexity`
  Values for `--max-complexity` ex: `10`

Requirements:
-------------

- vim (supposed 7.4 or after)
- [flake8](https://pypi.python.org/pypi/flake8)

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
