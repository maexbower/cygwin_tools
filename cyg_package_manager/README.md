# Cygwin Package Manager
Never ever download the cygwin setup again and again.
Needs:
 - wget

## update-setup.sh
Uses wget to check if a new version of cygwin-setup is online. If true then it downloads it to /bin.

## pm
First checks with update-setup.sh if there is an update for cygwin setup and runs the setup with the given parameters.
