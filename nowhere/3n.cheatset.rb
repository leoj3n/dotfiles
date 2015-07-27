cheatsheet do
  title '3n'
  docset_file_name '3n'
  keyword '3n'

  # An optional resources folder which can contain images or anything else
  # resources 'resources_dir'

  introduction "@leoj3n's Dash.app cheatsheet"

  category do
    id 'Alfred.app'

    entry do
      command 'FN+SPACE'
      name 'Alfred Hotkey — Show Alfred'
    end
  end

  category do
    id 'SwitchResX Control.app'

    entry do
      command 'CTRL+ESC'
      name 'Quit SwitchResX Daemon'
    end
    entry do
      command 'CMD+F12'
      name 'Open SwitchResX Control'
    end
  end

  category do
    id 'PCKeyboardHack.app'

    entry do
      command 'CAPSLOCK'
      name 'DELTE'
      notes 'Quick home-row delete with left pinky.'
    end
  end

  category do
    id 'KeyRemap4MacBook.app'

    entry do
      name 'Keybaord remappings'
      notes 'KeyRemap4MacBook.app allows configution of the keyboard.'
    end

    entry do
      command 'fn'
      name 'SHIFT+CTRL+ALT+CMD'
      notes 'Or the HYPER key!'
    end
    entry do
      command 'SHIFT+ESC'
      name 'CAPSLOCK'
      notes 'Because CAPSLOCK bound to delete (see PCKeyboardHack.app).'
    end
    entry do
      command 'RCMD+LCMD'
      name 'ESC'
      notes 'Quick escape sequence (right must come first).'
    end
    entry do
      command 'CTRL+CTRL'
      name 'CTRL+SPACE'
      notes 'Shortcut to launch Spotlight/Alfred/Quicksilver.'
    end
    entry do
      command 'SPACE+asdfghjkl'
      name '1234567890'
      notes 'Press-and-hold SPACE to turn home-row into numbers.'
    end
    entry do
      command 'ALT+V'
      name 'Enter/Exit normal mode (Ubiquitous Vim Bindings).'
      notes 'To exit normal mode, use "i".'
    end
    entry do
      command 'CTRL+['
      name 'Enter normal mode (VIM Emulation).'
      notes 'To exit normal mode, use "i".'
    end
  end

  category do
    id 'Launch Applications'

    entry do
      name 'Keyboard and trackpad gestures to launch applications.'
      notes 'Quicksilver.app and BetterTouchTool.app power these shortcuts and gestures.'
    end

    entry do
      command 'HYPER+~'
      name 'Dash.app'
    end
    entry do
      command 'HYPER+F'
      name 'Firefox.app'
    end
    entry do
      command 'HYPER+E'
      command 'fn+⇓'
      name 'Gitter.app'
    end
    entry do
      command 'HYPER+A'
      command 'fn+⇒'
      command 'fn+⇘'
      name 'Google Chrome Canary.app'
    end
    entry do
      command 'HYPER+Q'
      command 'ALT+~'
      name 'iTerm Overlay'
    end
    entry do
      command 'HYPER+X'
      command 'fn+⇖'
      command 'fn+⇑'
      name 'iTerm.app'
    end
    entry do
      command 'HYPER+D'
      name 'iTerm.app'
    end
    entry do
      command 'HYPER+C'
      command 'HYPER+W'
      command 'fn+⇙'
      name 'nvALT.app'
    end
    entry do
      command 'HYPER+Z'
      command 'fn+⇗'
      name 'Path Finder.app'
    end
    entry do
      command 'CTRL+SPACE'
      name 'Quicksilver.app'
    end
    entry do
      command 'HYPER+S'
      command 'fn+⇐'
      name 'Sublime Text.app'
    end
    entry do
      command 'HYPER+V'
      name 'Vienna.app'
    end
    entry do
      command 'HYPER+M'
      name 'MirrorDisplays.app'
    end
    entry do
      command 'HYPER+P'
      name 'Photoshop.app'
    end
  end

  category do
    id 'Quicksilver.app'

    entry do
      command 'HYPER+1'
      name 'Search Yubnub'
    end
    entry do
      command 'HYPER+2'
      name 'Search DuckDuckGo'
    end
    entry do
      command 'HYPER+3'
      name 'Search Google'
    end
  end

  category do
    id 'BetterTouchTool.app'

    entry do
      name 'Global'
      notes 'Rebinds keyboard keys globally.'
    end

    entry do
      command 'ALT+H'
      name 'LEFT'
    end
    entry do
      command 'ALT+J'
      name 'DOWN'
    end
    entry do
      command 'ALT+K'
      name 'UP'
    end
    entry do
      command 'ALT+L'
      name 'RIGHT'
    end
    entry do
      command 'SHIFT+ALT+H'
      name 'ALT+LEFT'
    end
    entry do
      command 'SHIFT+ALT+L'
      name 'ALT+RIGHT'
    end
    entry do
      command 'CMD+CTRL+J'
      name 'SHIFT+CMD+]'
    end
    entry do
      command 'CMD+CTRL+K'
      name 'SHIFT+CMD+['
    end
    entry do
      command 'CMD+CTRL+H'
      name 'CTRL+LEFT'
    end
    entry do
      command 'CMD+CTRL+L'
      name 'CTRL+RIGHT'
    end
    entry do
      command 'ALT+SPACE'
      name 'ENTER'
    end
    entry do
      command 'ALT+B'
      name 'CTRL+F3 (Toggle Dock)'
    end
    entry do
      command 'ALT+CTRL+X'
      name 'CMD+W (Close Window)'
    end
    entry do
      command 'SHIFT+ALT+X'
      name 'ESC'
    end
    entry do
      command 'ALT+G'
      name 'CMD+LEFT'
    end
    entry do
      command 'ALT+;'
      name 'CMD+RIGHT'
    end
    entry do
      command 'ALT+I'
      name 'HOME'
    end
    entry do
      command 'ALT+U'
      name 'END'
    end
    entry do
      command 'HYPER+L'
      name 'Lock Screen'
    end
    entry do
      command 'HYPER+B'
      name 'Enable/Disable BTT'
    end

    entry do
      name 'Finder.app'
      notes 'Only apply when Finder is open.'
    end

    entry do
      command 'CMD+SHIFT+]'
      name 'CTRL+TAB (Next tab)'
    end
    entry do
      command 'CMD+SHIFT+['
      name 'SHIFT+CTRL+TAB (Previous tab)'
    end
  end

  category do
    id 'Moom.app'

    entry do
      command 'CMD+ALT+W'
      name 'Laptop preset'
    end
    entry do
      command 'CMD+ALT+O'
      name 'Office preset'
    end
    entry do
      command 'CMD+CTRL+W'
      name 'Start Mooming'
    end

    entry do
      name 'Mooming'
      notes 'The following apply when "Mooming".'
    end

    entry do
      command 'DIRECTION'
      name 'Move up/down/left/right'
    end
    entry do
      command 'ALT+DIRECTION'
      name 'Shrink up/down/left/right'
    end
    entry do
      command 'CTRL+DIRECTION'
      name 'Grow up/down/left/right'
    end
    entry do
      command 'SPACE'
      name 'Fill screen'
    end
    entry do
      command 'CMD+DIRECTION'
      name 'Half up/down/left/right'
    end
  end

  category do
    id 'Keymo.app'

    entry do
      command 'CTRL+ALT+JKHL'
      name 'Move mouse'
    end
    entry do
      command 'CTRL+ALT+SHIFT+JKHL'
      name 'Scroll'
    end
    entry do
      command 'ALT+COMMAND+SPACE'
      name 'Move to center'
    end
    entry do
      command 'COMMAND+SPACE'
      name 'Move by Division'
      notes 'Use arrows or HJKL.'
    end
  end

  category do
    id 'Witch.prefpane'

    entry do
      command 'ALT+TAB'
      name 'All applications forward'
    end
    entry do
      command 'SHIFT+ALT+TAB'
      name 'All applications backward'
    end
  end

  category do
    id 'Cursorcerer.prefpane'

    entry do
      command 'HYPER+K'
      name 'Show/hide cursor'
    end
  end

  category do
    id 'AccessMenuBarApps.app'

    entry do
      command 'HYPER+6'
      name 'Show/hide application menu bar items'
    end
  end

  category do
    id 'AntiRSI.app'

    entry do
      command 'CMD+B'
      name 'Take Break Now'
    end
    entry do
      command 'CMD+R'
      name 'Reset Session Time'
    end
  end

  category do
    id 'MailMate.app'

    entry do
      command 'SHIFT+CMD+R'
      name 'Reply to all'
    end
  end

  category do
    id 'Path Finder.app'

    entry do
      command 'SHIFT+CMD+N'
      name 'New Folder'
    end
    entry do
      command 'CTRL+CMD+N'
      name 'New Folder with Selection'
    end
    entry do
      command 'ALT+CMD+N'
      name 'New File'
    end
    entry do
      command 'CMD+I'
      name 'Get Info'
    end
    entry do
      command 'CMD+L'
      name 'Make Alias'
    end
    entry do
      command 'ALT+CMD+L'
      name 'Make Symbolic Link'
    end
    entry do
      command 'CTRL+CMD+F'
      name 'Reveal in Finder'
    end

    entry do
      name 'View'
      notes 'View files mode.'
    end

    entry do
      command 'CMD+1'
      name 'as Icons'
    end
    entry do
      command 'CMD+2'
      name 'as List'
    end
    entry do
      command 'CMD+3'
      name 'as Columns'
    end
    entry do
      command 'SHIFT+CMD+I'
      name 'Show Package Contents'
    end
    entry do
      command 'SHIFT+CMD+O'
      name 'Show Package Contents'
    end
    entry do
      command 'SHIFT+CMD+J'
      name 'Show View Options'
    end
    entry do
      command 'CMD+4'
      name 'Sidebar'
    end
    entry do
      command 'SHIFT+CMD+C'
      name 'Cover Flow'
    end
    entry do
      command 'F1'
      name 'Dual Browser'
    end

    entry do
      name 'Dual Browser'
      notes 'Dual browser mode.'
    end

    entry do
      command 'F3'
      name 'Horizontal Layout'
    end
    entry do
      command 'F4'
      name 'Vertical Layout'
    end
    entry do
      command 'F2'
      name 'Swap Panes'
    end

    entry do
      name 'Sort by'
      notes 'Sort mode.'
    end

    entry do
      command 'CMD+7'
      name 'Date Modified'
    end
    entry do
      command 'CMD+9'
      name 'Kind'
    end
    entry do
      command 'CMD+0'
      name 'Name'
    end
    entry do
      command 'CMD+8'
      name 'Size'
    end

    entry do
      name 'Go'
      notes 'Go menu.'
    end

    entry do
      command 'CMD+['
      name 'Back'
    end
    entry do
      command 'CMD+]'
      name 'Forward'
    end
    entry do
      command 'CMD+UP'
      name 'Enclosing Folder'
    end
    entry do
      command 'CMD+DOWN'
      name 'Open Selection'
    end
    entry do
      command 'SHIFT+CMD+G'
      name 'Go To Folder'
    end
    entry do
      command 'SHIFT+CMD+A'
      name 'Applications'
    end
    entry do
      command 'SHIFT+CMD+U'
      name 'Utilities'
    end
    entry do
      command 'CMD+K'
      name 'Connect to Server'
    end

    entry do
      name 'Commands'
      notes 'Commands menu.'
    end

    entry do
      command 'ALT+CMD+R'
      name 'Batch Rename'
    end
    entry do
      command 'CMD+D'
      name 'Duplicate'
    end
    entry do
      command 'ALT+CMD+C'
      name 'Copy to...'
    end
    entry do
      command 'ALT+CMD+V'
      name 'Move to...'
    end
    entry do
      command 'CTRL+CMD+T'
      name 'Open in Terminal'
    end

    entry do
      name 'Commands > Dual Browser'
      notes 'Commands when dual browsing.'
    end

    entry do
      command 'SHIFT+F1'
      name 'Copy to Other Pane'
    end
    entry do
      command 'SHIFT+F2'
      name 'Move to Other Pane'
    end
    entry do
      command 'SHIFT+F3'
      name 'Compress to Other Pane'
    end
    entry do
      command 'SHIFT+F4'
      name 'Decompress to Other Pane'
    end
    entry do
      command 'F9'
      name 'Compare Selected Items'
    end
  end

  category do
    id 'Activity Monitor.app'

    entry do
      command 'ALT+CMD+F'
      name 'Filter Processes'
    end
    entry do
      command 'ALT+CMD+Q'
      name 'Quit Process'
    end
  end

  category do
    id 'TeamSpeak 3 Client.app'

    entry do
      command 'CMD+CTRL'
      name 'Transmit'
    end
  end

  category do
    id 'Services'

    entry do
      command 'CMD+ESC'
      name 'Get Current Selection (for Quicksilver.app)'
    end
    entry do
      command 'CTRL+CMD+V'
      name 'VimAnywhere'
    end

    entry do
      name 'CalcService.service'
      notes 'The following entries are added by CalcService.service'
    end

    entry do
      command 'ALT+CMD+='
      name 'Calculate & Replace'
    end
    entry do
      command 'SHIFT+CMD+8'
      name 'Calculate & Show'
    end
    entry do
      command 'CMD+='
      name 'Calculate & Append'
    end

    entry do
      name 'WordService.service'
      notes 'The following entries are added by WordService.service'
    end

    entry do
      command 'CMD+&'
      name 'Reformat'
    end
    entry do
      command 'CMD+"'
      name 'Smart Quotes'
    end
  end
end

