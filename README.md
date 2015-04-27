# Numix Circle for rEFInd

[![Screenshot of rEFInd](screenshot.png)](screenshot.png)

## What is it?

Numix Circle for rEFInd is a theme for rEFInd using the Numix Circle icons and palette.

As Numix does not specify a `monospace` font, `Source Code Pro` has been used. This can be replaced by either editing the `Makefile` or overwriting the font file.

## How do I use it?

Ensure that you have installed rEFInd, `sed`, `git`, `make` and `inkscape`

First `cd` into where rEFInd is installed
```
cd /boot/efi/EFI/refind
```

Then `git clone` the repository
```
git clone https://github.com/spudowiar/refind-numix-circle.git
```

Next `include` the theme in your rEFInd configuration
```
sed -i '1s/^/include refind-numix-circle\/theme.conf\n/' refind.conf
```

Finally, `cd` into the repository and `make` the theme
```
cd refind-numix-circle
make -j$(nproc)
```
