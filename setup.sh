#!/bin/sh
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable

source ~/.rvm/bin/rvm

rvm install ruby-2.3.0
rvm use ruby-2.3.0
rvm gemset create automation
rvm gemset use automation
gem install bundle
bundle install
rake db:create
