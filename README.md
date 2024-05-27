# MiSTer_OpenBOR
This release of OpenBOR for the MiSTer platform was based on my original v3.0 Build 3743 source code.  However, this build is NOT officially supported by the OpenBOR team as it was a personal port for myself and my daughter and any issues encountered should only be reported here.

Newer versions of OpenBOR do exist, however the OpenBOR team deprecated SDL 1.2 (and rightfully so).  This means compatibility with MiSTer video framebuffer via SDL2 is not possible.  Thus I ported an older version which still supports a huge collection of Game Modules.

Support the OpenBOR Team by visiting https://www.chronocrash.com which is the official homepage of the OpenBOR game engine and game makers!

This port is a gift to my daugher who is a huge fan of Sailor Moon and there are quite a few Modules available for OpenBOR!

## Installer:
Place installer script within the standard MiSTer Scripts directory and execute to download and install OpenBOR.

      /media/fat/Scripts/
           OpenBOR_Updater.sh

## Game Modules:
Place your download game modules within the following directory:

      /media/fat/OpenBOR/Paks/

## Execute:
To run OpenBOR follow the instructions provided below:
### Analog 320x240 Resolution
      MiSTer main menu
      Select scripts     
      Select OpenBOR_CRT.sh
### Native Display Resolution
      MiSTer main menu
      Select scripts     
      Select OpenBOR_HDMI.sh

## Update Controls:
Update your keyboard, gamepad or daemonbite controller assignements:

      Select Module (PAK File)
      Press Start
      Options
      Control Options...
      Setup Player 1...
      Assign Buttons and select OK
      Repeat for other Players/Gamepads

## OpenBOR Directory Structure
General structure for OpenBOR

    /media/fat/OpenBOR/
	CRT/ScreenShots/
        CRT/Libs/
        CRT/Logs/
        CRT/Saves/
	HDMI/ScreenShots/
        HDMI/Libs/
        HDMI/Logs/
        HDMI/Saves/
        Libs/
        Paks/
        OpenBOR_Install.sh
        OpenBOR
        
    /media/fat/Scripts/
        OpenBOR_CRT.sh
        OpenBOR_HDMI.sh
        OpenBOR_Updater.sh


## Donation
If you enjoyed this work or would like to see additional features and functionality added in the future please feel free to donate or join my patreon.

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif)](https://www.paypal.com/donate/?hosted_button_id=E4DSQMLR5JUXS)

[<img src="https://brandlogos.net/wp-content/uploads/2021/12/Patreon_logo_old-1536x352.png" width="88" height="20"/>](https://patreon.com/sumolx?utm_medium=unknown&utm_source=join_link&utm_campaign=creatorshare_creator&utm_content=copyLink)

## OpenBOR
OpenBOR is a continuation of the Beats Of Rage 2D game engine, which was originally
created by the wonderful folks over at http://www.senileteam.com.

## Official Site & Source Code
https://www.chronocrash.com

https://github.com/DCurrent/openbor

## History
In 2004, Senile Team released Beats of Rage, a free beat-'em-up for DOS inspired 
by SEGA's Streets of Rage series and using sprites from SNK Playmore's King of 
Fighters series.  The game spread only by word of mouth, but it nonetheless 
amassed popularity very quickly.  Senile Team soon released an edit pack allowing 
anyone interested to create a mod for the BOR engine.

In 2005, Kirby2000 asked Senile Team to open the source code to BOR.  They 
agreed, and OpenBOR was born.  Development on the engine was continued by the 
community, and still is to this day.

## Available Platforms
OpenBOR has a very modular and portable design inherited from Beats of Rage. Ports 
to the following platforms are currently supported:

* Windows
* Linux
* Mac OS X
* Wii
* Android

## Source Code v3.0 Build 3743
https://github.com/DCurrent/openbor/tree/c4188333413ded2563b7df4d6f06c5097ee14e9c
