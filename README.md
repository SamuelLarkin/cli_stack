# My Linux Config

This repository contains my personal configuration files when I want to setup a Linux environment.

## Minimal Manual Action to Get Started

At a minimum, we need to manually install Task which will allow us to install the rest of the software stack.

### Rust and go

You may have to install [Rust](https://www.rust-lang.org/tools/install) and [Go](https://go.dev/dl/) first.

```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

{ mkdir -p ~/opt && cd ~/opt && wget 'https://go.dev/dl/go1.22.5.linux-amd64.tar.gz' -O - | tar zx && mv go go-1.22.5; }
```

### Task

[Go Task - Documentation](https://taskfile.dev/): Task is a task runner / build tool that aims to be simpler and easier to use than, for example, GNU Make.
[Go Task - GitHub](https://github.com/go-task/task): A task runner / simpler Make alternative written in Go.

```sh
env GOBIN=$HOME/.local/bin go install github.com/go-task/task/v3/cmd/task@latest
```

### ChezMoi

[ChezMoi - Documentation](https://www.chezmoi.io/)
[ChezMoi - GitHub](https://github.com/twpayne/chezmoi): Manage your dotfiles across multiple diverse machines, securely.

```sh
env GOBIN=$HOME/.local/bin go install github.com/twpayne/chezmoi@latest
```

or

```sh
task -t taskfiles/go_essentials.yml chezmoi
```

Clone and Apply Chezmoi

```sh
chezmoi init --apply github:SamuelLarkin/dotfiles.git
```

## CLI Tools

### Favorites

These are my most used CLIs.

- [bat - GitHub](https://github.com/sharkdp/bat): A cat(1) clone with syntax
- [delta - GitHub](https://github.com/dandavison/delta): A syntax-highlighting pager for git, diff, and grep output
- [fzf - GitHub](https://github.com/junegunn/fzf.git): fzf is a general-purpose command-line fuzzy finder. Also available, a vim plugin for fzf.
- [fzf-tmux - GitHub](https://github.com/junegunn/fzf#fzf-tmux-script): Starts fzf in a tmux pane.
- [gdu - go DiskUsage - GitHub](https://github.com/dundee/gdu): Pretty fast disk usage analyzer written in Go.
- [Glow - GitHub](https://github.com/charmbracelet/glow): Render markdown on the CLI, with pizzazz!
- [hexyl - GitHub](https://github.com/sharkdp/hexyl): is a simple hex viewer for the terminal. It uses a colored output to distinguish different categories of bytes (NULL bytes, printable ASCII characters, ASCII whitespace characters, other ASCII characters and non-ASCII).
- [histo - GitHub](https://github.com/fitzgen/histo): Histograms with a configurable number of buckets, and a terminal-friendly Display.
- [histogram.py - GitHub](https://github.com/bitly/data_hacks): Command line utilities for data analysis.
- [htop - GitHub](https://github.com/htop-dev/htop): is a cross-platform interactive process viewer
- [hyperfine - GitHub](https://github.com/sharkdp/hyperfine): A command-line benchmarking tool
- [jless - GitHub](https://github.com/PaulJuliusMartinez/jless): jless is a command-line JSON viewer. Use it as a replacement for whatever combination of less, jq, cat and your editor you currently use for viewing JSON files. It is written in Rust and can be installed as a single standalone binary. [jless — a command-line JSON viewer](https://jless.io/user-guide.html)
- [jq](https://stedolan.github.io/jq/): jq is a lightweight and flexible command-line JSON processor
- [lazygit - GitHub](https://github.com/jesseduffield/lazygit): A simple terminal UI for git commands, written in Go with the gocui library.
- [lsd (LSDeluxe) - GitHub](https://github.com/Peltoche/lsd): This project is a rewrite of GNU ls with lot of added features like colors, icons, tree-view, more formatting options etc. The project is heavily inspired by the super colorls project.
- [ncdu](https://dev.yorhel.nl/ncdu): NCurses Disk Usage
- [parallel - GNU parallel](https://www.gnu.org/software/parallel/): is a shell tool for executing jobs in parallel using one or more computers
- [rename - Cpan File::Rename](https://metacpan.org/dist/File-Rename/view/rename.PL)
- [tabulate - GitHub](https://github.com/astanin/python-tabulate): Pretty-print tabular data in Python, a library and a command-line utility.
- [tig - GitHub](https:://github.com/jonas/tig): text-mode interface for Git
- [tmux-fzf - GitHub](https://github.com/sainnhe/tmux-fzf): Use fzf to manage your tmux work environment!
- [tqdm - GitHub](https://github.com/tqdm/tqdm): Progress Bar.
- [ug/ugrep - GitHub](https://github.com/Genivia/ugrep): Search for anything in everything... ultra fast.
- [zoxide - GitHub](https://github.com/ajeetdsouza/zoxide): zoxide is a smarter cd command, inspired by z and autojump. It remembers which directories you use most frequently, so you can "jump" to them in just a few keystrokes. zoxide works on all major shells. `eval "$(zoxide init bash)"`

### All

- [asciigraph - GitHub](https://github.com/guptarohit/asciigraph): Go package to make lightweight ASCII line graphs ╭┈╯.
- [bat - GitHub](https://github.com/sharkdp/bat): A cat(1) clone with syntax
- [bottom - GitHub](https://github.com/ClementTsang/bottom): Another TUI based system monitor, this time in Rust
- [bpytop - GitHub](https://github.com/aristocratos/bpytop): Linux/OSX/FreeBSD resource monitor
- [chezmoi - GitHub](https://github.com/twpayne/chezmoi): Manage your dotfiles across multiple diverse machines, securely.
- [delta - GitHub](https://github.com/dandavison/delta): A syntax-highlighting pager for git, diff, and grep output
- [difftastic - GitHub](https://github.com/Wilfred/difftastic): Difftastic is an experimental diff tool that compares files based on their syntax.
- [Diskonaut - GitHub](https://github.com/imsnif/diskonaut): windirstat like for the CLI.
- [duf - GitHub](https://github.com/muesli/duf): Disk Usage/Free Utility (Linux, BSD, macOS & Windows).
- [dust: du + rust = dust - GitHub](https://github.com/bootandy/dust): Like du but more intuitive.
- [Erdtree - GitHub](https://github.com/solidiquis/erdtree): A bLazInGlY fAsT, simplified version of the ancient tree command which displays a colorful depth indented listing of files with their memory sizes adjacent.
- [exa - Documentation](https://the.exa.website/): modern replacement for ls
- [F2 - GitHub](https://github.com/ayoisaiah/f2): F2 is a cross-platform command-line tool for batch renaming files and directories quickly and safely. Written in Go!
- [fd - GitHub](https://github.com/sharkdp/fd): is a program to find entries in your filesystem
- [forgit - GitHub](https://github.com/wfxr/forgit): A utility tool powered by fzf for using git interactively.
- [fzf - GitHub](https://github.com/junegunn/fzf.git): fzf is a general-purpose command-line fuzzy finder. Also available, a vim plugin for fzf.
- [fzf-git.sh - GitHub](https://github.com/junegunn/fzf-git.sh): bash and zsh key bindings for Git objects, powered by fzf.
- [fzf-tmux - GitHub](https://github.com/junegunn/fzf#fzf-tmux-script): Starts fzf in a tmux pane.
- [gdu - go DiskUsage - GitHub](https://github.com/dundee/gdu): Pretty fast disk usage analyzer written in Go.
- [glances - GitHub](https://github.com/nicolargo/glances): An eye on your system
- [Glow - GitHub](https://github.com/charmbracelet/glow): Render markdown on the CLI, with pizzazz!
- [gojq - GitHub](https://github.com/itchyny/gojq): Pure Go implementation of jq. This is an implementation of jq command written in Go language. You can also embed gojq as a library to your Go products.
- [gotz - GitHub](https://github.com/merschformann/gotz): gotz - a simple CLI timezone info tool.
- [hexyl - GitHub](https://github.com/sharkdp/hexyl): is a simple hex viewer for the terminal. It uses a colored output to distinguish different categories of bytes (NULL bytes, printable ASCII characters, ASCII whitespace characters, other ASCII characters and non-ASCII).
- [histo - GitHub](https://github.com/fitzgen/histo): Histograms with a configurable number of buckets, and a terminal-friendly Display.
- [histogram.py - GitHub](https://github.com/bitly/data_hacks): Command line utilities for data analysis.
- [hq - GitHub](https://github.com/rbwinslow/hq): Powerful HTML slicing and dicing at the command line.
- [htop - GitHub](https://github.com/htop-dev/htop): is a cross-platform interactive process viewer
- [hyperfine - GitHub](https://github.com/sharkdp/hyperfine): A command-line benchmarking tool
- [jless - GitHub](https://github.com/PaulJuliusMartinez/jless): jless is a command-line JSON viewer. Use it as a replacement for whatever combination of less, jq, cat and your editor you currently use for viewing JSON files. It is written in Rust and can be installed as a single standalone binary. [jless — a command-line JSON viewer](https://jless.io/user-guide.html)
- [jo - GitHub](https://github.com/jpmens/jo): JSON output from a shell.
- [jq](https://stedolan.github.io/jq/): jq is a lightweight and flexible command-line JSON processor
- [lazydocker - GitHub](https://github.com/jesseduffield/lazydocker): A simple terminal UI for both docker and docker-compose, written in Go with the gocui library.
- [lazygit - GitHub](https://github.com/jesseduffield/lazygit): A simple terminal UI for git commands, written in Go with the gocui library.
- [lf - GitHub](https://github.com/gokcehan/lf): lf (as in "list files") is a terminal file manager written in Go with a heavy inspiration from ranger file manager.
- [lsd (LSDeluxe) - GitHub](https://github.com/Peltoche/lsd): This project is a rewrite of GNU ls with lot of added features like colors, icons, tree-view, more formatting options etc. The project is heavily inspired by the super colorls project.
- [Miller - GitHub](https://github.com/johnkerl/miller): Miller is like awk, sed, cut, join, and sort for data formats such as CSV, TSV, JSON, JSON Lines, and positionally-indexed.
- [Navi - GitHub](https://github.com/denisidoro/navi): An interactive cheatsheet tool for the command-line.
- [ncdu](https://dev.yorhel.nl/ncdu): NCurses Disk Usage
- [oxker - GitHub](https://github.com/mrjackwills/oxker): A simple tui to view & control docker containers.
- [parallel - GNU parallel](https://www.gnu.org/software/parallel/): is a shell tool for executing jobs in parallel using one or more computers
- [procs - GitHub](https://github.com/dalance/procs): is a replacement for ps written in Rust
- [pv - GitHub](https://github.com/a-j-wood/pv): a terminal-based tool for monitoring the progress of data through a pipeline.
- [py-spy](https://github.com/benfred/py-spy): py-spy: Sampling profiler for Python programs `py-spy top -- python myprogram.py`
- [Pyinstrument](https://github.com/joerick/pyinstrument): Pyinstrument is a Python profiler.
- [rename - Cpan File::Rename](https://metacpan.org/dist/File-Rename/view/rename.PL)
- [rg: ripgrep - GitHub](https://github.com/BurntSushi/ripgrep): ripgrep is a line-oriented search tool that recursively searches the current directory for a regex pattern
- [Rich CLI - GitHub](https://github.com/Textualize/rich-cli): Rich-cli is a command line toolbox for fancy output in the terminal, built with Rich. Use the rich command to highlight a variety of file types in the terminal, with specialized rendering for Markdown and JSON files. Additionally you can markup and format text from the command line.
- [RnR - GitHub](https://github.com/ismaelgv/rnr): RnR is a command-line tool to securely rename multiple files and directories that supports regular expressions.
- [runiq - GitHub](https://github.com/whitfin/runiq): This project offers an efficient way (in both time and space) to filter duplicate entries (lines) from texual input.
- [starship - GitHub](https://github.com/starship/starship): ☄🌌️ The minimal, blazing-fast, and infinitely customizable prompt for any shell!
- [tabulate - GitHub](https://github.com/astanin/python-tabulate): Pretty-print tabular data in Python, a library and a command-line utility.
- [termeter - GitHub](https://github.com/atsaki/termeter): Visualize data in the terminal.
- [Termgraph - GitHub](https://github.com/mkaz/termgraph): A command-line tool that draws basic graphs in the terminal, written in Python. [Termgraph – How To Draw basic graphs on Linux terminal - Blog](https://computingforgeeks.com/termgraph-command-line-tool-draw-graphs-in-terminal-linux/).
- [termscp - GitHub](https://github.com/veeso/termscp): A feature rich terminal UI file transfer and explorer with support for SCP/SFTP/FTP/S3.
- [tig - GitHub](https:://github.com/jonas/tig): text-mode interface for Git
- [tldr-pages - GitHub](https://github.com/tldr-pages/tldr): The tldr-pages project is a collection of community-maintained help pages for command-line tools, that aims to be a simpler, more approachable complement to traditional man pages.
- [tmux-fzf - GitHub](https://github.com/sainnhe/tmux-fzf): Use fzf to manage your tmux work environment!
- [tmuxp - GitHub](https://github.com/tmux-python/tmuxp): tmuxp, tmux session manager.
- [tqdm - GitHub](https://github.com/tqdm/tqdm): Progress Bar.
- [ug/ugrep - GitHub](https://github.com/Genivia/ugrep): Search for anything in everything... ultra fast.
- [vifm - GitHub](https://github.com/vifm/vifm): Vim-like file manager
- [vivid - GitHub](https://github.com/sharkdp/vivid): vivid is a generator for the `LS_COLORS` environment variable that controls the colorized output of ls, tree, fd, bfs, dust and many other tools.
- [xonsh](https://xon.sh/): XONSH is a Python-powered shell
- [xq - GitHub](https://github.com/jeffbr13/xq): Apply XPath expressions to XML, like jq does for JSONPath and JSON.
- [xsv - GitHub](https://github.com/BurntSushi/xsv): xsv is a command line program for indexing, slicing, analyzing, splitting and joining CSV files. Commands should be simple, fast and composable.
- [yq in python - GitHub](https://github.com/kislyuk/yq): yq: Command-line YAML/XML/TOML processor - jq wrapper for YAML, XML, TOML documents.
- [yq in go - GitHub](https://github.com/mikefarah/yq): A lightweight and portable command-line YAML, JSON and XML processor. yq uses jq like syntax but works with yaml files as well as json and xml.
- [ytop - GitHub](https://github.com/cjbassi/ytop): Another TUI based system monitor, this time in Rust
- [zellij](https://github.com/zellij-org/zellij): A terminal workspace with batteries included.
- [zenith - GitHub](https://github.com/bvaisvil/zenith): In terminal graphical metrics for your Xnix system written in Rust.
- [zoxide - GitHub](https://github.com/ajeetdsouza/zoxide): zoxide is a smarter cd command, inspired by z and autojump. It remembers which directories you use most frequently, so you can "jump" to them in just a few keystrokes. zoxide works on all major shells. `eval "$(zoxide init bash)"`

### Shells

- [elvish](https://elv.sh/): Elvish is an expressive programming language and a versatile interactive shell, combined into one seamless package. It runs on Linux, BSDs, macOS and Windows.
- [elvish - GitHub](https://github.com/elves/elvish): Elvish = Expressive Programming Language + Versatile Interactive Shell
- [fish - GitHub](https://github.com/fish-shell/fish-shell/): the friendly interactive shell
- [nushell](https://www.nushell.sh/): A new type of shell with plugins.
- [nushell - GitHub](https://github.com/nushell/nushell): A new type of shell.
- [xonsh](https://xon.sh/): XONSH is a Python-powered shell

### Dropped

- [fz - GitHub](https://github.com/changyuheng/fz): A shell plugin that seamlessly adds fuzzy search to tab completion of z, lets you easy to jump around among your historical directories
- [z - GitHub](https://github.com/rupa/z): jump around

### `delta`

`~/.gitconfig`

```sh
[core]
    pager = delta

[interactive]
    diffFilter = delta --color-only

[delta]
    navigate = true  # use n and N to move between diff sections

[merge]
    conflictstyle = diff3

[diff]
    colorMoved = default
```

## Things to Try

### CLI Tools

- [Desed - GitHub](https://github.com/SoptikHa2/desed): Demystify and debug your sed scripts, from comfort of your terminal.
- [artem - GitHub](https://github.com/FineFindus/artem): artem is a small cli program written in rust to easily convert images to ascii art.
- [atuin - GitHub](https://github.com/ellie/atuin): Atuin replaces your existing shell history with a SQLite database, and records additional context for your commands. Additionally, it provides optional and fully encrypted synchronisation of your history between machines, via an Atuin server.
- [autoenv - GitHub](https://github.com/kennethreitz/autoenv): Directory-based environments
- [bfs - GitHub](https://github.com/tavianator/bfs) A breadth-first version of the UNIX find command.
- [direnv](https://direnv.net/): Unclutter your .profile
- [fx - GitHub](https://github.com/antonmedv/fx): Terminal JSON viewer
- [gitui - GitHub](https://github.com/extrawurst/gitui): GitUI provides you with the comfort of a git GUI but right in your terminal. Not as great as lazygit.
- [hoard - GitHub](https://github.com/Hyde46/hoard): command organizer tool to hoard all your precious commands.
- [jaq - GitHub](https://github.com/01mf02/jaq): jaq is a clone of the JSON data processing tool jq. jaq aims to support a large subset of jq's syntax and operations.
- [joshuto - GitHub](https://github.com/kamiyaa/joshuto): ranger-like terminal file manager written in rust
- [jql - GitHub](https://github.com/yamafaktory/jql): A JSON Query Language CLI tool built with Rust.
- [ripgrep (rg) - GitHub](https://github.com/BurntSushi/ripgrep): ripgrep is a line-oriented search tool that recursively searches the current directory for a regex pattern
- [xq - GitHub](https://github.com/MiSawa/xq): JQ reimplemented purely in Rust.
- [yazi - GitHub](https://github.com/sxyazi/yazi): 💥 Blazing fast terminal file manager written in Rust, based on async I/O.

### Vim Plugins

- [Jeremy Kahn - Youtube](https://www.youtube.com/watch?v=x8uleL9j5lY): Vim Plugins and Tricks That Give Me Super Powers.
- [Jeremy Kahn: .vimrc - GitHub](https://github.com/jeremyckahn/dotfiles/blob/master/.vimrc)
- [CoC - GitHub](https://github.com/neoclide/coc.nvim): Make your Vim/Neovim as smart as VSCode.
- [anyjump - GitHub](https://github.com/pechorin/any-jump.vim): Vim code inspection plugin for finding definitions _and_ pick and references/usages.
- [ctrlsf.vim - GitHub](https://github.com/dyng/ctrlsf.vim): An ack/ag/pt/rg powered code search and view tool, takes advantage of Vim 8's power to support asynchronous searching, and lets you edit file in-place with Edit Mode.
- [ALE - GitHub](https://github.com/dense-analysis/ale): Asynchronous Lint Engine.

### Neovim

I'm debating if I should switch to Neovim or one of it's customization.

- [Neovim](https://github.com/neovim/neovim): [Neovim](https://neovim.io/) is a Vim-fork focused on extensibility and usability
- [LazyVim](https://github.com/LazyVim/LazyVim): Neovim config for the lazy [LazyVim](https://www.lazyvim.org/)
- [Lunarvim](https://github.com/LunarVim/LunarVim): 🌙 [LunarVim](https://www.lunarvim.org/) is an IDE layer for Neovim. Completely free and community driven.
- [AstroNvim](https://github.com/AstroNvim/AstroNvim): [AstroNvim](https://astronvim.com/) is an aesthetic and feature-rich neovim config that is extensible and easy to use with a great set of plugins.
- [NvChad](https://github.com/NvChad/NvChad): Blazing fast Neovim config providing solid defaults and a beautiful UI, enhancing your neovim experience. [NvChad](https://nvchad.com/)
- [CosmicNvim](https://github.com/CosmicNvim/CosmicNvim): [CosmicNvim](https://cosmicnvim.vercel.app/) is a lightweight and opinionated Neovim config for web development, specifically designed to provide a 💫 COSMIC programming experience!

Vim Plugins equivalent

- [Awesome Neovim](https://github.com/rockerBOO/awesome-neovim)

| vim        | neovim                                   |
| ---------- | ---------------------------------------- |
| vimgutter  | gitsigns                                 |
| VCSVimDiff | diffview.nvim                            |
| statusbar  | navic                                    |
| tagbar     | symbols-outline, navbuddy, aerial, vista |

# Links

- [jq - manual](https://stedolan.github.io/jq/manual/v1.5/)
- [jq - cookbook](https://github.com/stedolan/jq/wiki/Cookbook)
- [jq-hopkok jq utility library - GitHub](https://github.com/joelpurra/jq-hopkok): Checkout how they handle `parallel` with `jq`.
- [6 stellar libraries for profiling Python code](https://www.infoworld.com/article/3600993/6-stellar-libraries-for-profiling-python-code.html)
- [Nerd Fonts](https://www.nerdfonts.com): Nerd Fonts patches developer targeted fonts with a high number of glyphs (icons). Specifically to add a high number of extra glyphs from popular ‘iconic fonts’ such as Font Awesome, Devicons, Octicons, and others.
- [Programming Fonts](https://www.programmingfonts.org): Test drive all the programming fonts!
- [Command Line - Reddit](https://www.reddit.com/r/commandline/): This is for anything regarding the command line, in any operating system. All questions (including dumb ones), tips, and links to interesting programs/console applications you've found or made yourself are welcome. Linux / BSD / OSX / Windows CLI and TUI apps or questions or comments, we're happy to take them all!
- [Vim - Reddit](https://www.reddit.com/r/vim/): For Vim enthusiasts and anyone interested in Vim.
- [A list of new(ish) command line tools](https://jvns.ca/blog/2022/04/12/a-list-of-new-ish--command-line-tools/)
- [tui-rs - GitHub](https://github.com/fdehau/tui-rs): Build terminal user interfaces and dashboards using Rust.
- [Awesome TUIs](https://github.com/rothgar/awesome-tuis) List of projects that provide terminal user interfaces.
- [fzf Web Color Picker](https://minsw.github.io/fzf-color-picker/)
- [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)
- [AWESOME VIM PLUGINS from ACROSS THE UNIVERSE](https://vimawesome.com/)
- [Awesome Neovim](https://github.com/rockerBOO/awesome-neovim)
- [The Modern JavaScript Tutorial](https://javascript.info/)
- [Find your next tool at TerminalTrove](https://terminaltrove.com/)
