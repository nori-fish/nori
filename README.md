# 🥢 nori

A highly-opinionated fisher plugin that enables automatic installation of CLI tools.

## Installation

```fish
fisher install nori-fish/nori
```

## Command aliases

During installation, nori will create aliases for all [supported commands](#supported-commands).

<figure>

[![asciicast](https://asciinema.org/a/z8bWeUAc3OhJbKOcWtfyuj4Ja.svg)](https://asciinema.org/a/z8bWeUAc3OhJbKOcWtfyuj4Ja)

<figcaption>

**Example:** Automatically installing <code>gh</code>

</figcaption>
</figure>

### Supported commands

Each supported command has its own fish plugin and associated repository, which will be
installed when first run.

You can view the [full list of nori plugins on GitHub](https://github.com/orgs/nori-fish/repositories?q=nori-plugin). Alternatively, if nori is installed, you can get a list of available plugins using the following command:

```fish
_nori_remote_plugins
```
