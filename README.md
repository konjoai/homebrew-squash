# homebrew-squash

Homebrew tap for [squash-ai](https://getsquash.dev) — automated EU AI Act compliance for ML teams.

## Install

```sh
brew tap konjoai/squash
brew install squash-ai
```

Or in one step:

```sh
brew install konjoai/squash/squash-ai
```

## Usage

```sh
squash attest ./my-model --policy eu-ai-act
squash report --format pdf
squash sbom ./my-model
```

Full docs: [docs.getsquash.dev](https://docs.getsquash.dev)

## Upgrade

```sh
brew upgrade squash-ai
```

## Uninstall

```sh
brew uninstall squash-ai
brew untap konjoai/squash
```

## Formula path

`Formula/squash-ai.rb`

## Submitting to homebrew-core

Once this tap has seen regular use, submit to [homebrew/homebrew-core](https://github.com/Homebrew/homebrew-core) so users can install with just `brew install squash-ai` (no tap required). Follow the [New Formula Checklist](https://docs.brew.sh/New-Formula-Checklist) and run `brew audit --new squash-ai` before opening the PR.
