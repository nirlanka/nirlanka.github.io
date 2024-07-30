---
title: Remap keys to more practical uses
layout: post
---

# Remap keys to more practical uses

This is about replacing <kbd>CapsLock</kbd> with <kbd>Escape</kbd> and <kbd>PageUp</kbd> etc. with <kbd>PrintScreen</kbd>/<kbd>End</kbd> and so on.

I wanted to do this because,
1. <kbd>CapsLock</kbd> keeps getting in my way in VIM (NeoVIM)
2. <kbd>fn</kbd> on my Macbook also annoys me when I press it by mistake instead of <kbd>Ctrl</kbd>
3. My mechanical keyboard I use for Windows doesn't have <kbd>PrintScreen</kbd> and <kbd>End</kbd>

## Mac OS X

It's quite easy to do this in Mac OS X. Just open `System Settings > Keyboard > Keyboard Shortcuts... > Modifier Keys >` and change 
1. <kbd>Caps Lock</kbd> to act as <kbd>Escape</kbd>, and 
2. <kbd>Globe/fn</kbd> to act as <kbd>Ctrl</kbd>

## Windows 

There are a lot of ways to do this in Windows, but for some specific reasons, there was only one method that worked for me. But this method is also the best in my opinion, and it doesn't need admin permissions!

1. Download [Uncap]
2. If you run this, by default it will map <kbd>CapsLock</kbd> to <kbd>Escape</kbd>
3. Create a `.bat` file with the mappings as parameters below:
    ```bat
    @REM (default) 0x14:0x1b capslock:escape
    @REM 0x21:0x2c pageup:printscreen
    @REM 0x22:0x23 pagedown:end
    
    uncap 0x21:0x2c 0x22:0x23
    ```
4. Create a shortcut to this batch file and place it in [Startup folder].

For reference to the keycodes to use in [Uncap], see [Key codes].

----
[UnCap]: https://github.com/susam/uncap
[Startup folder]: https://support.microsoft.com/en-us/windows/add-an-app-to-run-automatically-at-startup-in-windows-10-150da165-dcd9-7230-517b-cf3c295d89dd
[Key codes]: https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes
