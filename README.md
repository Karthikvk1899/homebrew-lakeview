# Homebrew tap for lakeview

This tap installs the standalone [lakeview](https://github.com/Karthikvk1899/lakeview)
CLI on Apple Silicon macOS and x86-64 Linux.

```sh
brew install Karthikvk1899/lakeview/lakeview
lakeview --version
```

You can also `brew tap Karthikvk1899/lakeview`, then `brew install Karthikvk1899/lakeview/lakeview`.

Packages come from versioned GitHub releases with SHA256 checksums. The installed
bundle runs locally. It does not require a Python environment or a data service.

The current binary release does not include macOS Intel or Linux ARM. For those
platforms, use `pip install lakeview-cli` with Python 3.11 or newer.

Formula updates are tested on an Apple Silicon GitHub runner.
The project license is Apache-2.0.
