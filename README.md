# My Linux Config

This repository contains my personal configuration files when I want to setup a Linux environment.

## Minimal Manual Action to Get Started

At a minimum, we need to manually install Task which will allow us to install the rest of the software stack.

### Rust and go

You may have to install [Rust](https://www.rust-lang.org/tools/install) and [Go](https://go.dev/dl/) first.

```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

{ mkdir -p ~/opt && rm -fr ~/opt/go && wget 'https://go.dev/dl/go1.25.3.linux-amd64.tar.gz' -O - | tar zxf - --directory ~/opt/; }

export PATH=~/opt/go/bin:${PATH:+:$PATH}
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
~/.local/bin/task -t taskfiles/go_essentials.yml chezmoi
```

Clone and Apply Chezmoi

```sh
~/.local/bin/chezmoi init --apply github:SamuelLarkin/dotfiles.git
```

### pixi

On systems that lack everything even the default build tools, [pixi](pixi.sh) to the rescue.

```sh
curl -fsSL https://pixi.sh/install.sh | sh
```

```sh
pixi global install make cmake ncurses
pixi global install nvim
```

## CLI Tools

### Favorites

These are my most used CLIs.

- [bat](https://github.com/sharkdp/bat): A cat(1) clone with syntax
- [diffsitter](https://github.com/afnanenayet/diffsitter): A tree-sitter based AST difftool to get meaningful semantic diffs. WARNING: Couldn't get it to compile.
- [difftastic](https://github.com/Wilfred/difftastic): Difftastic is an experimental diff tool that compares files based on their syntax.
- [fzf](https://github.com/junegunn/fzf.git): fzf is a general-purpose command-line fuzzy finder. Also available, a vim plugin for fzf.
- [fzf-tmux](https://github.com/junegunn/fzf#fzf-tmux-script): Starts fzf in a tmux pane.
- [gdu - go DiskUsage](https://github.com/dundee/gdu): Pretty fast disk usage analyzer written in Go.
- [Glow](https://github.com/charmbracelet/glow): Render markdown on the CLI, with pizzazz!
- [hexyl](https://github.com/sharkdp/hexyl): is a simple hex viewer for the terminal. It uses a colored output to distinguish different categories of bytes (NULL bytes, printable ASCII characters, ASCII whitespace characters, other ASCII characters and non-ASCII).
- [histo](https://github.com/fitzgen/histo): Histograms with a configurable number of buckets, and a terminal-friendly Display.
- [histogram.py](https://github.com/bitly/data_hacks): Command line utilities for data analysis.
- [htop](https://github.com/htop-dev/htop): is a cross-platform interactive process viewer
- [hyperfine](https://github.com/sharkdp/hyperfine): A command-line benchmarking tool
- [jq](https://stedolan.github.io/jq/): jq is a lightweight and flexible command-line JSON processor
- [lazygit](https://github.com/jesseduffield/lazygit): A simple terminal UI for git commands, written in Go with the gocui library.
- [lsd (LSDeluxe)](https://github.com/Peltoche/lsd): This project is a rewrite of GNU ls with lot of added features like colors, icons, tree-view, more formatting options etc. The project is heavily inspired by the super colorls project.
- miller: Miller is like awk, sed, cut, join, and sort for data formats such as CSV, TSV, JSON, JSON Lines, and positionally-indexed.
- [ncdu](https://dev.yorhel.nl/ncdu): NCurses Disk Usage
- [parallel - GNU parallel](https://www.gnu.org/software/parallel/): is a shell tool for executing jobs in parallel using one or more computers
- [rename - Cpan File::Rename](https://metacpan.org/dist/File-Rename/view/rename.PL)
- [starship](https://github.com/starship/starship) eval "$(starship init bash): ☄🌌️ The minimal, blazing-fast, and infinitely customizable prompt for any shell!
- [tmux-fzf](https://github.com/sainnhe/tmux-fzf): Use fzf to manage your tmux work environment!
- [ug/ugrep](https://github.com/Genivia/ugrep): Search for anything in everything... ultra fast.
- [zoxide](https://github.com/ajeetdsouza/zoxide): zoxide is a smarter cd command, inspired by z and autojump. It remembers which directories you use most frequently, so you can "jump" to them in just a few keystrokes. zoxide works on all major shells. `eval "$(zoxide init bash)"`

### All

- [archiver](https://github.com/mholt/archiver): Easily create & extract archives, and compress & decompress files of various formats.
- [asciigraph](https://github.com/guptarohit/asciigraph): Go package to make lightweight ASCII line graphs ╭┈╯.
- [ast-grep](https://github.com/ast-grep/ast-grep): ⚡A CLI tool for code structural search, lint and rewriting. Written in Rust
- [atuin](https://github.com/atuinsh/atuin): ✨ Magical shell history.
- [bandwhich](https://github.com/imsnif/bandwhich): Terminal bandwidth utilization tool. WARNING Needs sudo.
- [bashdb](https://bashdb.sourceforge.net/): The Bash Debugger Project is a source-code debugger for bash that follows the gdb command syntax.
- [bashplotlib](https://github.com/glamp/bashplotlib): plotting in the terminal.
- [bat](https://github.com/sharkdp/bat): A cat(1) clone with syntax highlighting and Git integration.
- [binsider](https://github.com/orhun/binsider): Analyze ELF binaries like a boss 😼🕵️.
- [bottom](https://github.com/cjbassi/ytop): Another TUI based system monitor, this time in Rust
- [bpytop](https://github.com/aristocratos/bpytop): Linux/OSX/FreeBSD resource monitor.
- [broot](https://github.com/Canop/broot): A new way to see and navigate directory trees.
- [ChezMoi - Documentation](https://www.chezmoi.io/): Manage your dotfiles across multiple diverse machines, securely.
- [ctags](https://github.com/universal-ctags/ctags): A maintained ctags implementation
- [delta](https://github.com/dandavison/delta): A syntax-highlighting pager for git, diff, and grep output
- [diffsitter](https://github.com/afnanenayet/diffsitter): A tree-sitter based AST difftool to get meaningful semantic diffs. WARNING: Couldn't get it to compile.
- [difftastic](https://github.com/Wilfred/difftastic): Difftastic is an experimental diff tool that compares files based on their syntax.
- [direnv](https://github.com/direnv/direnv): Unclutter your .profile.
- [Diskonaut](https://github.com/imsnif/diskonaut): windirstat like for the CLI.
- [doc](https://docs.astral.sh/uv): An extremely fast Python package and project manager, written in Rust.
- [duf](https://github.com/muesli/duf): Disk Usage/Free Utility (Linux, BSD, macOS & Windows).
- [duf](https://github.com/muesli/duf): Disk Usage/Free Utility (Linux, BSD, macOS & Windows). NOTE: use go_extras:duf
- [dust: du + rust = dust](https://github.com/bootandy/dust): Like du but more intuitive.
- [elvish](https://github.com/elves/elvish): Elvish = Expressive Programming Language + Versatile Interactive Shell
- [Erdtree](https://github.com/solidiquis/erdtree): A bLazInGlY fAsT, simplified version of the ancient tree command which displays a colorful depth indented listing of files with their memory sizes adjacent.
- [exa - Documentation](https://the.exa.website/): modern replacement for ls.
- [eza](https://github.com/eza-community/eza): A modern, maintained replacement for ls.
- [F2](https://github.com/ayoisaiah/f2): F2 is a cross-platform command-line tool for batch renaming files and directories quickly and safely. Written in Go!
- [fd](https://github.com/sharkdp/fd): fd is a program to find entries in your filesystem.
- [feedgnuplot](https://github.com/dkogan/feedgnuplot): This is a flexible, command-line-oriented frontend to Gnuplot.
- [FishShell](https://fishshell.com/): The friendly interactive shell.
- [forgit](https://github.com/wfxr/forgit): A utility tool powered by fzf for using git interactively.
- [fu](https://github.com/pierrechevalier83/find_unicode): Find Unicode characters the easy way: from the command line.
- [fx - Documentation](https://fx.wtf): Terminal JSON viewer & processor.
- [fzf-git.sh](https://github.com/junegunn/fzf-git.sh): bash and zsh key bindings for Git objects, powered by fzf
- [fzf](https://github.com/junegunn/fzf): fzf is a general-purpose command-line fuzzy finder.
- [fzf-tmux](https://github.com/junegunn/fzf): Install fzf's integration with tmux. fzf-tmux: starts fzf in a tmux pane.
- [Generate a matching regular expression from the test cases you provide](https://pemistahl.github.io/grex-js/): command-line tool and Rust library for generating regular expressions from user-provided test cases.
- [gh](https://github.com/cli/cli): GitHub’s official command line tool.
- [git completion](https://github.com/git/git): Git's CLI completion
- [git-filter-repo](https://github.com/newren/git-filter-repo): Quickly rewrite git repository history (filter-branch replacement)
- [git-graph](https://github.com/mlange-42/git-graph): Command line tool to show clear git graphs arranged for your branching model.
- [git-igitt](https://github.com/mlange-42/git-igitt): Interactive, cross-platform Git terminal application with clear git graphs arranged for your branching model.
- [git prompt](https://github.com/git/git): Git's prompt. Are we actually using this or starship completely replaces this?
- [gitui](https://github.com/extrawurst/gitui): Blazing 💥 fast terminal-ui for git written in rust 🦀.
- [glances - WebSite](https://nicolargo.github.io/glances): An eye on your system.
- [Glow](https://github.com/charmbracelet/glow): Render markdown on the CLI, with pizzazz!
- [go DiskUsage(gdu)](https://github.com/dundee/gdu): Pretty fast disk usage analyzer written in Go.
- [gojq](Pure Go implementation of jq): Pure Go implementation of jq.
- [gotz](https://github.com/merschformann/gotz): gotz - a simple CLI timezone info tool.
- [grv](https://github.com/rgburke/grv): GRV is a terminal interface for viewing git repositories.
- [hapless](https://github.com/bmwant/hapless): Simplest way of running and tracking processes in the background.
- [Helix](https://github.com/helix-editor/helix): A post-modern text editor.
- [hexyl](https://github.com/sharkdp/hexyl): is a simple hex viewer for the terminal. It uses a colored output to distinguish different categories of bytes (NULL bytes, printable ASCII characters, ASCII whitespace characters, other ASCII characters and non-ASCII).
- [histogram.py](https://github.com/bitly/data_hacks): Command line utilities for data analysis.
- [histogram.py](https://github.com/bitly/data_hacks): Command line utilities for data analysis.
- [histo](https://github.com/fitzgen/histo): Histograms with a configurable number of buckets, and a terminal-friendly Display.
- [hq](https://github.com/rbwinslow/hq): Powerful HTML slicing and dicing at the command line.
- [htmlq](https://github.com/mgdm/htmlq): Like jq, but for HTML. Uses CSS selectors to extract bits of content from HTML files.
- [htop](https://github.com/htop-dev/htop): htop is a cross-platform interactive process viewer.
- [hyperfine](https://github.com/sharkdp/hyperfine): A command-line benchmarking tool.
- [ijq](https://github.com/gpanders/ijq): Interactive jq.
- [Install from Source](https://github.com/cli/cli/blob/trunk/docs/source.md): GitHub CLI tools.
- [jaq](https://github.com/01mf02/jaq): A jq clone focussed on correctness, speed, and simplicity.
- [jf](https://github.com/sayanarijit/jf): jf %q "JSON Formatted".
- [jid](https://github.com/simeji/jid): json incremental digger.
- [jless — a command-line JSON viewer](https://jless.io/user-guide.html): jless is a command-line JSON viewer. Use it as a replacement for whatever combination of less, jq, cat and your editor you currently use for viewing JSON files. It is written in Rust and can be installed as a single standalone binary.
- [jo](https://github.com/jpmens/jo): JSON output from a shell.
- [jq - doc](https://github.com/stedolan/jq): jq is a lightweight and flexible command-line JSON processor.
- [jqp](https://github.com/noahgorstein/jqp): A TUI playground to experiment with jq.
- [lazydocker](https://github.com/jesseduffield/lazydocker): A simple terminal UI for both docker and docker-compose, written in Go with the gocui library.
- [lazygit](https://github.com/jesseduffield/lazygit): A simple terminal UI for git commands, written in Go with the gocui library.
- [lazysql](https://github.com/jorgerojas26/lazysql): A cross-platform TUI database management tool written in Go.
- [lf](https://github.com/gokcehan/lf): lf (as in "list files") is a terminal file manager written in Go with a heavy inspiration from ranger file manager.
- [libevent](https://libevent.org/): The libevent API provides a mechanism to execute a callback function when a specific event occurs on a file descriptor or after a timeout has been reached. Furthermore, libevent also support callbacks due to signals or regular timeouts.
- [lsd (LSDeluxe)](https://github.com/Peltoche/lsd): This project is a rewrite of GNU ls with lot of added features like colors, icons, tree-view, more formatting options etc. The project is heavily inspired by the super colorls project.
- [LunarVim](https://github.com/LunarVim/LunarVim): 🌙 LunarVim is an IDE layer for Neovim. Completely free and community driven.
- [Miller](https://github.com/johnkerl/miller): Miller is like awk, sed, cut, join, and sort for data formats such as CSV, TSV, JSON, JSON Lines, and positionally-indexed.
- [nap](https://github.com/maaslalani/nap): Code snippets in your terminal.
- [Navi](https://github.com/denisidoro/navi): An interactive cheatsheet tool for the command-line.
- [ncdu](https://dev.yorhel.nl/ncdu): NCurses Disk Usage.
- [ncurses](https://invisible-island.net/ncurses/): [ncurses](https://invisible-island.net/ncurses/)
- [neovim](https://github.com/neovim/neovim): Vim-fork focused on extensibility and usability.
- [neovim](https://github.com/neovim/neovim): Vim-fork focused on extensibility and usability.
- [Node.js](https://nodejs.org/en): Node.js® is an open-source, cross-platform JavaScript runtime environment.
- [nushell](https://github.com/nushell/nushell): A new type of shell.
- [oLLaMa](https://github.com/ollama/ollama): Get up and running with Llama 3.3, DeepSeek-R1, Phi-4, Gemma 2, and other large language models.
- [ouch](https://github.com/ouch-org/ouch): Painless compression and decompression for your terminal.
- [oxker](https://github.com/mrjackwills/oxker): A simple tui to view & control docker containers.
- [parallel - GNU parallel](https://www.gnu.org/software/parallel/): parallel is a shell tool for executing jobs in parallel using one or more computers.
- [Pipe Plot](https://github.com/MyGodIsHe/pipeplot): pipeplot draws an interactive graph in a terminal based on data from pipe.
- [plotext](https://github.com/piccolomo/plotext): plots directly on terminal, it has no dependencies and the syntax is very similar to matplotlib. It also provide a simple command line tool. Doesn't seem to have a CLI.
- [Plotille](https://github.com/tammoippen/plotille): Plot, scatter plots and histograms in the terminal using braille dots, with (almost) no dependancies. Plot with color or make complex figures - similar to a very small sibling to matplotlib. Or use the canvas to plot dots and lines yourself. Library Only?
- [presenterm](https://github.com/mfontanini/presenterm): A markdown terminal slideshow tool.
- [procs](https://github.com/dalance/procs): is a replacement for ps written in Rust.
- [pv](https://github.com/a-j-wood/pv): a terminal-based tool for monitoring the progress of data through a pipeline.
- [Pyinstrument](https://github.com/joerick/pyinstrument): Pyinstrument is a Python profiler.
- [pysparkline](https://github.com/RedKrieg/pysparklines): Takes series data via stdin, command line, or API and prints a sparkline representation.
- [py-spy](https://github.com/benfred/py-spy): py-spy: Sampling profiler for Python programs py-spy top -- python myprogram.py
- [rename](https://metacpan.org/dist/File-Rename/view/rename.PL): Cpan File::Rename.
- [reservoir_sampling](https://github.com/SamuelLarkin/reservoir_sampling.rs): Reservoir Sampling in Rust.
- [rg: ripgrep](https://github.com/BurntSushi/ripgrep): ripgrep is a line-oriented search tool that recursively searches the current directory for a regex pattern.
- [Rich CLI](https://github.com/Textualize/rich-cli): Rich-cli is a command line toolbox for fancy output in the terminal, built with Rich. Use the rich command to highlight a variety of file types in the terminal, with specialized rendering for Markdown and JSON files. Additionally you can markup and format text from the command line.
- [RnR](https://github.com/ismaelgv/rnr): RnR is a command-line tool to securely rename multiple files and directories that supports regular expressions.
- [runiq](https://github.com/whitfin/runiq): This project offers an efficient way (in both time and space) to filter duplicate entries (lines) from texual input.
- [rush](https://github.com/shenwei356/rush): A cross-platform command-line tool for executing jobs in parallel.
- [scroll](https://github.com/redraw/scroll): scroll stdout!
- [serie](https://github.com/lusingander/serie): A rich git commit graph in your terminal, like magic 📚.
- [skim](https://github.com/lotabout/skim#installation): Fuzzy Finder in rust! A la `fzf`.
- [slurm-helper](https://github.com/damienfrancois/slurm-helper): SLURM's bash shell completion.
- [SLURM syntax highlighting](https://github.com/SchedMD/slurm): SLURM syntax highlighting.
- [smag - show me a graph!](https://github.com/aantn/smag): Easily create graphs from cli commands and view them in the terminal. Like the watch command but with a graph of the output.
- [starship](https://github.com/starship/starship): ☄🌌️ The minimal, blazing-fast, and infinitely customizable prompt for any shell!
- [stybulate](https://github.com/guigui64/stybulate): Tabulate with Style
- [tabiew](https://github.com/shshemi/tabiew): A lightweight TUI application to view and query tabular data files, such as CSV, TSV, or parquet.
- [tabulate - python-tabulate](https://github.com/astanin/python-tabulate): Pretty-print tabular data in Python, a library and a command-line utility.
- [television](https://github.com/alexpasmantier/television): The revolution will (not) be televised.
- [termeter](https://github.com/atsaki/termeter): Visualize data in the terminal.
- [Termgraph – How To Draw basic graphs on Linux terminal - Blog](https://computingforgeeks.com/termgraph-command-line-tool-draw-graphs-in-terminal-linux/): A command-line tool that draws basic graphs in the terminal, written in Python.
- [termplotlib](https://github.com/nschloe/termplotlib): termplotlib is a Python library for all your terminal plotting needs. It aims to work like matplotlib.
- [termscp](https://github.com/veeso/termscp): A feature rich terminal UI file transfer and explorer with support for SCP/SFTP/FTP/S3.
- [tig](https://github.com/jonas/tig): Text-mode interface for git
- [tldr-pages](https://github.com/tldr-pages/tldr): The tldr-pages project is a collection of community-maintained help pages for command-line tools, that aims to be a simpler, more approachable complement to traditional man pages.
- [tmux-fzf](https://github.com/sainnhe/tmux-fzf): Use fzf to manage your tmux work environment! NOTE: This plugin is intalled in `.tmux.conf` with `set -g @plugin 'sainnhe/tmux-fzf'`.
- [tmux](https://github.com/tmux/tmux): A terminal multiplexer.
- [tmuxp](https://github.com/tmux-python/tmuxp): tmuxp, tmux session manager.
- [tmux plugin manager](https://github.com/tmux-plugins/tpm): Install tmux's plugin manager.
- [tmux shell completion](https://gthub.com/imomaliev/tmux-bash-completion): Install tmux shell completion.
- [tqdm](https://github.com/tqdm/tqdm): Progress Bar.
- [ttyplot](https://github.com/tenox7/ttyplot): a realtime plotting utility for text mode consoles and terminals with data input from stdin / pipe. Needs to be compiled
- [ug/ugrep](https://github.com/Genivia/ugrep): Search for anything in everything... ultra fast.
- [up](https://github.com/akavel/up): Ultimate Plumber is a tool for writing Linux pipes with instant live preview.
- [viddy](https://github.com/sachaos/viddy): 👀 A modern watch command. Time machine and pager etc.
- [vifm](https://github.com/vifm/vifm): Vim-like file manager.
- [vim as AppImage](https://github.com/vim/vim-appimage): vim
- [vim plugin manager](https://github.com/junegunn/vim-plug): Install plug.vim
- [visidata](https://github.com/saulpw/visidata): A terminal spreadsheet multitool for discovering and arranging data.
- [vivid](https://github.com/sharkdp/vivid): vivid is a generator for the LS_COLORS environment variable that controls the colorized output of ls, tree, fd, bfs, dust and many other tools.
- [watchexec](https://github.com/watchexec/watchexec): Executes commands in response to file modifications
- [xidel](https://github.com/benibela/xidel): Command line tool to download and extract data from HTML/XML pages or JSON-APIs, using CSS, XPath 3.0, XQuery 3.0, JSONiq or pattern matching. It can also create new or transformed XML/HTML/JSON documents.
- [xonsh](https://xon.sh/): XONSH is a Python-powered shell.
- [xq](https://github.com/jeffbr13/xq): Apply XPath expressions to XML, like jq does for JSONPath and JSON.
- [xsv](https://github.com/BurntSushi/xsv): xsv is a command line program for indexing, slicing, analyzing, splitting and joining CSV files. Commands should be simple, fast and composable.
- [yq](https://github.com/kislyuk/yq): yq: Command-line YAML/XML/TOML processor - jq wrapper for YAML, XML, TOML documents.
- [yq](https://github.com/mikefarah/yq): A lightweight and portable command-line YAML, JSON and XML processor. yq uses jq like syntax but works with yaml files as well as json and xml.
- [zellij](https://github.com/zellij-org/zellij): A terminal workspace with batteries included.
- [zenith](https://github.com/bvaisvil/zenith): In terminal graphical metrics for your \*nix system written in Rust.
- [zoxide](https://github.com/ajeetdsouza/zoxide): zoxide is a smarter cd command, inspired by z and autojump. It remembers which directories you use most frequently, so you can "jump" to them in just a few keystrokes. zoxide works on all major shells.

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
- [GNU parallel alternatives](https://www.gnu.org/software/parallel/parallel_alternatives.html#differences-between-gnu-parallel-and-alternatives)
