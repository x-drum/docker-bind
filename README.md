# docker-bind
Simple container for ISC Bind

## Usage
Assuming that your config files are under "/path/to/confdir":

```bash
docker run -ti --rm -p 53:5353/udp -v /path/to/confdir:/etc/bind xdrum/bind
```
