Personal Debian Package Builder Script Collection
======================================================

This is the build system used for `my personal debian repository`_.

.. _`my personal debian repository`: https://hosiet.me/repo/debian

Usage
---------------------

Use ``buildpkg`` tool (in the root directory) to build selected package.
See ``buildpkg --help`` for details.

By default, it will run ``debian/rules get-orig-source`` to prepare upstream source packages (you will need Internet connection to do so), then call ``debuild`` to build the package.

LICENSE
-------------------

All the files in ``debuild/`` directory are licensed according to ``<package-name>/debian/copyright`` file. Other scripts are put into `public domain`_ using `CC0 1.0 Universal`_.

.. _public domain: https://en.wikipedia.org/wiki/Public_domain
.. _CC0 1.0 Universal: https://creativecommons.org/publicdomain/zero/1.0/legalcode