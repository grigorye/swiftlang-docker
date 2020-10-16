FROM swiftlang/swift:nightly

RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update && \
    apt-get -q install -y \
    libcurl4-openssl-dev \
    && rm -r /var/lib/apt/lists/*
