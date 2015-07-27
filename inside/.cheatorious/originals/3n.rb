cheatsheet_for "3n" do

    description "@leoj3n's keymappings"
    author      "Joel Kuzmarski", "github.com/leoj3n"
    version     "1.0.0"

    key_separator "░"

    key :alt             , "⎇"
    key :caps            , "caps-lock"
    key :command         , "⌘"
    key :control         , "^"
    key :delete          , "⌦"
    key :enter           , "⌅"
    key :esc             , "⎋"
    key :fn              , "fn"
    key :lcommand        , "L⌘"
    key :rcommand        , "R⌘"
    key :shift           , "⇧"
    key :space           , "␣" # ▽
    key :tab             , "↹"
    key :gesture_up_left , "⇖"
    key :gesture_up_right, "⇗"
    key :gesture_dn_right, "⇘"
    key :gesture_dn_left , "⇙"
    key :gesture_dn      , "⇓"
    key :gesture_up      , "⇑"
    key :gesture_left    , "⇐"
    key :gesture_right   , "⇒"
    key :arrow_left      , "←"
    key :arrow_up        , "↑"
    key :arrow_right     , "→"
    key :arrow_dn        , "↓"
    key :arrow_up_left   , "↖"
    key :arrow_up_right  , "↗"
    key :arrow_dn_right  , "↘"
    key :arrow_dn_left   , "↙"

    section "☆ Symbols" do
    __ _alt     , "Alt"
    __ _caps    , "Caps Lock"
    __ _command , "Command"
    __ _control , "Control"
    __ _delete  , "Delete"
    __ _enter   , "Enter"
    __ _esc     , "Escape"
    __ _fn      , "Function"
    __ _lcommand, "Left Command"
    __ _rcommand, "Right Command"
    __ _shift   , "Shift"
    __ _space   , "Space"
    __ _tab     , "Tab"
      section "☆ Gestures" do
      __ _gesture_up_left , "Up left"
      __ _gesture_up_right, "Up right"
      __ _gesture_dn_right, "Down right"
      __ _gesture_dn_left , "Down left"
      __ _gesture_dn      , "Down"
      __ _gesture_up      , "Up"
      __ _gesture_left    , "Left"
      __ _gesture_right   , "Right"
      end
    end

    section "PCKeyboardHack.app" do
    __ _caps, _delete
    end

    section "KeyRemap4MacBook.app" do
    __ _fn                  , (_command _alt _control _shift)
    __ (_shift _esc)        , _caps
    __ (_rcommand _lcommand), _esc
    __ (_control _control)  , (_control _space)
    __ (_space "asdfghjkl") , "1234567890"
      section "Ubiquitous Vim Bindings" do
      __ "Enter normal mode", (_alt "v")
      __ "Exit normal mode" , (_alt "v"), "i"
      end
      section "VIM Emulation" do
      __ "Enter normal mode", (_control "[")
      __ "Exit normal mode" , "i"
      end
    end

    section "Applications (Quicksilver.app, BetterTouchTool.app, etc)" do
    __ "Dash.app"                     , (_fn "~")
    __ "Firefox.app"                  , (_fn "f")
    __ "Gitter.app"                   , (_fn "e"), (_fn _gesture_dn)
    __ "Google Chrome Canary.app"     , (_fn "a"), (_fn _gesture_right), (_fn _gesture_dn_right)
    __ "iTerm Overlay"                , (_fn "q"), (_alt "~")
    __ "iTerm.app"                    , (_fn "x"), (_fn _gesture_up), (_fn _gesture_up_left)
    __ "MailMate.app"                 , (_fn "d")
    __ "nvALT.app"                    , (_fn "c"), (_fn "w"), (_fn _gesture_dn_left)
    __ "Path Finder.app"              , (_fn "z"), (_fn _gesture_up_right)
    __ "Quicksilver.app"              , (_control _space), (_control _control)
    __ "Sublime Text.app"             , (_fn "s"), (_fn _gesture_left)
    __ "Vienna.app"                   , (_fn "v")
    __ "MirrorDisplays.app"           , (_fn "m")
    __ "Photoshop.app"                , (_fn "p")
    end

    section "Quicksilver.app" do
    __ "Search Yubnub"    , (_fn "1")
    __ "Search DuckDuckGo", (_fn "2")
    __ "Search Google"    , (_fn "3")
    end

    section "BetterTouchTool" do
      section "Global" do
      __ _arrow_left            , (_alt "h")
      __ _arrow_dn              , (_alt "j")
      __ _arrow_up              , (_alt "k")
      __ _arrow_right           , (_alt "l")
      __ (_alt, _arrow_left)    , (_shift _alt "h")
      __ (_alt, _arrow_right)   , (_shift _alt "l")
      __ (_command _shift "]")  , (_command _control "j")
      __ (_command _shift "[")  , (_command _control "k")
      __ (_control _arrow_left) , (_command _control "h")
      __ (_control _arrow_right), (_command _control "l")
      __ _enter                 , (_alt _space)
      __ (_control "f3")        , (_alt "b")
      __ (_command "w")         , (_alt _control "x")
      __ _esc                   , (_shift _alt "x")
      __ (_command _arrow_left) , (_alt "g")
      __ (_command _arrow_right), (_alt ";")
      __ "Home"                 , (_alt "i")
      __ "End"                  , (_alt "u")
      __ "Lock Screen"          , (_fn "l")
      __ "Enable/Disable BTT"   , (_fn "b")
      end
      section "Finder" do
      __ (_command _shift "]"), (_control _tab)
      __ (_command _shift "["), (_shift _control _tab)
      end
    end

    section "Moom.app" do
    __ "Laptop preset" , (_command _alt "w")
    __ "Office preset" , (_command _alt "o")
    __ "Start Mooming" , (_command _control "w")
      section "Mooming" do
      __ "Move up"             , (_command _arrow_up)
      __ "Move down"           , (_command _arrow_dn)
      __ "Move left"           , (_command _arrow_left)
      __ "Move right"          , (_command _arrow_right)
      __ "Shrink up"           , (_alt _arrow_up)
      __ "Shrink down"         , (_alt _arrow_dn)
      __ "Shrink left"         , (_alt _arrow_left)
      __ "Shrink right"        , (_alt _arrow_right)
      __ "Grow up"             , (_control _arrow_up)
      __ "Grow down"           , (_control _arrow_dn)
      __ "Grow left"           , (_control _arrow_left)
      __ "Grow right"          , (_control _arrow_right)
      __ "Fill screen"         , _space
      __ "Half left"           , (_command _arrow_left)
      __ "Half right"          , (_command _arrow_right)
      __ "Half top"            , (_command _arrow_up)
      __ "Half bottom"         , (_command _arrow_dn)
      __ "Quarter top left"    , (_command _arrow_up_left)
      __ "Quarter top right"   , (_command _arrow_up_right)
      __ "Quarter bottom left" , (_command _arrow_dn_left)
      __ "Quarter bottom right", (_command _arrow_dn_right)
      end
    end

    section "Keymo.app" do
    __ "Move mouse up"   , (_control _alt "j")
    __ "Move mouse down" , (_control _alt "k")
    __ "Move mouse left" , (_control _alt "h")
    __ "Move mouse left" , (_control _alt "l")
    __ "Scroll up"       , (_control _alt _shift "j")
    __ "Scroll down"     , (_control _alt _shift "k")
    __ "Scroll left"     , (_control _alt _shift "h")
    __ "Scroll right"    , (_control _alt _shift "l")
    __ "Move to center"  , (_alt _command _space)
    __ "Move by Division", (_command _space)
      section "Moving by Division" do
      __ "Move up"   , _arrow_up   , "j"
      __ "Move down" , _arrow_dn   , "k"
      __ "Move left" , _arrow_left , "h"
      __ "Move right", _arrow_right, "l"
      end
    end

    section "Witch.prefpane" do
    __ "All applications forward" , (_alt _tab)
    __ "All applications backward", (_alt _shift _tab)
    end

    section "AntiRSI.app" do
    __ "Take Break Now"    , (_command "b")
    __ "Reset Session Time", (_command "r")
    end

    section "MailMate.app" do
    __ "Reply to all", (_command _shift "r")
    end

    section "Path Finder.app" do
    __ "New Folder"               , (_shift _command "n")
    __ "New Folder with Selection", (_control _command "n")
    __ "New File"                 , (_alt _command "n")
    __ "Get Info"                 , (_command "i")
    __ "Make Alias"               , (_command "l")
    __ "Make Symbolic Link"       , (_alt _command "l")
    __ "Reveal in Finder"         , (_control _command "f")
      section "View" do
      __ "as Icons"             , (_command "1")
      __ "as List"              , (_command "2")
      __ "as Columns"           , (_command "3")
      __ "Show Invisible Files" , (_shift _command "i")
      __ "Show Package Contents", (_shift _command "o")
        section "Sort by" do
        __ "Date Modified", (_command "7")
        __ "Kind"         , (_command "9")
        __ "Name"         , (_command "0")
        __ "Size"         , (_command "8")
        end
      __ "Show View Options", (_shift _command "j")
      __ "Dual Browser"     , "f1"
        section "Dual Browser" do
        __ "Horizontal Layout", "f3"
        __ "Vertical Layout"  , "f4"
        __ "Swap Panes"       , "f2"
        end
      __ "Sidebar"   , (_command "4")
      __ "Cover Flow", (_shift _command "c")
      end
      section "Go" do
      __ "Back"             , (_command "[")
      __ "Forward"          , (_command "]")
      __ "Enclosing Folder" , (_command _arrow_up)
      __ "Open Selection"   , (_command _arrow_dn)
      __ "Go to Folder"     , (_shift _command "g")
      __ "Applications"     , (_shift _command "a")
      __ "Utilities"        , (_shift _command "u")
      __ "Connect to Server", (_command "k")
      end
      section "Commands" do
      __ "Batch Rename", (_alt _command "r")
      __ "Duplicate"   , (_command "d")
      __ "Copy to..."  , (_alt _command "c")
      __ "Move to..."  , (_alt _command "v")
        section "Dual Browser" do
        __ "Copy to Other Pane"      , (_shift "f1")
        __ "Move to Other Pane"      , (_shift "f2")
        __ "Compress to Other Pane"  , (_shift "f3")
        __ "Decompress to Other Pane", (_shift "f4")
        __ "Compare Selected Items"  , "f9"
        end
      __ "Open in Terminal", (_control _command "t")
      end
    end

    section "Activity Monitor.app" do
    __ "Filter Processes", (_alt _command "f")
    __ "Quit Process"    , (_alt _command "q")
    end

    section "TeamSpeak 3 Client.app" do
    __ "Transmit", (_command _control)
    end

    section "Services" do
    __ "Get Current Selection", (_command _esc)
    __ "VimAnywhere"          , (_control _command "v")
      section "CalcService.service" do
      __ "Calculate & Replace", (_alt _command "=")
      __ "Calculate & Show"   , (_shift _command "8")
      __ "Calculate & Append" , (_command "=")
      end
      section "WordService.service" do
      __ "Reformat"    , (_command "&")
      __ "Smart Quotes", (_command '"')
      end
    end

end
