# Home Hub

This is a hub that I built to run multiple apps. 


## Getting Started

To run the Hub, you need to run the following command:

```
make start
```

This will run the hub in the background as a Docker container.


## Adding apps

We use watchtower to run other Docker apps. Watchtower automatically
checks the Docker registry for new image versions. Once there's a
new update, it will pull the image and restart the container.

In order for watchtower to know which containers to check for,
we use a special label to annotate our containers. 

In order to add an app, add the configuration to `docker-compose.yml`
like below:

```
services:
  proverbs-for-code:
    image: jaywhy13/proverbs-for-code
    ports:
      - 3002:80
    labels:
      - "com.centurylinklabs.watchtower.scope=hub"
```

Note the following:

1. We're using a public image URL for the app in Docker's registry.
2. We're using the `com.centurylinklabs.watchtower.scope` label to
   tell watchtower to watch this container.
