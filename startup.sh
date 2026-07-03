#!/bin/bash

echo "Starting Velocity proxy..."
cd velocity
java -jar velocity-3.5.0-all.jar &
sleep 3  # wait a few seconds for port 25567 to open
cd ..

echo "Starting Limbo..."
cd limbo
java -jar server.jar &
sleep 2
cd ..

echo "Starting Paper server..."
cd server
java -jar paper.jar

echo "------------------------------------------------------------------------------"
echo "You have stopped the server!"
echo "(origin: /stop or "ctrl + c", or server crashed either on startup or from in-game actions.)"
echo "(message origin: startup.sh)"
echo "Paper Server was stopped after starting so this message appeared."
echo "You can edit this message inside"
echo "bye!"
echo "------------------------------------------------------------------------------"
sleep 10
echo "Everything Successfully (Probably) Stopped. You May Use TERMINAL Commands Now."