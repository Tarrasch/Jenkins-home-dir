#!/bin/bash
    REPOS="shakespeare persistent wai yesod"
    for repo in $REPOS
    do
      git clone http://github.com/yesodweb/$repo
    done


