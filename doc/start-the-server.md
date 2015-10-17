## Start the server

Rails comes with a development server, so you can test and see what you do in your browser as well.
To start the server you would need to run (<span style="display:inline-block;float:right;margin-top:-3.5em;margin-right:.5em;position:relative;">:whale:</span>):

```
rails server -b 0.0.0.0
```

To make things a little easier there is a container prepared that runs the server for you.

To start the server type or copy & paste the following into your terminal, best in a new window or tab, and press enter:

```
docker-compose up server
```

You can now go to your browser on `http://DOCKER_IP:3000` and you should see Rails' "Welcome aboard"-page.
