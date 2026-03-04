echo "hai i am going to install the minerva worker, get ready!!"

#gather dependencies
echo "gathering dependencies . . ."
sudo apt install screen
sudo apt install wget
sudo apt install aria2
wget -qO- https://astral.sh/uv/install.sh | sh #this is uv/uvx

echo "creating folder . . ."
# create folder if doesn't already exist
mkdir -p ~/.config/systemd/user/

# download into folder
wget https://raw.githubusercontent.com/arbisour/Fireforgor/refs/heads/main/minerva.service -O ~/.config/systemd/user/minerva.service

#reload and activate new service
systemctl --user daemon-reload
systemctl --user enable minerva.service

echo "follow the discord login instructions in the README"
echo "then run"
echo "systemctl --user start minerva.service"
echo
echo "take care of yourself and i wish you good health"
