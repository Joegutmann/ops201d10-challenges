: : Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.

Get-Process | Sort-Object -Property CPU -Descending

: : Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.

Get-Process | Sort-Object -Property PID

: : Print to the terminal screen the top five active processes ordered by highest working set at the top

Get-Process | Select-Object Name, Workingset | Sort-Object -Property Workingset -Descending  | Select-Object -First 5

: : Start a browser process (such as Google Chrome or MS Edge) and have it open https://owasp.org/www-project-top-ten/.

Start-Process "Chrome.exe" -Argumentlist "https://owasp.org/www-project-top-ten/"

: :Start the process Notepad ten times using a for loop.

for ($i = 1; $i -le 10; $i++) {
Start-Process "notepad.exe" 
}

: : Close all instances of the Notepad. would have rather done this during the previous where we opened them.
: : It could have probs kept track of what we opened and then after a short delay whacked em for the close.
: : Dirty but it works

Stop-Process -Name notepad

: :: Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Google Chrome
: :: or MS Edge.

StoStop-Process -Id 8660