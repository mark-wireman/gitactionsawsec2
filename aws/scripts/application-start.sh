#!/bin/bash
set -xe

prop="USERNAME"
USERNAME="foobaruser"

prop1="secretKey"
secretKey="foobaruserkey"

rcFile="~/.bashrc"

if grep -q "^export $prop=" "$rcFile"; then
  sed -i "s/^export $prop=.*$/export $prop=$USERNAME/" "$rcFile" &&
  echo "[updated] export $prop"
else
  echo -e "export $prop=$USERNAME" >> "$rcFile"
  echo "[inserted] export $prop"
fi

if grep -q "^export $prop1=" "$rcFile"; then
  sed -i "s/^export $prop1=.*$/export $prop1=$secretKey/" "$rcFile" &&
  echo "[updated] export $prop1"
else
  echo -e "export $prop1=$secretKey" >> "$rcFile"
  echo "[inserted] export $prop1"
fi

# Start Tomcat, the application server.
service tomcat start
