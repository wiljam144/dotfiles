---------------
--  IMPORTS  --
---------------

-- Base 
import XMonad hiding ( (|||) )
import Data.Monoid
import System.Exit
import qualified XMonad.StackSet as W
import qualified Data.Map        as M

-- Layout
import XMonad.Layout.Spacing
import XMonad.Layout.Reflect
import XMonad.Layout.Grid
import XMonad.Layout.ThreeColumns
import XMonad.Layout.LayoutCombinators
import XMonad.Layout.NoBorders
import XMonad.Layout.Hidden

-- Hooks
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.EwmhDesktops

-- Util
import XMonad.Util.EZConfig (additionalKeysP)

---------------
-- VARIABLES --
---------------

-- terminal
myTerminal      = "terminator"

-- Whether focus follows the mouse pointer.
myFocusFollowsMouse :: Bool
myFocusFollowsMouse = True

-- Whether clicking on a window to focus also passes the click to the window
myClickJustFocuses :: Bool
myClickJustFocuses = False

-- Width of the window border in pixels.
myBorderWidth   = 1

-- Setting modkey
myModMask       = mod4Mask

-- workspaces
myWorkspaces    = ["1","2","3","4","5","6","7","8","9"]

-- border colors
myNormalBorderColor  = "#30365F" --"#dddddd"
myFocusedBorderColor = "#686f9a" --"#00a3cc"

-----------------
-- KEYBINDINGS --
----------------

myKeys =
  [   
    -- XMONAD
      ("M-S-e e", io exitSuccess)                                -- Quit xmonad
    , ("M-S-e r", spawn "xmonad --recompile; xmonad --restart")  -- Restart xmonad
    , ("M-S-e l", spawn "i3lock-fancy")

    -- LAUNCHER
    , ("M-d",        spawn "rofi -show drun")--spawn "/home/wiljam/.config/rofi/launchers/text/launcher.sh") -- launch rofi
    , ("M-<Return>", spawn myTerminal)               -- launch terminal
    , ("M-b",        spawn "firefox")                -- launch browser
    , ("M-t",        spawn "thunar")                 -- launch file manager
    , ("<Print>",    spawn "flameshot gui")          -- take screenshot
    , ("M-e v",      spawn "terminator -e \"nvim\"") -- lauch vim
    , ("M-e d",      spawn "emacs")                  -- launch doom emacs
    , ("M-r",        spawn "~/scripts/rofi/rofi-script-selector")

    -- SPOTIFY
    , ("M-s l", spawn "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause") -- play/pause toggle
    , ("M-s k", spawn "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next") -- next song
    , ("M-s j", spawn "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous")

    ------ WINDOW MANAGEMENT --------

    -- MISC
    , ("M-S-q", kill) -- close focused window
    , ("M-n", refresh) -- Resize viewed windows to the correct size
    
    -- GAPS
    , ("M-S-p",
        sequence_ [toggleScreenSpacingEnabled, toggleWindowSpacingEnabled])

    -- FOCUS
    , ("M-<Tab>", windows W.focusDown) -- Move focus to the next window
    , ("M-j", windows W.focusDown) -- Move focus to the next window
    , ("M-k", windows W.focusUp  ) -- Move focus to the previous window
    , ("M-m", windows W.focusMaster  ) -- Move focus to the master window

    -- WINDOWS
    , ("M-S-t", withFocused $ windows . W.sink) -- Push window back into tiling
    , ("M-S-s", windows W.swapMaster) -- Swap the focused window and the master window
    , ("M-S-j", windows W.swapDown  ) -- Swap the focused window with the next window
    , ("M-S-k", windows W.swapUp    ) -- Swap the focused window with the previous window

    -- LAYOUTS
    , ("M-f t", sendMessage $ JumpToLayout "Tall") -- jumping to layouts
    , ("M-f g", sendMessage $ JumpToLayout "Grid")
    , ("M-f c", sendMessage $ JumpToLayout "ThreeCol")
    , ("M-f f",
        sequence_ [sendMessage ToggleStruts, sendMessage $ JumpToLayout "Full", toggleScreenSpacingEnabled, toggleWindowSpacingEnabled]) -- jumping to full layout turning off the bar and toggling off the gaps
    , ("M-w", withFocused hideWindow)
    , ("M-S-w", popOldestHiddenWindow)

    -- MASTER AREA
    , ("M-h", sendMessage Shrink) -- Shrink the master area
    , ("M-l", sendMessage Expand) -- Expand the master area
    , ("M-,", sendMessage (IncMasterN 1)) -- Increment the number of windows in the master area
    , ("M-.", sendMessage (IncMasterN (-1))) -- Deincrement the number of windows in the master area
  ]

myOtherKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $

    [
      --  Reset the layouts on the current workspace to default
      ((modm .|. shiftMask, xK_space ), setLayout $ XMonad.layoutHook conf)
    ]

    ++

    [((m .|. modm, k), windows $ f i)
        | (i, k) <- zip (XMonad.workspaces conf) [xK_1 .. xK_9]
        , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]]

    ++

    [((m .|. modm, key), screenWorkspace sc >>= flip whenJust (windows . f))
        | (key, sc) <- zip [xK_w, xK_e, xK_r] [0..]
        , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]

myMouseBindings (XConfig {XMonad.modMask = modm}) = M.fromList $

    -- mod-button1, Set the window to floating mode and move by dragging
    [ ((modm, button1), (\w -> focus w >> mouseMoveWindow w
                                       >> windows W.shiftMaster))

    -- mod-button2, Raise the window to the top of the stack
    , ((modm, button2), (\w -> focus w >> windows W.shiftMaster))

    -- mod-button3, Set the window to floating mode and resize by dragging
    , ((modm, button3), (\w -> focus w >> mouseResizeWindow w
                                       >> windows W.shiftMaster))

    -- you may also bind events to the mouse scroll wheel (button4 and button5)
    ]

-------------
-- LAYOUTS --
-------------
myLayout = reflectHoriz $ gaps $ avoidStruts $ hiddenWindows (smartBorders tiled ||| smartBorders threeCol ||| smartBorders Grid ||| smartBorders Full)
  where
    -- GAPS
    gaps = spacingRaw False (Border i i i i) True (Border i i i i) True
    i = 10

    -- LAYOUTS
    tiled   = Tall nmaster delta ratio
    nmaster = 1
    ratio   = 1/2
    delta   = 3/100

    threeCol = ThreeCol 1 (3/100) (1/2)

------------
-- MANAGE --
------------

myManageHook = composeAll
    [ className =? "MPlayer"        --> doFloat
    , className =? "Gimp"           --> doFloat
    , resource  =? "desktop_window" --> doIgnore
    , resource  =? "kdesktop"       --> doIgnore ]

-----------
-- EVENTS--
-----------

myStartupHook :: X ()
myStartupHook = do
    spawn "feh --bg-scale /home/wiljam/customization/monterey.jpg"
    --spawn "picom --experimental-backends --backend glx"
    spawn "picom"
    spawn "setxkbmap -layout pl -option caps:escape"
    spawn "polybar mybar -r"

----------
-- MAIN --
----------

main = xmonad $ docks $ ewmh defaults
  `additionalKeysP` myKeys

--------------
-- DEFAULTS --
--------------

defaults = def {
      -- simple stuff
        terminal           = myTerminal,
        focusFollowsMouse  = myFocusFollowsMouse,
        clickJustFocuses   = myClickJustFocuses,
        borderWidth        = myBorderWidth,
        modMask            = myModMask,
        workspaces         = myWorkspaces,
        normalBorderColor  = myNormalBorderColor,
        focusedBorderColor = myFocusedBorderColor,
        
      -- key bindings
        keys               = myOtherKeys,
        mouseBindings      = myMouseBindings,
     
      -- hooks, layouts
        logHook            = ewmhDesktopsLogHook,
        layoutHook         = myLayout,
        manageHook         = myManageHook,
        handleEventHook    = handleEventHook def <+> fullscreenEventHook,
        startupHook        = myStartupHook
        --logHook            = myLogHook,
        --handleEventHook    = myEventHook,
    }
