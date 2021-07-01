## Example Formula

### Terms

#### Package
It is basically the script, application or tool that you want to install and use. 
example: [homebrew-test](https://github.com/Kiran01bm/homebrew-test)

#### Tap
A tap is a git repository containing 1 or more Formulas example: This repo.
**Note:** A tap must be prefixed with `homebrew-`.

#### Formula
A formula is a Ruby installation script that defines and installs your package on Mac OS. 

Since homebrew is Ruby based, the formula is a Ruby script and it typically just moves your package executable and resources into the various install directories.

#### Version
The version number of your package to be installed, e.g. v0.1

### Workflow
1. Setting up your Tap - Example: [kiran01bm/homebrew-formula-test](https://github.com/Kiran01bm/homebrew-formula-test/)
2. Creating the Formula - Example: [./homebrew-test.rb](./homebrew-test.rb)
3. Creating your Package - Example: [kiran01bm/homebrew-test](https://github.com/Kiran01bm/homebrew-test)
4. Installing and Using your Package. 

```
Setting up Tap:
ζ brew tap kiran01bm/formula-test 
==> Tapping kiran01bm/formula-test
Cloning into '/usr/local/Homebrew/Library/Taps/kiran01bm/homebrew-formula-test'...
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 0), reused 3 (delta 0), pack-reused 0
Receiving objects: 100% (3/3), done.
Tapped 1 formula (12 files, 6KB).
It looks like you tapped a private repository. To avoid entering your
credentials each time you update, you can use git HTTP credential
caching or issue the following command:
  cd /usr/local/Homebrew/Library/Taps/kiran01bm/homebrew-formula-test
  git remote set-url origin git@github.com:kiran01bm/homebrew-formula-test.git


Creating Formula:
ζ brew create https://github.com/Kiran01bm/homebrew-test/archive/refs/tags/v0.1.tar.gz
<<This generates a template formuala that needs to be amended>>


Installing Formula:
ζ brew install --build-from-source homebrew-test
Updating Homebrew...
==> Auto-updated Homebrew!
Updated 1 tap (snyk/tap).
==> Updated Formulae
Updated 1 formula.

==> Installing homebrew-test from kiran01bm/formula-test
==> Downloading https://github.com/Kiran01bm/homebrew-test/archive/refs/tags/v0.1.tar.gz
Already downloaded: /Users/kiran.muddukrishna/Library/Caches/Homebrew/downloads/8d1e76e1c0af7dd81498ca6616b18b281e1dfc27bf6cbafc7b3fc7dd6a75158e--homebrew-test-0.1.tar.gz
🍺  /usr/local/Cellar/homebrew-test/0.1: 4 files, 2.0KB, built in 4 seconds


Re-Install a specific version:
ζ brew reinstall homebrew-test
==> Downloading https://github.com/Kiran01bm/homebrew-test/archive/refs/tags/v0.1.tar.gz
Already downloaded: /Users/kiran.muddukrishna/Library/Caches/Homebrew/downloads/8d1e76e1c0af7dd81498ca6616b18b281e1dfc27bf6cbafc7b3fc7dd6a75158e--homebrew-test-0.1.tar.gz
==> Reinstalling kiran01bm/formula-test/homebrew-test
🍺  /usr/local/Cellar/homebrew-test/0.1: 4 files, 2.0KB, built in 4 seconds 


Location of the Installation on your MAC:
ζ t /usr/local/Cellar/homebrew-test
/usr/local/Cellar/homebrew-test
└── 0.1
    ├── INSTALL_RECEIPT.json
    └── bin
        ├── aash
        └── bbsh

2 directories, 3 files

Testing:
ζ aash
This is one
ζ bbsh
This is two


Uninstall the Formula:
ζ brew uninstall kiran01bm/formula-test/homebrew-test
Uninstalling /usr/local/Cellar/homebrew-test/0.1... (4 files, 2.0KB)
```