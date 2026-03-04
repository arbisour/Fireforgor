This is based on: https://github.com/rlaphoenix/minerva/releases

I wanted to try and help streamline getting minerva easily on any Debian 12 VPS with systemd 
(this may work on Ubuntu as well) so I decided to create this fire and forgor script.

ALSO HIGHLY RECOMMEND NOT RUNNING THIS AS ROOT BUT AS A USER ACCOUNT

PLEASE READ FROM TOP TO BOTTOM

Script instructions:
1. After downloading the script, run chmod +x fireforgor.sh
2. run ./fireforgor.sh
3. authenticate with sudo and wait for the script to finish,
what it's going to do is install screen, wget, and aria2c in case they aren't installed
then create you a folder in ~/.config/systemd/user, and then download my minervaworker.service file
4. log out and back in (restart your shell), then follow the discord login instructions

Discord login instructions:
1. run uvx --refresh --from=minerva-worker minerva login
   * If you get "You need to enable javascript", try right clicking, scroll down and click quit (if w3m is preinstalled)
2. Copy the URL the terminal gives you (DO NOT CLOSE THIS TERMINAL)
3. On your personal computer, open the URL and authenticate with Discord.
4. When you get redirected, copy the 127.0.0.1 url
5. Open another terminal and connect it to your server
6. Run curl -L "[the url you copied]"
7. You should see in green text a login success message
8. then run systemctl --user start minerva
9. once started, you can monitor it by running screen -r minerva
10. press CTRL + A + D (like you would CTRL + ALT + DELETE or something) to leave the screen

Uninstall instructions:
1. Download uninstall.sh then run chmod +x uninstall.sh
2. You'll have to remove aria2, wget, screen, (sudo apt remove <name>) 
and clear ./minerva-dpn/tmp in case you're saving those files



If you need to edit the systemd worker to change the default values, 

I highly recommend nano (sudo apt install nano) and you'd run:

nano ~/.config/systemd/user/minerva.service
and look at the end of the ExecStart= line to adjust -c -b -a values (default is 4 6 and 8 to not blow up your server)

RuntimeMaxSec=6h restarts the service every 6 hours and when it's ran it gets the latest script uploaded in pip

The ExecPreStart and ExecStop lines are commented out, 
but if you uncomment these they will clear the tmp folder on stop and restart, 
but the script now supports clearing tmp

Credits:

You - for being apart of a great cause

Minerva Team - for making the really awesome script and just being awesome

Mak - helping me with understanding systemd and uvx

Arbi - creating the fireforgor.sh and uninstall.sh scripts, shoving the github together.
