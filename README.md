# alerty

Send an alert if a given command failed. 

## How Useful?

I use `alerty` to run commands in cron. With `alerty`, we can send an alert if a cron command fails.

## Installation

```
gem install alerty
```

## Configuration

You can write a configuration file located at `/etc/sysconfig/alerty` (You can configure this path by `ALERTY_CONFIG_FILE` environment variable, or `-c` option):

```
log_path: STDOUT
log_level: 'debug'
timeout: 10
lock_path: /tmp/lock
plugins:
  - type: stdout
```

[example/alerty.yml](./example/alerty.yml)

### CLI Example

```
$ alerty -c example.yml -- ls -l /something_not_exist
```

### CLI Help

```
$ bin/alerty -h
    -c, --config CONFIG_FILE         config file path (default: /etc/sysconfig/alerty)
        --log LOG_FILE               log file path (default: STDOUT)
        --log-level LOG_LEVEL        log level (default: warn
    -t, --timeout SECONDS            timeout the command (default: no timeout)
    -l, --lock LOCK_FILE             exclusive lock file to prevent running a command duplicatedly (default: no lock)
```

## Plugins

Following plugins are available:

* [alerty-plugin-ikachan](https://github.com/sonots/alerty-plugin-ikachan)

## ChangeLog

See [CHANGELOG.md](CHANGELOG.md) for details.

### ToDo

* Add tests

### Licenses

See [LICENSE](LICENSE)
