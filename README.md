# user-auth-jwt-node
Node JS microservice to handle Basic User Authentication using JWT and PostgreSQL

## Status

### v1
- [X] Set up PostgreSQL DB
- [X] Add DB management tool (https://www.adminer.org/)
- [X] Load enviroment variables from .env files
- [X] Create `user` table
- [X] Set up basic Node server
- [ ] Connect Node server with DB
- [ ] Create endpoint to `Sign Up` (create user)
- [ ] Create endpoint to `Login` (get user information)
### v2
- Set up Kong API Gateway
- [ ] Add JWT to `Sign Up` and `Login` endpoints (making use of Kong API gateway)

### v3
- [ ] Enable Github login (oAuth2)
- [ ] Enable Google login
- [ ] Enable Facebook login


## Getting Started
**Step 1:** Install NVM to easily install node on your machine.

First check if you have already installed NVM by typing:

```
nvm use
```

If you see `Now using node v16.0.0` go down to **Step 2** and check npm version. If you see another version of node, proceed to **Step 1B**, otherwise continue:

Visit https://github.com/creationix/nvm for further details. At the time of writing this, the following command will install NVM:

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

Start a **new** terminal session and type `nvm`. You should see some help output for the command. This means you successfully installed `nvm`. If you do not see a message from Node Version Manager you may need to add this to your `~/.bash_profile` (or shell profile of your choice) and start a **new** terminal session:

```
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
```

If you still do not see a message from NVM try troubleshooting here: https://github.com/creationix/nvm/blob/master/README.markdown

**Step 1B:**
Now install version 16.0.0

```
nvm install v16.0.0
```

Then check that it has been installed with:

```
nvm list
```

You should see a green arrow pointing towards the version of node you just installed. This Node app requires v16.0.0

```
nvm use 16.0.0
```

**Step 2:** Install npm 8.3.0
```
npm install -g npm@8.3.0
```

**Step 3:** Install this app's dependencies

```sh
npm install
```

**Step 4:** Run the services using docker compose
```
docker-compose up
```

You can now check that all of the services are running.
Go to http://localhost:8080 to check `adminer` or go to http://localhost:3000 to check our `node` app running

*NOTE:* You can stop all the services by pressing `CMD + C` (Mac) or `CTRL + C` (Windows). After doing that, it's a good practice to run `docker-compose down` to make sure that we stop all of the containers.

## Resources
### Adminer Designs
https://github.com/vrana/adminer/tree/master/designs




