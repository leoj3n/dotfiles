#!/bin/bash

DOTFILES="${HOME}/.homesick/repos/dotfiles"

echo
echo 'Requirements:'
echo '  - npm'
echo '  - ant: brew cask install java; brew install ant'
echo '  - grunt: npm install -g grunt-cli'
echo '  - gulp: npm install -g gulp-cli'
echo '  - bower: npm install -g bower'
echo '  - coffescript: npm install -g coffee-script'
echo '  - pync: pip install pync'

echo
echo 'Updating Submodules...'
echo

cd "${DOTFILES}" && git submodule init && git submodule update --remote --force

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
echo 'Build OctoLinker...'
echo

cd "${DOTFILES}/submodules/chrome/OctoLinker" && npm install && npm run chrome-build

echo
echo 'Build OctoEdit...'
echo

cd "${DOTFILES}/submodules/chrome/OctoEdit" && npm install && npm run build

echo
echo 'Build Emmet Re:view...'
echo

cd "${DOTFILES}/submodules/chrome/re-view-chrome" && npm install && grunt build

echo
echo 'Build CKP...'
echo

cd "${DOTFILES}/submodules/chrome/CKP" && npm install && bower install && grunt updatelib

echo
echo 'Build Octo Preview...'
echo

cd "${DOTFILES}/submodules/chrome/octo-preview" && npm install && npm run build-chrome

echo
echo 'Build GitHub Awesome Autocomplete (fail is OK)...'
echo

cd "${DOTFILES}/submodules/chrome/octo-preview" && npm install && grunt

echo
echo 'Build iZoom...'
echo

cd "${DOTFILES}/submodules/chrome/iZoom" && npm install && gulp unpackage_uglify

echo
echo 'Build Panel Tabs...'
echo

cd "${DOTFILES}/submodules/chrome/iZoom" && npm install && bower install && gulp build

echo
echo 'Build Streamkeys...'
echo

cd "${DOTFILES}/submodules/chrome/streamkeys" && npm install && grunt dev

echo
echo 'Finished updating submodules.'
echo

echo 'Avatars for Github: ~/.homesick/repos/dotfiles/submodules/chrome/chrome-github-avatars/app'
echo 'bl.ocks.org: ~/.homesick/repos/dotfiles/submodules/chrome/bl.ocks.org/chrome'
echo 'CKP - KeePass integration for Chrome: ~/.homesick/repos/dotfiles/submodules/chrome/CKP'
echo 'CLUT: Cycle Last Used Tabs: ~/.homesick/repos/dotfiles/submodules/chrome/clut-chrome-extension'
echo 'Contributors on Github: ~/.homesick/repos/dotfiles/submodules/chrome/contributors-on-github/src'
echo 'DevTools Theme: Zero Dark Matrix: ~/.homesick/repos/dotfiles/submodules/chrome/zero-base-themes/theme-extension'
echo 'Dim Files on GitHub: ~/.homesick/repos/dotfiles/submodules/chrome/dim-files-on-github/extension'
echo 'Emmet Re:view: ~/.homesick/repos/dotfiles/submodules/chrome/re-view-chrome/out'
echo 'frame by frame: ~/.homesick/repos/dotfiles/submodules/chrome/frame-by-frame/extension'
echo 'GitHub Awesome Autocomplete: ~/.homesick/repos/dotfiles/submodules/chrome/github-awesome-autocomplete/build/unpacked-prod'
echo 'GitHub Categoric: ~/.homesick/repos/dotfiles/submodules/chrome/categoric'
echo 'Github diff helper: ~/.homesick/repos/dotfiles/submodules/chrome/Github-diff-extension'
echo 'GitHub Extended: ~/.homesick/repos/dotfiles/submodules/chrome/github-extended/app'
echo 'GitHub Highlight Selected: ~/.homesick/repos/dotfiles/submodules/chrome/github-highlight-selected'
echo 'GitHub Improved: ~/.homesick/repos/dotfiles/submodules/chrome/github-improved/chrome'
echo 'Github Node.js require() navigator: ~/.homesick/repos/dotfiles/submodules/chrome/require-navigator'
echo 'GitHub Notifier: ~/.homesick/repos/dotfiles/submodules/chrome/github-notifier-chrome/extension'
echo 'Github Omnibox: ~/.homesick/repos/dotfiles/submodules/chrome/Github-Omnibox'
echo 'Gitter Helper for GitHub: ~/.homesick/repos/dotfiles/submodules/chrome/gitter-chrome'
echo 'GitHub Hovercard: ~/.homesick/repos/dotfiles/submodules/chrome/github-hovercard/extensions/chrome'
echo 'Isometric Contributions: ~/.homesick/repos/dotfiles/submodules/chrome/isometric-contributions/chrome'
echo 'iZoom: ~/.homesick/repos/dotfiles/submodules/chrome/iZoom/dist'
echo 'jetzt: ~/.homesick/repos/dotfiles/submodules/chrome/jetzt'
echo 'jQuery Audit: ~/.homesick/repos/dotfiles/submodules/chrome/jquery-audit'
echo 'keysocket: ~/.homesick/repos/dotfiles/submodules/chrome/keysocket/extension'
echo 'Lovely forks: ~/.homesick/repos/dotfiles/submodules/chrome/lovely-forks'
echo 'MDN Search: ~/.homesick/repos/dotfiles/submodules/chrome/mdn-search'
echo 'npm-hub: ~/.homesick/repos/dotfiles/submodules/chrome/npm-hub/extension'
echo 'OctoEdit: ~/.homesick/repos/dotfiles/submodules/chrome/OctoEdit/dist'
echo 'OctoLinker: ~/.homesick/repos/dotfiles/submodules/chrome/OctoLinker/dist'
echo 'Octo Mate: ~/.homesick/repos/dotfiles/submodules/chrome/chrome-github-mate'
echo 'Octo Preview: ~/.homesick/repos/dotfiles/submodules/chrome/octo-preview/dist/chrome'
echo 'Octotree: ~/.homesick/repos/dotfiles/submodules/chrome/octotree/tmp/chrome'
echo 'Panel Tabs: ~/.homesick/repos/dotfiles/submodules/chrome/polymer-ready-chrome-extension/src'
echo 'Polymer Ready: ~/.homesick/repos/dotfiles/submodules/chrome/polymer-ready-chrome-extension/src'
echo 'Refined Twitter: ~/.homesick/repos/dotfiles/submodules/chrome/refined-twitter/extension'
echo 'Scrollbar diet: ~/.homesick/repos/dotfiles/submodules/chrome/scrollbar-diet'
echo 'Show All GitHub Issues: ~/.homesick/repos/dotfiles/submodules/chrome/show-all-github-issues'
echo 'Show Title Tag: ~/.homesick/repos/dotfiles/submodules/chrome/ChromeShowTitleTag'
echo 'Streamkeys: ~/.homesick/repos/dotfiles/submodules/chrome/streamkeys/build/unpacked-dev'
echo 'SnappySnippet: ~/.homesick/repos/dotfiles/submodules/chrome/SnappySnippet'
echo 'TabCopy: ~/.homesick/repos/dotfiles/submodules/chrome/TabCopy/code'
echo 'Tab Extract: ~/.homesick/repos/dotfiles/submodules/chrome/Tab-Extract'
echo 'Tab Modifier: ~/.homesick/repos/dotfiles/submodules/chrome/chrome-tab-modifier/dist'
echo 'Tab Snooze: ~/.homesick/repos/dotfiles/submodules/chrome/tab-snooze'
echo 'Text-Aid-Too: ~/.homesick/repos/dotfiles/submodules/chrome/text-aid-too/chrome-extension'
echo 'The Great Suspender: ~/.homesick/repos/dotfiles/submodules/chrome/thegreatsuspender/src'
echo 'uBlock: ~/.homesick/repos/dotfiles/submodules/chrome/uBlock/dist/build/uBlock0.chromium'
echo 'Vimium: ~/.homesick/repos/dotfiles/submodules/chrome/vimium'
echo 'Window Size Helper: ~/.homesick/repos/dotfiles/submodules/chrome/window-size-helper'
echo 'YouTube Center Developer Build: ~/.homesick/repos/dotfiles/submodules/chrome/YouTubeCenter/build/YouTubeCenter'
echo 'YouTube GitHub Markdown Button: ~/.homesick/repos/dotfiles/submodules/chrome/chrome-ext-ytghmd'

