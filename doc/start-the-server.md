## Start the server

Rails comes with a development server, so you can test and see what you do in your browser as well.
To start the server you run:

```
rails server -b 0.0.0.0
```
<span style="display:inline-block;float:right;margin-top:-3.5em;margin-right:.5em;position:relative;">:whale:</span>

_**Note: We need to use the `-b` flag to bind it to all network addresses inside the Docker container._

You can now go to your browser on `http://DOCKER_IP:3000` and you should see Rails' "Welcome aboard"-page
