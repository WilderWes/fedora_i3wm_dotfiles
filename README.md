# Fedora Dotfiles

**Author:** Weston Preising

Fedora i3 spin config for development and guitar practice/recording. Emphasis on vim-based applications when possible since vim is fun. A profound thank you to all open source contributors—thank you for making Linux accessible and enjoyable :).

## Main Fedora i3wm Setup

- [Fedora 43 Post Install Guide](https://github.com/devangshekhawat/Fedora-43-Post-Install-Guide) — essential post-install steps
- [Picom](https://github.com/yshui/picom) compositor with EGL backend
- [autorandr](https://github.com/phillipberndt/autorandr) — automatic display configuration based on connected hardware
- [ly](https://github.com/fairyglade/ly) — TUI display manager
- [lxqt-policykit](https://github.com/lxqt/lxqt-policykit)
- [dark theme reddit](<https://www.reddit.com/r/hyprland/comments/1h4abmt/how_do_i_apply_dark_theme/>)
  - [qt5ct](https://github.com/desktop-app/qt5ct) [qt6ct](https://github.com/trialuser02/qt6ct) [adw-gtk3-theme](https://github.com/lassekongo83/adw-gtk3)
  - `echo "QT_QPA_PLATFORMTHEME,qt6ct" >> /etc/environment`
  - copy my gtk-* files to ~/.config
- change fedora background
  - `sudo cp <your image> /usr/share/backgrounds/default.jxl`

## Terminal & Shell

- [kitty](https://sw.kovidgoyal.net/kitty/) with Fira Code
- [oh-my-zsh](https://ohmyz.sh/) with plugins:
  - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
  - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
  - [zsh-completions](https://github.com/zsh-users/zsh-completions)
  - [gradle-completion](https://github.com/gradle/gradle-completion)
  - [zsh-nvm](https://github.com/lukechilds/zsh-nvm)
- [starship](https://starship.rs/) prompt
- [eza](https://github.com/eza-community/eza) as ls replacement
- [fastfetch](https://github.com/fastfetch-cli/fastfetch) system info

## Editor & File Management

- [Neovim](https://neovim.io/) via [LazyVim](https://www.lazyvim.org/)
- [yazi](https://github.com/sxyazi/yazi) — terminal file manager
- [zathura](https://pwmt.org/projects/zathura/) with [zathura-pdf-poppler](https://pwmt.org/projects/zathura-pdf-poppler/) for PDF viewing

## Browsers

- [Firefox](https://www.mozilla.org/en-US/firefox/)
  - [Dark Reader](https://darkreader.org/)
  - [SponsorBlock](https://sponsor.ajay.app/)
  - [Unhook](https://unhook.app/)
  - [uBlock Origin](https://ublockorigin.com/)
  - [1Password](https://1password.com/downloads/browser-extension)
- [qutebrowser](https://qutebrowser.org/) — keyboard-driven browser, used strictly for [Markdown Preview](https://github.com/iamcco/markdown-preview.nvim)

## Communication

- [Discord](https://discord.com/)

## Development Setup and Tools

- [Fedora Installing Java](https://docs.fedoraproject.org/en-US/quick-docs/installing-java/)
- [Fedora LaTeX / TeXLive](https://docs.fedoraproject.org/en-US/neurofedora/latex/)
- [Docker on Fedora](https://docs.docker.com/engine/install/fedora/)
  - [Post-Install (non-root setup)](https://docs.docker.com/engine/install/linux-postinstall/)
  - [Shell Autocompletion](https://docs.docker.com/compose/completion/)
- [Clang-Format Style Options](https://clang.llvm.org/docs/ClangFormatStyleOptions.html)
- [pandoc](https://pandoc.org/) — file converter
- [img2pdf](https://pypi.org/project/img2pdf/) — lossless image to PDF
- [cpdf](https://github.com/coherentgraphics/cpdf-binaries) — PDF manipulation CLI
- [tldr](https://github.com/tldr-pages/tldr) — quick cli tips n' tricks
- [zeal](https://zealdocs.org/) — offline coding reference docs
- [SDKMAN](https://sdkman.io/) for JDK management (Gradle)
- [w3m](https://w3m.sourceforge.net/) — text-based browser
- [pdftotext](https://poppler.freedesktop.org/) — PDF text extraction
- [bear](https://github.com/rizsotto/Bear) — reads compile commands from make and adds hints to clangd
- [esp-idf](https://github.com/espressif/esp-idf) toolchain (not currently in use, but planning ESP32 projects)
- [ripgrep-all](https://github.com/phiresky/ripgrep-all)

## Music Production / Guitar

- [wine-tkg](https://copr.fedorainfracloud.org/coprs/patrickl/wine-tkg/) — sets up `realtime-setup`, `wineasio` and works with Yousician app
- [Transcribe!](https://www.seventhstring.com/) — slow down audio, loop sections, transcribe by ear
- [yt-dlp](https://github.com/yt-dlp/yt-dlp) — download videos/audio from YouTube
- [DaVinci Resolve Studio](https://www.blackmagicdesign.com/products/davinciresolve) — video editing
  - [davinci-helper](https://github.com/H3rz3n/davinci-helper) — Fedora installation/setup assistant
  - **Fedora 43 fix:** davinci-helper doesn't currently launch on F43; see [howto-davinci-resolve-fedora-43](https://github.com/gerelef/howto-davinci-resolve-fedora-43) for a workaround
- [OBS Studio](https://obsproject.com/) with [DroidCam](https://www.dev47apps.com/)
- [Bitwig Studio](https://www.bitwig.com/) (Flatpak)
- [Handbrake](https://handbrake.fr/) — video transcoding
- [VLC](https://www.videolan.org/vlc/)

- [LocalSend](https://localsend.org/) — cross-platform file sharing (Flatpak)
    [firewall-fix](https://github.com/localsend/localsend/issues/2592#issuecomment-3102019405)
    `sudo firewall-cmd --get-active-zones`
    `sudo firewall-cmd --zone=public --add-port=53317/tcp --permanent`
    `sudo firewall-cmd --zone=public --add-port=53317/udp --permanent`
    `sudo firewall-cmd --reload`

## AI Usage

- Claude occasionally used in a Socratic tutor capacity and to help debug code if I'm incredibly stuck
- Claude also used to help with READMD.md, and autorandr postswitch script specifically.
