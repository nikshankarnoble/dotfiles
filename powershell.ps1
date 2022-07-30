# Colours.
$console = $host.ui.rawui
$console.backgroundcolor = "black"
$console.foregroundcolor = "white"
$colors = $host.privatedata
$colors.verbosebackgroundcolor = "Black"
$colors.verboseforegroundcolor = "Green"
$colors.warningbackgroundcolor = "Black"
$colors.warningforegroundcolor = "Yellow"
$colors.ErrorBackgroundColor = "black"
$colors.ErrorForegroundColor = "Red"

# Shows navigable menu of all options when hitting Tab.
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys.
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# Function to return the current time.
function Get-Time { return $(get-date | foreach { $_.ToLongTimeString() } ) }

function prompt
{
    # Write the time
    write-host "[" -noNewLine
    write-host $(Get-Time) -noNewLine
    write-host "] " -noNewLine

    # Write the user and hostname
    write-host $env:USERNAME -noNewLine
    write-host "@" -noNewLine
    write-host $env:COMPUTERNAME -noNewLine
    write-host " " -noNewLine
   
    # Write the path
    write-host $($(Get-Location).Path.replace($home,"~").replace("\","/")) -foreground yellow -noNewLine
    write-host $(if ($nestedpromptlevel -ge 1) { '>>' }) -noNewLine
    return "> "
}
