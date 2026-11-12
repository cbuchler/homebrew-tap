# Charles Buchler's Homebrew tap

Homebrew packages for [mdview](https://github.com/cbuchler/mdview).

```sh
brew install cbuchler/tap/mdview
brew upgrade cbuchler/tap/mdview
```

Prebuilt bottles are available for Linux and macOS, on x64 and ARM64. They do
not need Node or Bun installed. Source builds use pinned, checksummed build tools.
Use `brew uninstall mdview` to remove the package.

Linux needs working Bubblewrap namespaces, a reachable systemd user manager,
and cgroup v2 memory/task controls. Installation checks executable availability;
mdview checks protection when rendering. See the
[runtime requirements](https://github.com/cbuchler/mdview#limits-and-failure-recovery).

The [v0.3.0 public bottle checks](https://github.com/cbuchler/homebrew-tap/actions/runs/43123350705)
passed on Ubuntu 26.04 and macOS 26, for both architectures. Other OS versions
are not validated. Cross-version upgrade validation starts with the next release.

## Maintainers

Submit formula updates as pull requests. Native CI builds and tests source
installations and bottles on Linux and macOS, on x64 and ARM64. It also checks
protected rendering outside Homebrew's test sandbox.

After reviewing all four successful jobs, run the `brew pr-pull` workflow
with the PR number and its full reviewed head SHA. It publishes the bottle
files and commits their checksums using Homebrew's publication tools.
Run `Verify published bottles` after publication before advertising installation.

See [mdview's Homebrew delivery guide](https://github.com/cbuchler/mdview/blob/main/docs/homebrew.md).
