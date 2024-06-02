# bootslap

Forked https://github.com/mroth/bootslap

MacOS setup to mimic a PopOS dev experience.

## pre reqs
```sh
# set up ssh key
eval "$(ssh-agent -s)" # check agent is running
chmod 600 ~/.ssh/<key> # make key only read-writeable by current user
ssh-add ~/.ssh/<key>   # add private key
# clone this and other relevant repos
# run commands below
```

# Run
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install ansible
ansible-playbook -K config.yml brew.yml dots.yml
```
```
# config.yml configures MacOS preferences
# brew.yml installs Homebrew formulas and casks
# dots.yml symlinks dotfiles and custom settings
```

# TODO
- merge with PopOS dotfiles
- multi dev setup: how to solve different instances of postgresql?
- OS Settings
  - enable keyboard navigation
  - enable slack and chrome notifications
  - Dock settings: make it hidden and to the left by default
    - https://docs.ansible.com/ansible/latest/collections/community/general/osx_defaults_module.html
  - Appearance settings: highest resolution
  - fn keys
  - tap to click
  - accessibility / display: reduce transparency
  - no window tinting
- start skhd daemon after brew.yml
- add ssh keys and other secret configs (aws, github) setup
  - https://docs.ansible.com/ansible/latest/collections/ansible/builtin/fileglob_lookup.html
  - consider base64 encryption/decryption or requiring second private repo to be downloaded
  - maybe copy from secret repo here under .gitignored folders and do a conditional symlink (if folder exists)
  - include keychain in config file (pending test)
```sh
Host github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
```
- give permissions to Terminal, Yabai and SKHD
- add SSH agent (`ssh-add`) for GitHub key
- remove Finder from cmd+tab (app switcher) https://apple.stackexchange.com/questions/232371/el-capitan-remove-finder-from-application-switcher-cmd-tab