Jenkins home directory for yesod projects.

I add setup documentation here, in case I or anybody else wants
to setup this server on their own. Good luck readers of the future!

## Good to run commands

I started by cloning

    sudo git clone git@github.com:Tarrasch/Jenkins-home-dir.git

### Permissions

Usually stuff are screwed as your git repo is owned by you,
most other files by `jenkins` and `root` has created the files.

    sudo chown jenkins *
    sudo chown $USER .gitignore .git
    sudo chown --recursive $USER .git/
    sudo chown --recursive  jenkins jobs/ plugins/ updates/ userContent/ users/ workspace/



### Commands to run as jenkins

Before becoming `jenkins` user, install a old yet native `cabal` if needed

    sudo apt-get install cabal-install

Now become `jenkins`. After `sudo su jenkins`

    git config --global user.email miffoljud@gmail.com
    git config --global user.name "Arash"
    ./clone_repos.sh
    cabal install cabal-install --cabal-lib-version=1.10.1.0 # or whatever version u use

Now make sure `cabal --version` responds what you expected.

### Restarting the jenkins service

    sudo /etc/init.d/jenkins restart

### List of good to install libraries

    sudo apt-get install libfcgi-dev
