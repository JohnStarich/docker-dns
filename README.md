# docker-dns
Really simple DNS that pulls from `/etc/hosts`, docker run's `--add-host` flag, and docker-compose's `extra_hosts` field.

## Add records

To add DNS records, just add entries to `extra_hosts` in the Docker Compose definition or as command-line flags to Docker (`--add-host`).

Here's an example Docker stack:

```yaml
version: "3"

services:
  dns:
    image: johnstarich/dns:0.1
    ports:
    - "53:53/tcp"
    - "53:53/udp"
    extra_hosts:
    - "www.example.com:192.168.1.2"
    - "api.example.com:192.168.1.3"
```

Run this command to test it out: `nslookup api.example.com localhost`

`localhost` in the above command is Docker's IP address.
