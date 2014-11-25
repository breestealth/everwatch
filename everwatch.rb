#!/usr/bin/env ruby --encoding=utf-8
# everwatch.rb by Brett Terpstra, 2011
# http://brettterpstra.com/2011/11/14/marked-scripts-nvalt-evernote-marsedit-scrivener/
# http://support.markedapp.com/kb/how-to-tips-and-tricks/marked-bonus-pack-scripts-commands-and-bundles
# Updated for latest Evernote configuration (2013) and quick launch of Marked.app - spetschu
#
# Watch Evernote for updates and put the current content of the editor into a preview file for Marked.app
# <http://markedapp.com>
# Updated by `Francis Chen` for Evernote 6.0 in 2014

marked_note = File.expand_path("/tmp/EvernoteSelection.md")
# File.delete(marked_note) ## Delete original file to get a empty display
File.open(marked_note, 'w') {} unless File.exist?(marked_note)
`open -a 'Marked 2' #{marked_note}`

trap("SIGINT") { exit }

while true do # repeat infinitely
  note = %x{ osascript <<APPLESCRIPT
      tell application "Evernote"
          if selection is not {} then
              set the_selection to selection
              return HTML content of item 1 of the_selection
          else
              return ""
          end if
      end tell
PLESCRIPT}

  unless note == '' # if we got something back from the AppleScript
    txtnote = note.gsub("\302\240", ' ').gsub('<br />', "\n").gsub(/<\/div><div/, "<\/x>\n<x").gsub(/<\/?[^>]*>/, '')
    watch_note = File.new("#{marked_note}",'w')
    watch_note.puts txtnote
    watch_note.close
  end

  sleep 5
  
end
