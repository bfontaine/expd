# Expd

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
