# devtools

## Table of contents

- [Linux](#linux)
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
- [Kubernetes](#kubernetes)
- [Web](#web)
    - [pnpm](#pnpm)

## Linux

### [exa](https://the.exa.website)

A modern replacement for `ls`, with syntax highlighting, etc.

`alias ls='exa -lh'`

### [bat](https://github.com/sharkdp/bat)

A modern replacement for `cat`, with syntax highlighting, etc.

`alias cat='batcat'`

### [ncdu](https://dev.yorhel.nl/ncdu)

A modern replacement for `du` (disk space usage), with a nice TUI.

`alias du='ncdu'`

### [fd](https://github.com/sharkdp/fd) + [fzf](https://github.com/junegunn/fzf)

Modern replacements for `find`: a human-usable `find` and a fuzzy finder.

### [Starship](https://starship.rs)

Beautiful shell prompts.

#### Installation

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

### [zoxide](https://github.com/ajeetdsouza/zoxide)

`cd` on steroids.

#### Installation

```console
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash && \
    echo 'eval "$(zoxide init bash)"' >> ~/.bashrc && \
    . ~/.bashrc
```

### [htop](https://htop.dev)

A modern replacement for `top`, with a nice TUI.

### [lazydocker](https://github.com/jesseduffield/lazydocker)

A nice TUI for Docker.

### [asciinema](https://asciinema.org)

Record and share terminal sessions.

### [tree](https://en.wikipedia.org/wiki/Tree_(command))

Print directory structure in ASCII.

`sudo apt install tree`

### [httpie](https://httpie.io)

A modern replacement for cURL.

### [tldr](https://tldr.sh)

A modern replacement for `man`.

### [Rye](https://github.com/astral-sh/rye)

21st-century Python project and package management.

Installation:

```console
curl -sSf https://rye-up.com/get | bash
```

Configuration (bash):

```bash
echo 'source "$HOME/.rye/env"' >> ~/.profile && . ~/.bashrc
```

### [Copier](https://github.com/copier-org/copier)

Project templates with Jinja.

```console
rye install copier
```

### [litecli](https://github.com/dbcli/litecli)

A CLI for SQLite with auto-completion and syntax highlighting.

```console
rye install litecli
```

### [jq](https://jqlang.github.io/jq/)

Parse and pretty-print JSON in the command line.

```console
sudo apt install jq -y
```

## Kubernetes

### Core

#### [kubie](https://github.com/sbstp/kubie)

A powerful, flexible Kubernetes context switcher.

#### [kind](https://github.com/kubernetes-sigs/kind)

Kubernetes in Docker - perfect for local development and CI.

#### [k9s](https://github.com/derailed/k9s)

A terminal interface to interact with your Kubernetes clusters.

#### [kubecolor](https://github.com/hidetatz/kubecolor)

Colorizes `kubectl` output.

### Helm

#### [helm](https://helm.sh)

The package manager for Kubernetes.

#### [helm-secrets](https://github.com/jkroepke/helm-secrets

A helm plugin that help manage secrets with Git workflow and store them anywhere.

### Encryption

#### [sops](https://github.com/getsops/sops)

Simple and flexible tool for managing secrets.

## Web

### [pnpm](https://pnpm.io/installation)

```console
curl -fsSL https://get.pnpm.io/install.sh | sh -
```
