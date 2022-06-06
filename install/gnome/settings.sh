#!/usr/bin/env bash

echo "Applying GNOME settings"

echo " - keybindings"

gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-group "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-group-backward "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "[]"
gsettings set org.gnome.shell.keybindings toggle-application-view "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys logout "['<Control><Super>Delete']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['<Control><Super><Shift>Down']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "['<Control><Super><Shift>Up']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Super>Above_Tab', '<Control><Super>Down']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Shift><Super>Above_Tab', '<Control><Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>d']"
gsettings set org.gnome.desktop.wm.keybindings cycle-windows "['<Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "['<Shift><Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Alt>F11']"
gsettings set org.gnome.desktop.wm.keybindings close "['<Shift><Super>q']"
# Custom keybindings.
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shutdown/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/gtmux/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/workspace/']"
# Shutdown computer.
# Native option:
# gsettings set org.gnome.settings-daemon.plugins.media-keys power "['<Control><Super>End']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shutdown/ name "shutdown"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shutdown/ command "$DOTFILES_PATH/bin/shutdown.sh"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shutdown/ binding "<Primary><Super>End"
# Start tmux in full screen.
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/gtmux/ name "gtmux"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/gtmux/ command "$DOTFILES_PATH/bin/gtmux.sh"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/gtmux/ binding "<Super>t"
# Start workspace.
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/workspace/ name "workspace"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/workspace/ command "$DOTFILES_PATH/bin/workspace.sh"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/workspace/ binding "<Super>w"

echo " - keyboard"

gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'bg+phonetic')]"
gsettings set org.gnome.desktop.input-sources per-window true
gsettings set org.gnome.desktop.peripherals.keyboard repeat true
gsettings set org.gnome.desktop.peripherals.keyboard delay 345
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 20
# Mouse keys.
gsettings set org.gnome.desktop.a11y.keyboard mousekeys-enable true
gsettings set org.gnome.desktop.a11y.keyboard mousekeys-max-speed 1100
gsettings set org.gnome.desktop.a11y.keyboard mousekeys-init-delay 60
gsettings set org.gnome.desktop.a11y.keyboard mousekeys-accel-time 600
gsettings set org.gnome.desktop.a11y.keyboard mousekeys-accel-time 600

echo " - mouse"

gsettings set org.gnome.desktop.peripherals.mouse speed 1.0

echo " - night light"

gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-automatic false
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-from 5
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-to 5
gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature 2248

echo " - power"

gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'suspend'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 5400
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'suspend'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-timeout 3600

echo " - appearance"

gsettings set org.gnome.desktop.interface icon-theme "Numix-Circle"
gsettings set org.gnome.desktop.interface cursor-theme "Yaru"
gsettings set org.gnome.desktop.interface gtk-theme "Yaru-dark"
gsettings set org.gnome.desktop.interface cursor-size 64
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.interface clock-format '24h'
gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.desktop.interface document-font-name 'Sans 12'
gsettings set org.gnome.desktop.interface font-name 'Ubuntu 12'

echo " - privacy"

gsettings set org.gnome.desktop.privacy send-software-usage-stats false
gsettings set org.gnome.desktop.privacy report-technical-problems false

echo " - formats"

gsettings set org.gnome.system.locale region 'en_GB.UTF-8'

echo " - file manager"

gsettings set org.gtk.Settings.FileChooser show-hidden true

echo " - favorite applications"

gsettings set org.gnome.shell favorite-apps "['google-chrome.desktop', 'org.gnome.Terminal.desktop', 'sublime_text.desktop']"