# Preferred command implementations
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias less='less -FSRXc'

# File size
alias fs="stat -f '%z bytes'"
alias df="df -h"

# Recursively delete `.DS_Store` files
alias dsstore="find . -name '*.DS_Store' -type f -ls -delete"

# Aliasing eachdir like this allows you to use aliases/functions as commands.
alias eachdir=". eachdir"

# Create a new directory and enter it
function md() {
  mkdir -p "$@" && cd "$@"
}

# Canonical hex dump; some systems have this symlinked
command -v hd > /dev/null || alias hd="hexdump -C"

# File size
alias fs="stat -f \"%z bytes\""

# clean terminal history
alias yolo="history -c && clear"

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
# Finally, clear download history from quarantine. https://mths.be/bum
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

# Merge PDF files
# Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
alias mergepdf='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"

# numFiles: Count of non-hidden files in current dir
alias numFiles='echo $(ls -1 | wc -l)'

# makeXmb:  Creates a file of Xmb size (all zeros)
alias make1mb='mkfile 1m ./1MB.dat'
alias make5mb='mkfile 5m ./5MB.dat'
alias make10mb='mkfile 10m ./10MB.dat'

# qfind:    Quickly search for file
alias qfind="find . -name "
