[![Gem Version](https://badge.fury.io/rb/hanami-runner.svg)](https://badge.fury.io/rb/hanami-runner)  ![Gem](https://img.shields.io/gem/dt/hanami-runner.svg?color=limegreen)

# hanami-runner

This gem allows you to add a `run` subcommand to the `hanami` command.

## Installation

Eazy peazy, just add this string to your gemfile

```rb
group :plugins do
  gem 'hanami-runner'
end
```
and then use it with
```shell
hanami run '<YOUR-CODE>'
```
while being in you hanami project root (i.e where the Gemfile is).

## Maintenance and Contribution
I'll be rarely maintaining this source code due to lack of time, but i will do as much as i can to resolve any open issues.
If you want to contribute, feel free to fork it, branch it and to create a pull request.