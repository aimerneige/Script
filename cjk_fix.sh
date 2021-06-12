# fix CJK font issue

read -p "Please edit the config file by hand. " tmp
sudo vim /etc/fonts/conf.avail/64-language-selector-prefer.conf
echo "\nPlease logout and sign again for it to take effect"
