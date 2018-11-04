日本語: JA_README.mdを参照してください


# shlide

*shlide* is a slide based presentation tool for cli.


# using bash-oo-framework

this project use [niieani/bash-oo-framework](https://github.com/niieani/bash-oo-framework) for basement.


# usage

available commands are:

| commands | description |
|:-:|:-:|
| `shlide start [directory|tar_file]` | start the presentation |
| `shlide info [directory|tar_file]` | show infomation about the slide.(ex: title, date, amount, etc) |


## while playing

you can control it using some keys:

| key | description |
|:-:|:-:|
| <space>/l | next slide |
| `h` | previous slide |
| `q` | quit presentation |

# how to make an presentation

## 1. making slide

you should make slide to use.
i recommend to use vim so that you can use many graphical plugins.
(i don't know about other editors)


### recommended plugins for vim

  for vim, i recommend those plugins which will assist you.

  * [vim-scripts/drawit](https://github.com/vim-scripts/drawit)
  * [gyim/vim-boxdraw](https://github.com/gyim/vim-boxdraw)

  and this would be helpful if you want to make some tables, etc.

  * [thoughtstream/damian-conway-s-vim-setup -- dragvisuals.vim](https://github.com/thoughtstream/damian-conway-s-vim-setup/blob/master/plugin/dragvisuals.vim)

### slides regulation

slides should be named 001.md to xxx.md and should be placed under the same directory.
there's no other rules yet.
*shlide* will start with 001, continuing to 002, 003, 004...

you can use '.tar' to archive your file.
in that case, please archive just slides,not the directory


## 2. it's time to play!

now, what you should do is to play your presentation!
