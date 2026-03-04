I wanted to try and help streamline getting this on any Debian 12 VPS with systemd (this may work on Ubuntu as well) so I decided to create this fire and forgor script.
If you need to edit the systemd worker to change the default values, I highly recommend nano, and you would change the line

ExecStart=/usr/bin/screen -L -dmS minerva %h/.local/bin/uvx --refresh --from=minerva-worker minerva run -c4 -b6 -a8

Script instructions:
1. After downloading the script, run chmod +x fireforgor.sh
2. run ./fireforgor.sh
3. authenticate with sudo and wait for the script to finish,
what it's going to do is install screen and wget in case they aren't installed
then create you a folder in ~/.config/systemd/user, and then download my minervaworker.service file
4. follow the discord login instructions

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
