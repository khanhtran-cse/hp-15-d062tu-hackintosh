# HP 15 D062TU KEXT
This build for hp 15 d062tu and running on MacOs X 10.13.6

![Alt text](https://ivanov-audio.com/wp-content/uploads/2014/01/Hackintosh-Featured-Image.png)

# System specification
    1.Name:           HP Notebook 15 D062TU
    2.CPU:            Intel Core i3-3110M
    3.Graphic:        Intel HD 4000
    4.Wifi:           Athores AR9485 with bluetooth
    5.Card Reader:    Realtek_CardReader
    6.Camera:         HP Truevision HD  
    7.Audio:          Realtek ALC282
    8.Touchpad:       Synaptics PS/2 Port TouchPad
    9.Bios Version:   F.1B

# Know problems
    1.  Bluetooh card
    2.  Card reader (not tested)

# Working
    1.  Wifi
    2.  Audio with native hotkey
    3.  Native brightness hotkey
    4.  Touchpad (test with three finger)
    5.  USB 
    6.  CPU
    7.  Battery
    8.  Camera
    
# Installation
    1.  Install newest Clover
    2.  Remove EFI folder in EFI volume
    3.  Copy EFI folder to EFI volume
    4.  Copy L/E kexts to Library/Extentions folder
    5.  Copy S/L/E kexts to Systems/Library/Extentions folder
    6.  Run Kext Utility and enter your password
    7.  To use three finger to swiper desktop (mission control), you HAVE TO set Mission control with Ctrl + Command (Ctrl + Alt or Ctrl + Option).
        Ex: Ctrl + Alt + -> : swiper right
            Ctrl + Alt + <- : swiper left
