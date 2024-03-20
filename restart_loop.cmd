echo OFF
:start
    java -server -Xms1g -Xmn5g -Xmx8g -XX:MaxGCPauseMillis=500 -XX:+UseStringDeduplication -XX:+UseG1GC @libraries/net/minecraftforge/forge/1.20.4-49.0.38/win_args.txt nogui
    SET /p should_restart=<./auto_restart/restart
    if %should_restart% EQU 0 goto stop
    echo If you want to stop the server completely, press STRG-C, \before the countdown is at 1!
    echo Rebooting in:
    timeout /T 5 /nobreak
    echo 'Server restarts!'
    goto start
:stop