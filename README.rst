Quick prototyping platform for your HTML/CSS needs
==================================================

To use, just clone this repository and type::

./fiddle.sh

The script creates a new fiddling directory, starts up MVIM and the WSGI-server. Use ``<Leader>o`` to compile and open
the file in browser, and ``<Leader>r`` to compile and refresh Firefox.

Check out ``fiddle.sh`` for configuration options such as VIM executable name and the directory where to put the fiddles
in. **Note:** if you use Rooter or a plugin that changes the current working directory, this script might not work.

Screenshot
==========

.. image:: http://play.taiste.fi/stuf/vim-fiddle.png

Requirements
============

* Python
* HAML
* SASS
* MVIM 
* Firefox as default browser

