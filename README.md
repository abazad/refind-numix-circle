# Numix Circle for rEFInd

## What is it?

Numix Circle for rEFInd is a theme for rEFInd using the Numix Circle icons and palette.

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
