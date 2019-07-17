#!/usr/bin/env bash
function ssht(){
  ssh $* -t 'tmux a || tmux || /bin/bash'
}
