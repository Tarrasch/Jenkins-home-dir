#!/bin/bash
    REPOS="hamlet persistent wai yesod"
    for repo in $REPOS
    do
      git clone http://github.com/yesodweb/$repo
    done


