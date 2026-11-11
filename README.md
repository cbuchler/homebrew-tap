# Charles Buchler's Homebrew tap

Homebrew packages for [mdview](https://github.com/cbuchler/mdview).
The first formula and bottles are being prepared.

## Maintainers

Submit formula updates as pull requests. Native CI builds and tests source
installations and bottles on Linux and macOS, on x64 and ARM64. It also checks
protected rendering outside Homebrew's test sandbox.

After reviewing all four successful jobs, run the `brew pr-pull` workflow
with the PR number and its full reviewed head SHA. It publishes the bottle
files and commits their checksums using Homebrew's publication tools.
Run `Verify published bottles` after publication before advertising installation.

See [mdview's Homebrew delivery guide](https://github.com/cbuchler/mdview/blob/main/docs/homebrew.md).
