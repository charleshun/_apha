FROM amd64/alpine:3.18

RUN apk add --no-cache \
        bash icu-libs krb5-libs libgcc libintl libssl1.1 libstdc++ zlib \
        curl \
        icu-data-full \        
        ca-certificates \
        \        
        libssl1.1 \
        libstdc++6 \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin -Channel 8.0 -InstallDir /usr/share/dotnet && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
#RUN curl -sSL https://dot.net/v1/dotnet-install.sh | sh /dev/stdin -Channel 8.0 -InstallDir /usr/share/dotnet && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet

