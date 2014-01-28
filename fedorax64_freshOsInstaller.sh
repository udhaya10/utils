#!/bin/bash

yum install 'firefox' -y
yum group install 'Development Tools' -y
yum grouplist

# Lets clone the git repo itself 
git clone https://github.com/udhaya10/utils
cd utils

# Install ngnix
# Add its repo to standard repo scan list
# Repo only for centOS
# cp freshinstall/repos/ngnix/nginx.repo /etc/yum.repos.d/
# chmod 644 /etc/yum.repos.d/nginx.repo

# Install ruby / Rake will automatically install ruby
yum install rake -y 

# Eclipse
  
  # Install Eclipse
  yum install  eclipse -y

  # maven to eclipse integration
  yum install eclipse-m2e-* -y

  # ruby integration
  yum install eclipse-dltk-ruby.noarch

  # python Integration
  yum install eclipse-pydev* -y

  
# Install vim color schemas etc
sh -c "`curl -fsSL https://raw.github.com/skwp/dotfiles/master/install.sh`"

