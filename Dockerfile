FROM alpine:3.16

LABEL maintainer="gabekamalakis@protonmail.com"
LABEL version="0.1"
LABEL description="Containerized Neovim"

# Lazygit variables
ARG LG='lazygit'
ARG LG_GITHUB='https://github.com/jesseduffield/lazygit/releases/download/v0.31.4/lazygit_0.31.4_Linux_x86_64.tar.gz'
ARG LG_ARCHIVE='lazygit.tar.gz'

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
	sudo \
	shadow \
	su-exec \
    autoconf \
    automake \
    build-base \
    bash \
    curl \
    gcc \
    git \
    grep \
	unzip \
	tree \
	fd \
	rust \
	tar \
	gzip \
    linux-headers \
    make \
    musl-dev\
    neovim \
	fzf \
    jpeg-dev \
	ripgrep \
    zlib-dev \
	go \
	meson \
	luarocks \
    npm \
	xclip \
	lazygit \
	vifm \
	python3 \
	py3-pip \
    yarn && \
    rm -rf /var/cache/apk/*

# Install Vim Plug.
RUN curl -fLo /root/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Create directory for Neovim configuration files.
RUN mkdir -p /root/.config/nvim

# Copy Neovim configuration files.
COPY ./config/ /root/.config/nvim/

# Install Neovim extensions.
RUN nvim --clean '+source /root/.config/nvim/init.vim' --headless +PlugInstall +qall

# Install Language Servers
# RUN nvim --headless +LspInstall elixerls tsserver rust_analyzer cssls kotlinls gols

# Bash aliases
# COPY ./home/ /root/

# Create directory for projects (there should be mounted from host).
RUN mkdir -p /root/workspace

# Set default location after container startup.
WORKDIR /root/workspace

# Avoid container exit.
CMD ["tail", "-f", "/dev/null"]
