# home

Dotfiles are symlinked to `~` by homeshick.

This file, `README.md`, will be symlinked to `~/README.md`.

This document lists files in `~` that can be ignored, if they exist.

> “Look again at that dot. That's here. That's home. That's us. On it everyone you love, everyone you know, everyone you ever heard of, every human being who ever was, lived out their lives. The aggregate of our joy and suffering, thousands of confident religions, ideologies, and economic doctrines, every hunter and forager, every hero and coward, every creator and destroyer of civilization, every king and peasant, every young couple in love, every mother and father, hopeful child, inventor and explorer, every teacher of morals, every corrupt politician, every "superstar," every "supreme leader," every saint and sinner in the history of our species lived there--on a mote of dust suspended in a sunbeam.”
>
> ― Carl Sagan, Pale Blue Dot: A Vision of the Human Future in Space

## Table of Contents

* [Symlink](#dotfiles)
* [Ignore](#ignore)
  - [Useless](#useless)
  - [Empty](#empty)
  - [Other](#other)

## Symlink

_Symlink_ section manually reviewed for validity on __May 9, 2014__.

### [.abook](.abook)

CLI address book config.

### [.asciinema](.asciinema)

Terminal recording/uploading service config.

### [.atom](.atom)

Atom.app packages, configs and customizations/hacks.

### [.calcurse](.calcurse)

CLI calculator data and config.

### [.cheatorious](.cheatorious)

CLI searchable cheatsheets and config.

### [.cmus](.cmus)

CLI music player autosave config.

### [.codeintell](.codeintell)

[SublimeCodeIntel][] config and database.

### [.composer](.composer)

PHP package manager secret GitHub auth and config.

### [.config](.config)

Common config directory. See [.config/README.md](.config/README.md).

### [.cpan](.cpan)

Comprehensive Perl Archive Network config and sources.

### [.filezilla](.filezilla)

GUI FTP bookmarks, config, etc.

### [.freemind](.freemind)

Mind mapping config.

### [.git_template](.git_template)

Original effortless ctags git hooks. @TODO: Remove/delete.

### [.gnupg](.gnupg)

GNU Privacy Guard pubring, secring and config.

### [.go](.go)

Google Go list of installed packages.

### [.gush](.gush)

Gush PHP secret GitHub auth and htaccess.

### [.i2p](.i2p)

Anonymous Network configuration files.

### [.irssi](.irssi)

CLI IRC chat client theme, scripts and config.

### [.katon](.katon)

Daemon to automatically start Node projects; symlinks to project directories.

### [.keepassx](.keepassx)

Password manager config.

### [.madeye](.madeye)

Pair programming secret keys and project record.

### [.mplayer](.mplayer)

Media player config.

### [.nave](.nave)

Virtual Environments for Node run commands.

### [.openshift](.openshift)

Server config and token.

### [.pentadactyl](.pentadactyl)

Firefox add-on color and info.

### [.purple](.purple)

Chat accounts, buddy list, prefs, statuses, capabilities, certs, icons, & logs.

### [.putty](.putty)

Putty SSH host keys.

### [.retroshare](.retroshare)

PGP keyrings and trustdb.

### [.rvm](.rvm)

Ruby versions/gems sources and cofig.

### [.snd](.snd)

Custom directory for storing custom sounds used in CLI and GUI apps.

### [.ssh](.ssh)

System SSH secret key, public key, known hosts and config.

### [.sublime-project](.sublime-project)

Custom directory for storing Sublime Text project files.

### [.subversion](.subversion)

System SVN config and secret server config.

### [.task](.task)

Task management data.

### [.tilemill](.tilemill)

Interactive maps config.

### [.vifm](.vifm)

File manager theme and config.

### [.vim](.vim)

Network history and plugin bundles.

### [.weechat](.weechat)

CLI IRC chat client plugins and config.

### [.wireshark](.wireshark)

Network protocol analyzer config.

### [bin](bin)

Binary executables.

### [.asana-client](.asana-client)

CLI Asana API key secret.

### [.asepriterc](.asepriterc)

Sprite editor config.

## Ignore

_Ignore_ section manually reviewed for validity on __May 9, 2014__.

### Useless

These dotfiles contain no important data or configuration.

* .berkshelf: Chef cookbook dependency manager downloads.
* .bower: Only cache data.
* .cache: Common cache dir.
* .cocoapods: Objective-C dependency manager repos.
* .cordova: Mobile development library release downloads.
* .cpanm: Package managed sources.
* .cups: Printer management settings.
* .dia, .dia-etc: Dia.app stuff.
* .distlib: Python related.
* .dropbox, .dropbox-master: Database stuff.
* .fontcache: OS X cache directory.
* .gconf, .gconfd: GConf system for storing application preferences.
* .gem: OS X Ruby gems.
* .git-template-with-git-hooks: Git hooks --installglobal hack files.
* .gstreamer-0.10: Open Source Multimedia Framework registry.
* .homesick: Homeshick castles.
* .icons: GTK icons.
* .idlerc: Python IDLE stuff.
* .lein: Leiningen for Clojure self-use directory.
* .local: Common directory for temporary history and database files.
* .m2: Apache Maven repos.
* .matplotlib: Python 2D plotting library cache.
* .mediafire: File sharing logs and screenshots.
* .meteor: Framework repos.
* .meteorite: Package manager repos.
* .mutt: Email certificates and cache.
* .node-gyp: Node.js native addon build tool sources.
* .npm: Package manager downloadeds.
* .perlbrew: Perl installation management tool init file.
* .pip: Python packages log.
* .plugman: Apache Cordova plugins cache and log.
* .pow: Symlink to `~/Library/Application Support/Pow/Hosts`
* .python-eggs: Python eggs.
* .qualculate: Fetched conversion rates.
* .rbenv: Ruby environment versions sources.
* .spumux: Subfont for MPlayer generated fonts and files.
* .swt: Standard Widget Toolkit Java Native/Shared Library files.
* .vagrant.d: Development environments files.
* .vim-anywhere: VimAnywhere source.
* .vim-fuf-data: Vim Fuzzy Finder version.
* .w3m: CLI web browser history.
* .wireshark-etc: Network protocol analyzer generated files.
* .zcompcache: Zsh completion cache.
* FrostWire: Torrent data.
* gogs-repositories: Self Hosted Git Service repos.
* Google Drive: Synced files.
* Mail: CLI email management databases.
* MediaFire: Synced files.
* ownCloud: Synced files.
* perl5: Perl 5 and perlbrew libs/sources.
* SparkleShare: Synced repos.
* VirtualBox VMs: Virtual machine images.

### Empty

These directories are empty (or contain yet more empty directories).

* .gnome2
* .gnome2_private
* .lightpaper
* .nvm
* .plex
* .thumb

### Other

These dotfiles are managed outside of the `dotfiles` and `notfiles` castles.

* .zprezto: @leoj3n's fork of prezto.

[SublimeCodeIntel]: https://github.com/SublimeCodeIntel/SublimeCodeIntel
