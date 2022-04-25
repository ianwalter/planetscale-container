FROM node:18-buster as build

RUN wget https://github.com/planetscale/cli/releases/download/v0.51.0/pscale_0.51.0_linux_amd64.deb

FROM node:18-buster-slim

COPY --from=build pscale_0.51.0_linux_amd64.deb .
RUN dpkg -i pscale_0.51.0_linux_amd64.deb
