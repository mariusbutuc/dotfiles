#!/bin/bash

asdf plugin-list | grep -q elixir || asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf plugin-list | grep -q elm    || asdf plugin-add elm    https://github.com/vic/asdf-elm.git
asdf plugin-list | grep -q erlang || asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git

asdf install
