# Outside of home

This directory is used symlink files outside of the users home directory (f.ex: `/etc`).

## Adding links to the "outside"

~~~
cd ~/.homesick/repos/dotfiles/outside/links
ln -s /etc etc
~~~

## Adding files to be linked

~~~
cd ~/.homesick/repos/dotfiles/outside/linked
mkdir etc
cd etc
cp /etc/paths paths
cp /etc/shells shells
~~~~

## Symlinking files

~~~
mkdir -p ~/.homesick/repos/dotfiles/home/.homesick/repos/dotfiles/outside/links/etc
cd ~/.homesick/repos/dotfiles/home/.homesick/repos/dotfiles/outside/links/etc
ln -s ../../../../../../../outside/linked/etc/shells shells
ln -s ../../../../../../../outside/linked/etc/paths paths
sudo ~/.homeshick link
~~~
