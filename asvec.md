# Asvec Homebrew Tap

## Install

Install with `brew install aerospike/tools/asvec`

Example output:

```
% brew install aerospike/tools/asvec             
==> Tapping aerospike/tools
Cloning into '/usr/local/Homebrew/Library/Taps/aerospike/homebrew-tools'...
remote: Enumerating objects: 6, done.
remote: Counting objects: 100% (6/6), done.
remote: Compressing objects: 100% (4/4), done.
remote: Total 6 (delta 1), reused 0 (delta 0), pack-reused 0 (from 0)
Receiving objects: 100% (6/6), done.
Resolving deltas: 100% (1/1), done.
Tapped 1 formula (12 files, 7.6KB).
==> Fetching aerospike/tools/asvec
==> Downloading https://github.com/aerospike/asvec/releases/download/v3.2.0/asvec-macos-amd64-3.2.0.zip
==> Downloading from https://objects.githubusercontent.com/github-production-release-asset-2e65be/...
##################################################################################################################################################################################################################### 100.0%
==> Installing asvec from aerospike/tools
🍺  /usr/local/Cellar/asvec/3.2.0: 4 files, 14.4MB, built in 2 seconds
==> Running `brew cleanup asvec`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
```

## Check

Open a new terminal window and run:

```
% asvec version
```

## Upgrading

`brew upgrade aerospike/tools/asvec`

## Downgrading / Upgrading to specific versions

Install latest version:

```
% brew update

% brew install aerospike/tools/asvec

% brew unlink asvec && brew link --overwrite asvec
```

Install older version:

```
% brew update

% brew install aerospike/tools/asvec@1.0.0

% brew unlink asvec@1.0.0 && brew link --overwrite asvec@1.0.0
```

Install newer version:

```
% brew update

% brew install aerospike/tools/asvec@2.0.0

% brew unlink asvec@2.0.0 && brew link --overwrite asvec@2.0.0
``` 