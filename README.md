# psydonPB_shock
GMOD TTT Addon to physically shock innocent players
The GMOD addon will output the death messages to a txt file (shock.txt). The text file will be parsed by a Python script. The Python script will check if a player deserves a shock (when a innocent kills a innocent). It will then communicate to an ESP8266 microcontroller that is connected via USB who is acting as a server. That server will contact the appropriate ESP8266 microcontroller client via the built in WIFI. The client is connected to a dog bark shock collar that the player is wearing. When it recieves the data from the server it will activate the collar and shock the player.  

GMOD Addon Info:
  There is extra testing code within the LUA code which will be removed after a sucessful deployment. The extra code quickly spawns bot and gives the play tester a weapon. The Addon supports the base Trouble in Terrorist Town gamemode and custom roles for ttt addon (https://steamcommunity.com/sharedfiles/filedetails/?id=1215502383).
