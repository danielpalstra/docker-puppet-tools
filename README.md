# Puppet tools

Builds an image that installs Puppet components used for linting, validating
and testing puppet modules and r10k Puppetfiles.

## Building

Edit the `Dockerfile` to match the version of your docker components. Reference
your own Docker image in the `docker-compose.yml` file.

`docker-compose build`

## Running

Use the following aliases for ultra mega fast testing.

```bash
export PUPPET_TOOLS_PATH={{location to cloned repository}}
alias r10k='docker-compose -f $PUPPET_TOOLS_PATH/docker-compose.yml run --rm r10k'
alias puppet='docker-compose -f $PUPPET_TOOLS_PATH/docker-compose.yml run --rm puppet'
alias puppet-lint='docker-compose -f $PUPPET_TOOLS_PATH/docker-compose.yml run --rm puppet-lint'
```
