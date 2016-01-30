#!/bin/bash

DOTFILES="${HOME}/.homesick/repos/dotfiles"

echo
echo 'Requirements:'
echo '  - npm'
echo '  - ant'
echo '  - grunt: npm install -g grunt-cli'
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

cd "${DOTFILES}/submodules/chrome/octotree/dist" && rm -rf 'chrome' && unzip 'chrome.zip' -d 'chrome'

echo
echo 'Build uBlock...'
echo

cd "${DOTFILES}/submodules/chrome/uBlock" && sh "${DOTFILES}/submodules/chrome/uBlock/tools/make-chromium.sh"

echo
echo 'Build Vimium...'
echo

cd "${DOTFILES}/submodules/chrome/vimium" && npm install && cake build

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
echo 'GitHub Notification Helper for Gmail: ~/.homesick/repos/dotfiles/submodules/chrome/github-gmail/chrome'
echo 'GitHub Notifier: ~/.homesick/repos/dotfiles/submodules/chrome/github-notifier-chrome/extension'
echo 'Github Omnibox: ~/.homesick/repos/dotfiles/submodules/chrome/Github-Omnibox'
echo 'GitHub PR Helper: ~/.homesick/repos/dotfiles/submodules/chrome/github-pr-helper'
echo 'Isometric Contributions: ~/.homesick/repos/dotfiles/submodules/chrome/isometric-contributions/chrome'
echo 'jetzt: ~/.homesick/repos/dotfiles/submodules/chrome/jetzt'
echo 'jQuery Audit: ~/.homesick/repos/dotfiles/submodules/chrome/jquery-audit'
echo 'MDN Search: ~/.homesick/repos/dotfiles/submodules/chrome/mdn-search'
echo 'Octotree: ~/.homesick/repos/dotfiles/submodules/chrome/octotree/dist/chrome'
echo 'Polymer Ready: ~/.homesick/repos/dotfiles/submodules/chrome/polymer-ready-chrome-extension/src'
echo 'Github Node.js require() navigator: ~/.homesick/repos/dotfiles/submodules/chrome/require-navigator'
echo 'Scrollbar diet: ~/.homesick/repos/dotfiles/submodules/chrome/scrollbar-diet'
echo 'Tab Snooze: ~/.homesick/repos/dotfiles/submodules/chrome/tab-snooze'
echo 'uBlock: ~/.homesick/repos/dotfiles/submodules/chrome/uBlock/dist/build/uBlock0.chromium'
echo 'Vimium: ~/.homesick/repos/dotfiles/submodules/chrome/vimium'
echo 'YouTube Center Developer Build: ~/.homesick/repos/dotfiles/submodules/chrome/YouTubeCenter/build/YouTubeCenter'
echo 'DevTools Theme: Zero Dark Matrix: ~/.homesick/repos/dotfiles/submodules/chrome/zero-base-themes/theme-extension'
echo 'GitHub Improved: ~/.homesick/repos/dotfiles/submodules/chrome/github-improved/chrome'
echo 'bl.ocks.org': ~/.homesick/repos/dotfiles/submodules/chrome/bl.ocks.org/chrome

