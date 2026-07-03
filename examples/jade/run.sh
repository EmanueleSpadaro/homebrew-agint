#!/bin/bash
set -e

JADE_JAR="$(brew --prefix jade)/libexec/jade/lib/jade.jar"

echo "Compiling agents..."
javac -cp "$JADE_JAR" ReceiverAgent.java SenderAgent.java

echo "Launching JADE with ReceiverAgent and SenderAgent..."
java -cp ".:$JADE_JAR" jade.Boot -gui "receiver:ReceiverAgent;sender:SenderAgent"
