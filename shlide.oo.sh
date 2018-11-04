#!/usr/bin/env bash
#
# Copyright 2018 (c) Cj-bc
# This software is released under MIT License
#
# @(#) v0.1.0


source "$( cd "${BASH_SOURCE[0]%/*}" && pwd )/lib/oo-bootstrap.sh"
import util/class util/log util/exception util/tryCatch

class:Slide() {
  private string path

  # initialize slide
  # @param <string slide_path>
  Slide.__init__() {
    [string] slide_path

    [[ ! -f "$slide_path" ]] && e="Not found" throw && return
    this path = "$slide_path"
    @return
  }

  # print slide
  Slide.print() {

    local path="$(this path)"
    [ -z "$path" ] && e="path not defined" throw && return
    tput clear
    tput cup 0 0
    cat "$path"
    @return
  }

  # echo all methods of this class
  Slide::__dir__() {
    compgen -c | grep 'Slide[.:]' | sed 's/Slide[.:]*//g'
    @return
  }
}

class:Shlide() {
  private string root_path
  private integer counter

  # initialize
  # @param <string path>
  Shlide.__init__() {
    [string] path

    [[ ! -d "$path" || ! "$(file $path) =~ .*\.tar" ]] && e="Invalid file" throw
    this root_path = "$path"
  }

  # print current slide
  Shlide.print() {

    local old_ps1="$PS1"
    PS1=''
    tput clear
    tput cup 0 0
    cat "$(this root_path)/$(printf '%03d\n' $(this counter)).md"
    tput cup $(($(tput lines) -2)) 0
    PS1="$old_ps1"
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

}

Type::Initialize Slide
Type::InitializeStatic Shlide
