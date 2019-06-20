

Example: Start awe-monitor without authentication

(Make sure that config_noauth.js use the correct address and port number of your AWE server instance)

```bash
docker run -ti --rm --name awe-monitor --env APPLICATION_URL="http://localhost:82" -v `pwd`/config_noauth.js:/usr/local/apache2/htdocs/js/config.js  --env AUTH_URL="" --env APPLICATION_NAME="AWE" --env APPLICATION_SECRET="secret" -p 82:80 mgrast/awe-monitor httpd -DFOREGROUND -C 'Define servername http://localhost:82'
```