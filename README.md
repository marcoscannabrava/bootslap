# bootslap

Forked https://github.com/mroth/bootslap

MacOS setup to mimic my PopOS dev experience.

# Run
```sh
ansible-playbook -K config.yml brew.yml dots.yml
# config.yml configures MacOS preferences
# brew.yml installs Homebrew formulas and casks
# dots.yml symlinks dotfiles and custom settings
```

# TODO
- OS Settings
  - Dock settings: make it hidden and to the left by default
    - https://docs.ansible.com/ansible/latest/collections/community/general/osx_defaults_module.html
  - Appearance settings: highest resolution
  - fn keys
  - tap to click
  - shortcut to zoom window
- start skhd daemon after brew.yml
- merge with PopOS dotfiles
- add ssh keys and other secret configs (aws, github) setup
  - https://docs.ansible.com/ansible/latest/collections/ansible/builtin/fileglob_lookup.html
  - consider base64 encryption/decryption or requiring second private repo to be downloaded
  - maybe copy from secret repo here under .gitignored folders and do a conditional symlink (if folder exists)
- give permissions to Terminal, Yabai and SKHD