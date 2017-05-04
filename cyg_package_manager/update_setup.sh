#!/bin/bash
ARCH=$(uname -m)
CYGEXEC=""
if [ "$ARCH" == "i686" ]; then
  CYGEXEC="setup-x86.exe"
elif [ "$ARCH" == "amd64" ]; then
  CYGEXEC="setup-x86_64.exe"
else
  echo "Rechnerarchitektur $ARCH wird von diesem Skript nicht unterstützt."
  exit 1
fi
wget -N -c -S https://cygwin.com/$CYGEXEC -O /bin/$CYGEXEC
exit $?
