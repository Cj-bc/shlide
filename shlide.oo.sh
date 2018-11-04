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

    this path = $slide_path
    @return
  }

  # print slide
  Slide.print() {
    tput clear
    tput cup 0 0
    cat $(this path)
    @return
  }

  # echo all methods of this class
  Slide::__dir__() {
    compgen -c | grep 'Slide[.:]' | sed 's/Slide[.:]*//g'
    @return
  }
}

Type::Initialize Slide
