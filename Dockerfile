FROM ubuntu:20.04

ENV TZ='America/New_York'
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /work

RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    git \
    libbz2-dev \
    libffi-dev \
    liblzma-dev \
    libncurses5-dev \
    libncursesw5-dev \
    libreadline-dev \
    libsqlite3-dev \
    libssl-dev \
    llvm \
    openssh-client \
    python-openssl \
    python \
    pipenv \
    tk-dev \
    unzip \
    wget \
    xz-utils \
    zip \
    zlib1g-dev  \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/pyenv/pyenv.git ~/.pyenv && \
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile && \
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile && \
    echo 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bash_profile

RUN mkdir /app
WORKDIR /app

ENTRYPOINT ["tail", "-f", "/dev/null"]
