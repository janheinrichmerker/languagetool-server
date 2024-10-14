[![CI status](https://img.shields.io/github/actions/workflow/status/janheinrichmerker/languagetool-server/ci.yml?branch=master&style=flat-square)](https://github.com/janheinrichmerker/languagetool-server/actions/workflows/ci.yml)
[![GitHub Release](https://img.shields.io/github/v/release/janheinrichmerker/languagetool-server?style=flat-square)](https://github.com/janheinrichmerker/languagetool-server/releases)
[![Issues](https://img.shields.io/github/issues/janheinrichmerker/languagetool-server?style=flat-square)](https://github.com/janheinrichmerker/languagetool-server/issues)
[![Pull requests](https://img.shields.io/github/issues-pr/janheinrichmerker/languagetool-server?style=flat-square)](https://github.com/janheinrichmerker/languagetool-server/pulls)
[![Commit activity](https://img.shields.io/github/commit-activity/m/janheinrichmerker/languagetool-server?style=flat-square)](https://github.com/janheinrichmerker/languagetool-server/commits)
[![Maintenance](https://img.shields.io/maintenance/yes/2024?style=flat-square)](https://github.com/janheinrichmerker/languagetool-server/graphs/contributors)
[![License](https://img.shields.io/github/license/janheinrichmerker/languagetool-server?style=flat-square)](LICENSE)

# ✍️ languagetool-server

An opinionated [LanguageTool](https://languagetool.org/) server customized for scientific writing.

## Features

- All grammar chkecking rules of the free [LanguageTool](https://languagetool.org/) version
- > TODO

## Usage

> TODO: Usage for end users (e.g., browser extensions and configuration)

```shell
curl --data "language=en-US&text=a simple test" http://localhost:8010/v2/check
```

## Deployment

This LanguageTool server can be deployed on a Kubernetes cluster as a Helm chart.

> TODO: Installation and uninstallation of Helm chart

## Development

To contribute to this tool, just [create a codespace](https://codespaces.new/janheinrichmerker/languagetool-server) from this repository or clone it in an editor that supports [Dev Containers](https://containers.dev/) (e.g., [Visual Studio Code](https://code.visualstudio.com/learn/develop-cloud/containers) or [IntelliJ](https://www.jetbrains.com/help/idea/connect-to-devcontainer.html)).
All required dependencies will automatically be installed for you.

> TODO: Build instructions

### n-grams download

<https://languagetool.org/download/ngram-data/>

```shell
docker build -f ngrams-download.dockerfile . -t ngrams-download
docker run -v ./example/ngrams-urls:/ngrams-urls -v ./example/ngrams-zips:/ngrams-zips -v ./example/ngrams:/ngrams ngrams-download
```

### LanguageTool server

```shell
docker build -f languagetool-server.dockerfile . -t languagetool-server
docker run -v ./example/ngrams:/ngrams -p 8010:8010 languagetool-server
```

Once ready, [create a pull request](https://github.com/janheinrichmerker/languagetool-server/compare) with your changes. We're happy to any contribution!

## Support

If you hit any problems using the tool, please file an [issue](https://github.com/janheinrichmerker/languagetool-server/issues). We're happy to help!

## License

This repository is released under the [MIT license](LICENSE).
If you like this tool, consider [sponsoring me](https://github.com/sponsors/heinrichreimer).
