#!/usr/bin/env bash
#
# Copyright 2018 (c) Cj-bc
# This software is released under MIT License
#
# @(#) v0.1.0


source "$( cd "${BASH_SOURCE[0]%/*}" && pwd )/lib/oo-bootstrap.sh"
import util/class util/log util/exception util/tryCatch

class:Shlide() {
  private string root_path
  private integer counter
  private string tty

  # initialize
  # @param <string path>
  Shlide.__init__() {
    [string] path

    [[ ! -d "$path" || ! "$(file $path) =~ .*\.tar" ]] && e="Invalid file" throw
    this root_path = "$path"

    this tty = "$(tty)"
  }

  # print current slide
  Shlide.print() {
    {
      tput clear
      tput cup 0 0
      cat "$(this root_path)/$(printf '%03d\n' $(this counter)).md"
      tput cup $(($(tput lines) -2)) 0
    } >$(this tty)
  }

  # increase/decrease slide number
  # @param <integer num>
  Shlide.moveSlide() {
    [integer] num
    this counter = $(( $(this counter) + $num))
    @return
  }

  Shlide.__dir__() {
    compgen -c | grep '^Shlide[:.]*' | sed 's/Shlide[:.]*//g'
    @return
  }

  Shlide.main() {
    [string] cmd="help"
    [string] path

    case "$cmd" in
#      "info" ) Shlide.info;;  # TODO: not implemented yet
#      "help"|"-h" ) Shlide.help;;
      "start" )
        Shlide __init__ "$path"

        while read -rsn1 char; do
          case "$char" in
            "q" ) break;;
            " "|"l" ) Shlide moveSlide 1;Shlide print;;
            "h" ) Shlide moveSlide -1;Shlide print;;
          esac
        done
        echo "Exit."
        ;;
            * ) :;;
    esac

  }

}

Type::InitializeStatic Shlide


Shlide main $@
