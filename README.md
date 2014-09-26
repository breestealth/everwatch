everwatch
=========

Script to integrate [Marked.app](http://marked2app.com/) and [Evernote](http://www.evernote.com).

Modded from original script by [Brett Terpstra](http://brettterpstra.com/2011/11/14/marked-scripts-nvalt-evernote-marsedit-scrivener/) which is included in the [Marked Bonus Pack](http://support.markedapp.com/kb/how-to-tips-and-tricks/marked-bonus-pack-scripts-commands-and-bundles).

Updated to handle Marked2 and fixed small encoding problem.

##Usage

    bash> ./everwatch.rb <evernote username>

or set account name to EVERWATCH_ACCOUNT environment variable,

    bash> export EVERWATCH_ACCOUNT=<evernote username>
    bash> ./everwatch.rb

or if osx's user name equals evernote username, simply

    bash> ./everwatch.rb
