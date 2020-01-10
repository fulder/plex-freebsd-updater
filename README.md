# Usage

## Pre-requirements

In fresh FreeBSD install run following commands:

```bash
pkg update
pkg install -y bash
```

## Running updater
Change the version at the top of the script and run:

`bash update_plex.sh`

# Auto starting plex

```bash
mkdir -p /usr/local/etc/rc.d
touch /usr/local/etc/rc.d/start_plex
chmod +x /usr/local/etc/rc.d/start_plex
```
 
Add the startup command to `start_plex.sh` script, something like:
```bash
cd /PlexMediaServer
./start
```