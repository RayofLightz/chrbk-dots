import XMonad
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Layout.Spacing
import System.IO



main = do 
    xmonad $ desktopConfig{
        normalBorderColor = "#0f0d11",
        focusedBorderColor = "#c1c7c7"

    }  `additionalKeys`
        [ ((mod4Mask .|. shiftMask, xK_d), spawn "rofi -show run"),
          ((mod4Mask .|. shiftMask, xK_i), spawn "chromium"),
          ((mod4Mask .|. shiftMask, xK_b), spawn "zathura")
        ]
