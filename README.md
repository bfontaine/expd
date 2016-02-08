# Expd

[![Build Status](https://travis-ci.org/bfontaine/expd.svg?branch=master)](https://travis-ci.org/bfontaine/expd)
[![Gem Version](https://img.shields.io/gem/v/expd.svg)](http://badge.fury.io/rb/expd)
[![Inline docs](http://inch-ci.org/github/bfontaine/expd.svg?branch=master)](http://inch-ci.org/github/bfontaine/expd)

**Expd** is a command-line text expander tool.

It lets you associate short words with arbitrarily long texts, and expand them
in your clipboard (use `--no-copy` if you don’t want that).

## Install

    gem install expd

## Usage

```sh
# add a snippet
echo "This is my long text" | expd -a txt

# use it
expd txt
```

Use `expd -h` for more info.

## Support

Only Linux and OS X are supported for now; feel free to open a pull-request if
you want to add Windows support!

This is tested on Ruby 1.9.3+.

## Configuration

Snippets are stored in a YAML file located at `~/.expd_snippets`. You can edit
it youself if you need to. The snippets are stored in a hash under the
`:snippets` key. Each key in the hash is a word and its value the expanded
text.
