# Usage

## Pre-requirements

```bash
pkg install -y bash ca_root_nss jq
```

## Install pms rc.d script
* Copy paste the `pms` file into `/etc/rc.d/pms`
* `chmod +x /etc/rc.d/pms`

## Enable the pms 
* Inside /etc/rc.conf add the line `pms_enable="YES"`

## Updating plex
`/etc/rc.d/pms update`