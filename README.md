# AWE monitor

Monitor for the AWE server


## Examples

### Start awe-monitor without authentication

(Make sure that config_noauth.js uses the correct address and port number of your AWE server instance)

```bash
docker run -ti --rm --name awe-monitor  \
  -v `pwd`/config_noauth.js:/usr/local/apache2/htdocs/js/config.js  \
  --env APPLICATION_URL="http://localhost:82" \
  --env AUTH_URL=""  \
  --env APPLICATION_NAME="AWE" \ 
  --env APPLICATION_SECRET="secret" \ 
  -p 82:80 \
  mgrast/awe-monitor httpd -DFOREGROUND -C 'Define servername http://localhost:82'
```