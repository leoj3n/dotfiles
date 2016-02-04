#!/bin/bash

DOTFILES="${HOME}/.homesick/repos/dotfiles"

echo
echo 'Requirements:'
echo '  - npm'
echo '  - ant: brew cask install java; brew install ant'
echo '  - grunt: npm install -g grunt-cli'
echo '  - gulp: npm install --g gulp-cli'
echo '  - coffescript: npm install -g coffee-script'

echo
echo 'Updating Submodules...'
echo

cd "${DOTFILES}" && git submodule init && git submodule update --remote

echo
echo 'Setup GitHub Improved'
echo

cp "${DOTFILES}/submodules/chrome/github-improved/unfold_commit_history.user.js" "${DOTFILES}/submodules/chrome/github-improved/chrome"

echo
echo 'Build YouTubeCenter...'
echo

cd "${DOTFILES}/submodules/chrome/YouTubeCenter" && ant copy-chrome

echo
echo 'Unzip Octotree...'
echo

cd "${DOTFILES}/submodules/chrome/octotree" && npm install && gulp build

echo
echo 'Build uBlock...'
echo

cd "${DOTFILES}/submodules/chrome/uBlock" && sh "${DOTFILES}/submodules/chrome/uBlock/tools/make-chromium.sh"

echo
echo 'Build Vimium...'
echo

cd "${DOTFILES}/submodules/chrome/vimium" && npm install && cake build

echo
echo 'Build Text-Aid-Too...'
echo

cd "${DOTFILES}/submodules/chrome/text-aid-too" && make build && npm install -g .

echo
echo 'Build devtools theme (zero dark matrix)...'
echo

cd "${DOTFILES}/submodules/chrome/zero-base-themes" && npm install && grunt

echo
echo 'Finished updating submodules.'
echo

echo 'GitHub: Blame Parent: ~/.homesick/repos/dotfiles/submodules/chrome/blame_parent'
echo 'Avatars for Github: ~/.homesick/repos/dotfiles/submodules/chrome/chrome-github-avatars/app'
echo 'Tab Modifier: ~/.homesick/repos/dotfiles/submodules/chrome/chrome-tab-modifier/dist'
echo 'Github Annotator: ~/.homesick/repos/dotfiles/submodules/chrome/github-annotator'
echo 'GitHub Notifier: ~/.homesick/repos/dotfiles/submodules/chrome/github-notifier-chrome/extension'
echo 'Github Omnibox: ~/.homesick/repos/dotfiles/submodules/chrome/Github-Omnibox'
echo 'Isometric Contributions: ~/.homesick/repos/dotfiles/submodules/chrome/isometric-contributions/chrome'
echo 'jetzt: ~/.homesick/repos/dotfiles/submodules/chrome/jetzt'
echo 'jQuery Audit: ~/.homesick/repos/dotfiles/submodules/chrome/jquery-audit'
echo 'MDN Search: ~/.homesick/repos/dotfiles/submodules/chrome/mdn-search'
echo 'Octotree: ~/.homesick/repos/dotfiles/submodules/chrome/octotree/tmp/chrome'
echo 'Polymer Ready: ~/.homesick/repos/dotfiles/submodules/chrome/polymer-ready-chrome-extension/src'
echo 'Github Node.js require() navigator: ~/.homesick/repos/dotfiles/submodules/chrome/require-navigator'
echo 'Scrollbar diet: ~/.homesick/repos/dotfiles/submodules/chrome/scrollbar-diet'
echo 'Tab Snooze: ~/.homesick/repos/dotfiles/submodules/chrome/tab-snooze'
echo 'uBlock: ~/.homesick/repos/dotfiles/submodules/chrome/uBlock/dist/build/uBlock0.chromium'
echo 'Vimium: ~/.homesick/repos/dotfiles/submodules/chrome/vimium'
echo 'Text-Aid-Too: ~/.homesick/repos/dotfiles/submodules/chrome/text-aid-too/chrome-extension'
echo 'YouTube Center Developer Build: ~/.homesick/repos/dotfiles/submodules/chrome/YouTubeCenter/build/YouTubeCenter'
echo 'DevTools Theme: Zero Dark Matrix: ~/.homesick/repos/dotfiles/submodules/chrome/zero-base-themes/theme-extension'
echo 'GitHub Improved: ~/.homesick/repos/dotfiles/submodules/chrome/github-improved/chrome'
echo 'bl.ocks.org: ~/.homesick/repos/dotfiles/submodules/chrome/bl.ocks.org/chrome'
echo 'keysocket: ~/.homesick/repos/dotfiles/submodules/chrome/keysocket/extension'

