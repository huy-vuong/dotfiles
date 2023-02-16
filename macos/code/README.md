# Visual Studio Code

## Extensions

As adapted from [NickTheSick's answer from Super User](https://superuser.com/a/1452176):

### Backup

```bash
code --list-extensions > ~/Development/dotfiles/macos/code/extensions.txt
```

### Restore

```bash
cat ~/Development/dotfiles/macos/code/extensions.txt | xargs -n 1 code --install-extension
```
