[![Build Status](CI_BADGE_URL goes here)](REPO_URL goes here)

## Intro

Just a simple app which is built on [Nimble Rails Template](https://github.com/nimblehq/rails-templates) 
for deployment and testing.

### Prerequisites

- Ruby version: 2.7.2
- Node version: 14.15.4
- Docker 


### Development

* Setup and boot the Docker containers:

```sh
./bin/envsetup.sh
```

* Setup the databases:

  * Postgres:

  ```sh
  rake db:setup
  ```

* Run the app

```sh
foreman start -f Procfile.dev
```
