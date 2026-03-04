echo "hai im going to uninstall the myrient worker only"

echo "stopping service"
systemctl --user stop minerva
echo ""
echo "disabling service"
systemctl --user disable minerva
echo "deleting service"
rm ~/.config/systemd/user/minerva.service
echo "reloading daemon"
systemctl --user daemon-reload

echo "screen, wget, aria2, and uv are still installed as they're common programs, and ./tmp is untouched"
echo
echo
echo "take care of yourself and be well :)"
