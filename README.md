everwatch
=========

Script to integrate [Marked.app](http://markedapp.com) and [Evernote](http://www.evernote.com).

Modded from original script by [Brett Terpstra](http://brettterpstra.com/2011/11/14/marked-scripts-nvalt-evernote-marsedit-scrivener/) which is included in the [Marked Bonus Pack](http://support.markedapp.com/kb/how-to-tips-and-tricks/marked-bonus-pack-scripts-commands-and-bundles).

Updated to handle the way Evernote currently handles files (2013) and quick launch of Marked.app.

##Usage

    bash> ./everwatch.rb <evernote username>

or set account name to EVERWATCH_ACCOUNT environment variable,

    bash> export EVERWATCH_ACCOUNT=<evernote username>
    bash> ./everwatch.rb

or if osx's user name equals evernote username, simply

    bash> ./everwatch.rb
