# Oauth2 server-side implementation

Uses the google oauth endpoint without the use of a client library

### Getting started

        bundle install
### Configuring       
Provide your own client id, client secret, redirect uri
 in token.yaml
 ```yaml
client_id: # client id 
client_secret: # client secret 
redirect_uri: # redirect uri
```
 
### Running server

        ruby lib/server.rb

