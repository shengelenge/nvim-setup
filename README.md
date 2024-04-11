# My neovim configuration

This is my neovim configuration. Big thanks to [ThePrimeagen](https://www.youtube.com/c/ThePrimeagen) for his amazing videos on neovim and inspiration for this configuration.

## Requirements

Ensure you have the following installed:

### Git

```
$ sudo apt install git
```

### Neovim

I recommend installing neovim from source. You can find the instructions [here](https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-source).

## Installation

Clone this repository to your `~/.config` directory:

```
$ git clone https://github.com/shengelenge/nvim-setup.git
$ cd nvim-setup
```

Run the following command to open neovim:

```
$ nvim .
```

It will automatically install the plugins. If it doesn't, run the following command:

```
:Lazy
```
