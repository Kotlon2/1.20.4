1.20.4 Server with autorestart
**Must have java 17 installed to use**
**Server with AutoRestart every 4hours**
**To force a restart type "restart" into the command prompt**
**To force stop the server use the commad "stop"**
**The restart_start file is setup to run the server while its in the "C:" directory, please either put this into the main "C:" directory, or access the file "restart_start and change the location to where this server is**

To use, make a ngrok account, and go through all that, provide your authtoken to the ngrok.exe, type "ngrok tcp 25565", after that it should say "Session Status online"
To provide to others the ip of the server, go to the ngrok.exe and copy the ip address past where it says "Forwarding", should look similar to this "2.tcp.ngrok.io:10582"
(Do not copy the first part where is says "tcp://" or the part after where it says "-> localhost:25565" only copy and provide the part mentioned above)
Leave ngrok.exe open, it must be open and the status must be "online" for people to play on the server

Proceed to run the file called "restart_loop" 

(this file is made for computers with 32gb of ram or more, if you have less than you must change the config for your computer to still run properly while the server is up, if you are only 
using the computer to run the server and not to play the game or do anything else in the background and have less than 32gb of ram than you can leave it as is and make no changes, but if you
plan to play the game or do something else in the background then you will have to change the config, to do this right click on the file called "restart_loop" and click edit, once open you will see a string of code that should look like "java -server -Xms1g -Xmn5g -Xmx8g -XX:MaxGCPauseMillis=500 -XX:+UseStringDeduplication -XX:+UseG1GC -jar Forgeserver1.16.5.jar nogui" to edit this for
a computer with less than 32gb of ram, will have to change multiple values in this code, first change "-Xmn5g" to "-Xmx3g" and change "-Xmx8g" to "-Xmx5g". that completes all you will have to change)

It may take a while to boot when you have a lot of mods so you may have to wait for a while, you must also leave this open for people to play on the server
At this point the server should be up and people should be able to join

**Below will explain how to create a new world however since this server is setup with autorestart there are a couple things you must do before making a new world and after you make the new world**
**First go to main folder and find the folder called "LSF"(If this is your first timing doing this, if not then itll be called whatever your world is called) enter that folder and then find another folder called
"serverconfig" enter this folder and you will see a Toml file called "auto_restart-server" you must copy this file, it is already setup and if you accidently delete it then you will have to reset it up which we 
will try to avoid doing, save this file somewhere that you can easily access, (The following is for after you make a new world) run the file called "restart_loop" like you normally would to start the server
once it has fully booted, go ahead and type "stop" to close it, then go the main folder and find the folder that is named after your world, enter this folder and you will see a folder called "serverconfig"
open it, proceed to copy the file you saved called "auto_restart-server" into the folder, if it prompts you click "Replace the file in the destination". Now auto restart will also work properly on your new world too.**


If you wish to start a new world, enter the file called "server" by right clicking and clicking edit(If that is not there than just double click the file), Look for the line that says
"level-name=LSF", you have to change the part that says "LSF" (Example of the line after changing it "level-name=NewWorld" you can change it to whatever you want it just has to be differnet
from the previous name, if you wish to go back to the previous world simple change it back to the previous world name, if you wish to delete the world in the entirely than exit the file 
called "server" and find the folder with the same name as your world, proceded to delete that folder, **REMEMBER YOU CAN NOT GET THIS BACK AFTER DELETING, ALL DATA ON THAT WORLD WILL BE LOST
BE CAREFULL AND MAKE SURE YOU DELETE THE RIGHT ONE**)


If you wish to have more players and change the player cap go back to the file called "Server" and look for the line that says "max-players=10" at this point change the number to whatever
you desire(remember having more players will cause the server to be laggy) (Example after changing "max-players=15")

You can change other setting inside this file but be careful and look things up to be sure of what your doing, if you don't already know

To give other players admin powers on the server go to the open exe called "restart_loop" and type into the command prompt "op **playername**" (Example-"op Lucas")

There is alot of commads you can use and put into the command prompt here is a site with a simple list of commands that should work in the command prompt 
"https://www.donaldsimpson.co.uk/2014/02/04/minecraft-server-adminop-commands/"

To add or remove mods go the main server file and find the folder called "mods", if you wish to add mods make sure they are mods that are supported by the minecraft server verison
and make sure they do not conflict with any mods that are already in the folder, if you wish to remove mods simply delete the jar file that you wish however certain mods support other mods
so if you delete one it may end up causing another not to work and will prompt a error. If you add mods you may need to create a new world as adding mods in the middle of a world will cause
corruption to the world. 

If you wish to adjust the auto restart and how it works refer to this github
"https://github.com/GeheimagentNr1/AutoRestart/wiki/Simple-Instructions%3A-1.3-Setup-%28MC-1.16.5-or-older%2C-Windows%2C-Restart-Script%29"


(Server is setup to warn you at multiple time intervals starting at 2h ("2h", "1h", "30m", "15m", "10m", "5m", "2m", "1m", "30s", "15s", "10s", "9s", "8s", "7s", "6s", "5s", "4s", "3s", "2s", "1s")
it is setup to restart at these times ("00:00", "04:00", "8:00", "12:00", "16:00", "20:00") in the 24 hour format, as said before if you wish to adjust any of this please refer to the github above)







