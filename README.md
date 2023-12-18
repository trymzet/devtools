# devtools

## Tools

### Linux

- [exa](https://the.exa.website)
- [bat](https://github.com/sharkdp/bat)
- [ncdu](https://dev.yorhel.nl/ncdu)
- [fd](https://github.com/sharkdp/fd) + [fzf](https://github.com/junegunn/fzf)
- [Starship](https://starship.rs)
- [z](https://github.com/rupa/z)
- [htop](https://htop.dev)  
- [lazydocker](https://github.com/jesseduffield/lazydocker)
- [asciinema](https://asciinema.org)
- [tree](https://en.wikipedia.org/wiki/Tree_(command))
- [httpie](https://httpie.io)
- [tldr](https://tldr.sh)
- [pyenv](https://github.com/pyenv/pyenv)
- [pipx](https://github.com/pypa/pipx)
- [cookiecutter](https://github.com/cookiecutter/cookiecutter)
- [litecli](https://github.com/dbcli/litecli)
- [jq](https://jqlang.github.io/jq/)

### Kubernetes

- [kubie](https://github.com/sbstp/kubie)
- [kind](https://github.com/kubernetes-sigs/kind)
- [k9s](https://github.com/derailed/k9s)
- [kubecolor](https://github.com/hidetatz/kubecolor)
- [helm](https://helm.sh)
- [helm-secrets](https://github.com/jkroepke/helm-secrets)
- [sops](https://github.com/getsops/sops)

### exa

<https://the.exa.website>

`alias ls='exa -lh'`

### bat

<https://github.com/sharkdp/bat>

`alias cat='batcat'`

### ncdu

<https://dev.yorhel.nl/ncdu>

`alias du='ncdu'`

### fd + fzf

<https://github.com/sharkdp/fd> + <https://github.com/junegunn/fzf>

### Starship

<https://starship.rs>

```console
curl -sS https://starship.rs/install.sh | sh \
&& echo 'eval "$(starship init bash)"' >> ~/.bashrc \
&& source ~/.bashrc \
&& mkdir -p ~/.config \
&& echo "command_timeout = 1000" >> ~/.config/starship.toml
```

Next, to unlock full functionality (emojis/glyphs), you need to configure your terminal(s) to use one of the Nerd Fonts.

Example for `FiraCode` font and Windows Terminal:

1. Download FiraCode Nerd Font from <https://www.nerdfonts.com/font-downloads>
2. Copy-paste all the mono-family fonts into C:\\Windows\Fonts  
(For some reason, non-mono fonts don't work).
3. Set Windows Terminal to use the new font  
Put this under the `profiles` key in `settings.json`:

```json
"defaults": 
{
    "font": 
    {
        "face": "FiraCode Nerd Font Mono"
    }
}
```

### z

<https://github.com/rupa/z>

```console
sudo wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O /usr/bin/z.sh && \
    sudo chmod +x /usr/bin/z.sh && \
    echo ". /usr/bin/z.sh" >> ~/.bashrc && \
    . ~/.bashrc
```

### htop

<https://htop.dev>

### lazydocker

<https://github.com/jesseduffield/lazydocker>

### asciinema

<https://asciinema.org>

### tree

<https://en.wikipedia.org/wiki/Tree_(command)>

`sudo apt install tree`

### httpie

<https://httpie.io>

### tldr

<https://tldr.sh>

### pyenv

<https://github.com/pyenv/pyenv>

Prerequisites:

```console
sudo apt install build-essential libssl-dev zlib1g-dev libbz2-dev \
  libreadline-dev libsqlite3-dev curl libncursesw5-dev xz-utils \
  tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
```

Installation:

```console
curl https://pyenv.run | bash
```

Configuration (bash):
```bash
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
```

Now, restart the shell:
```bash
exec "$SHELL"
```

### pipx

<https://github.com/pypa/pipx>

### Cookiecutter

<https://github.com/cookiecutter/cookiecutter>

```console
pipx install cookiecutter
```

### litecli

<https://github.com/dbcli/litecli>

```console
pipx install litecli
```

### jq

<https://jqlang.github.io/jq/>

```console
sudo apt install jq -y
```

## Prompt (WIP)

Create a markdown document including an automated script to install below developer tools. The document should also include a summary of each tool. Remember that official installation instructions often omit critical steps, such as adding the installed Python package to `PATH` (so you need to ensure `export PATH=$PATH:$HOME/.local/bin` is in `~/.bashrc`), or adding an init script to `~/.bashrc` (eg. `eval "$(starship init bash)"`), so make sure to add these where required.

The user has the following system set up:

- OS: Windows + WSL 2 (Ubuntu 22.04)
- shell: bash
- terminal: Windows Terminal and VSCode
