set -s

# Update System
dnf update -y
# Install Software From dnf
dnf install -y util-linux-user
dnf install -y git
dnf install -y curl
dnf install -y wget
dnf install -y vim
dnf install -y neovim
dnf install -y zsh
dnf install -y ranger
dnf install -y ncdu
dnf install -y tree
dnf install -y htop
dnf install -y neofetch
dnf install -y lsd
dnf install -y bat
dnf install -y tldr
dnf install -y python-is-python3
dnf install -y python2
dnf install -y python3-pip
dnf install -y java-17-openjdk
dnf install -y java-17-openjdk-headless
dnf install -y java-17-openjdk-devel
dnf install -y kitty
dnf install -y alacritty
dnf install -y gnome-tweak-tool
dnf install -y hugo
dnf install -y onedrive
# Setup RPM Fusion
dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf update -y
# Install From RPM Fusion
dnf install -y ffmpeg
# Install Lazygit
dnf copr enable atim/lazygit -y
dnf install lazygit -y
# Install github-cli
dnf install 'dnf-command(config-manager)' -y
dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo -y
dnf install gh -y
# Setup Flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# Install Software From Flatpak
flatpak install flathub com.spotify.Client -y
flatpak install flathub com.valvesoftware.Steam -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub org.telegram.desktop -y
flatpak install flathub org.videolan.VLC -y
flatpak install flathub org.kde.okular -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub org.gimp.GIMP -y
flatpak install flathub org.onlyoffice.desktopeditors -y
flatpak install flathub org.qbittorrent.qBittorrent -y
flatpak install flathub com.nextcloud.desktopclient.nextcloud -y
flatpak install flathub org.remmina.Remmina -y
flatpak install flathub org.gnome.GHex -y
flatpak install flathub com.getmailspring.Mailspring -y
flatpak install flathub io.typora.Typora -y
flatpak install flathub org.gnome.Extensions -y
flatpak install flathub io.github.Fndroid.clash_for_windows -y
flatpak install flathub com.github.GradienceTeam.Gradience -y
flatpak install flathub com.google.AndroidStudio -y
flatpak install flathub net.cozic.joplin_desktop -y
flatpak install flathub com.gitlab.j0chn.nextcloud_password_client -y
# flatpak install flathub com.todoist.Todoist -y
# flatpak install flathub com.rafaelmardojai.Blanket -y
# flatpak install flathub org.kde.krita -y
# flatpak install flathub org.kde.kdenlive -y
# flatpak install flathub com.github.johnfactotum.Foliate -y
# flatpak install flathub com.github.alainm23.planner -y

# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm -O /tmp/chrome/chrome.rpm
dnf install -y /tmp/chrome/chrome.rpm
rm /tmp/chrome/chrome.rpm
# Install Linux QQ Client
wget https://dldir1.qq.com/qqfile/qq/QQNT/c005c911/linuxqq_3.0.0-571_x86_64.rpm -O /tmp/qq/linuxqq.rpm
dnf install -y /tmp/qq/linuxqq.rpm
rm /tmp/qq/linuxqq.rpm
# Install VSCode
wget https://code.visualstudio.com/sha/download?build=stable&os=linux-rpm-x64 -O /tmp/code/vscode.rpm
dnf install -y /tmp/code/vscode.rpm
rm /tmp/code/vscode.rpm

# Install HMCL

# Install Go Binary
wget https://go.dev/dl/go1.20.1.linux-amd64.tar.gz /tmp/godev/go1.20.1.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf /tmp/godev/go1.20.1.linux-amd64.tar.gz
rm /tmp/godev/go1.20.1.linux-amd64.tar.gz

# Import Authorized Public Keys
# mkdir -p ~/.ssh
# wget https://aimerneige.com/authorized_keys -O ~/.ssh/authorized_keys
# chmod 600 ~/.ssh/authorized_keys
