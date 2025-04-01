# Aerolab Homebrew Tap

## Install

Install with `brew install aerospike/tools/aerolab`

Example output:

```
% brew install aerospike/tools/aerolab             
==> Tapping aerospike/tools
Cloning into '/usr/local/Homebrew/Library/Taps/aerospike/homebrew-tools'...
remote: Enumerating objects: 6, done.
remote: Counting objects: 100% (6/6), done.
remote: Compressing objects: 100% (4/4), done.
remote: Total 6 (delta 1), reused 0 (delta 0), pack-reused 0 (from 0)
Receiving objects: 100% (6/6), done.
Resolving deltas: 100% (1/1), done.
Tapped 1 formula (12 files, 7.6KB).
==> Fetching aerospike/tools/aerolab
==> Downloading https://github.com/aerospike/aerolab/releases/download/7.6.3/aerolab-macos-amd64-7.6.3.zip
==> Downloading from https://objects.githubusercontent.com/github-production-release-asset-2e65be/211975532/3b72e062-2de2-4bdf-958a-789b11861bda?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=releaseassetproduction%2F
##################################################################################################################################################################################################################### 100.0%
==> Installing aerolab from aerospike/tools
🍺  /usr/local/Cellar/aerolab/7.6.3: 4 files, 127MB, built in 4 seconds
==> Running `brew cleanup aerolab`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
```

## Check

Open a new terminal window and run:

```
% aerolab version
v7.6.3-f46a025
```

## Upgrading

`brew upgrade aerospike/tools/aerolab`

## Downgrading / Upgrading to specific versions

Install latest version:

```
% brew update

% brew install aerospike/tools/aerolab

% brew unlink aerolab && brew link --overwrite aerolab

% aerolab version
v7.6.3-f46a025
```

Install older version:

```
% brew update

% brew install aerospike/tools/aerolab@7.6.2

% brew unlink aerolab@7.6.2 && brew link --overwrite aerolab@7.6.2

% aerolab version
v7.6.2-e548431
```

Install newer version:

```
% brew update

% brew install aerospike/tools/aerolab@7.6.3

% brew unlink aerolab@7.6.3 && brew link --overwrite aerolab@7.6.3

% aerolab version
v7.6.3-f46a025
```
