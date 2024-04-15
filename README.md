# devtools

## Tools

### Linux

- [exa](#exa)
- [bat](#bat)
- [ncdu](#ncdu)
- [fd + fzf](#fd--fzf)
- [Starship](#starship)
- [zoxide](#zoxide)
- [htop](#htop)  
- [lazydocker](#lazydocker)
- [asciinema](#asciinema)
- [tree](#tree)
- [httpie](#httpie)
- [tldr](#tldr)
- [Rye](#rye)
- [Copier](#copier)
- [litecli](#litecli)
- [jq](#jq)

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

### zoxide

<https://github.com/ajeetdsouza/zoxide>

```console
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash && \
    echo 'eval "$(zoxide init bash)"' >> ~/.bashrc && \
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

### Rye

<https://github.com/astral-sh/rye>

Installation:

```console
curl -sSf https://rye-up.com/get | bash
```

Configuration (bash):
```bash
echo 'source "$HOME/.rye/env"' >> ~/.profile && . ~/.bashrc
```

### Copier

<https://github.com/copier-org/copier>

```console
rye install copier
```

### litecli

<https://github.com/dbcli/litecli>

```console
rye install litecli
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
