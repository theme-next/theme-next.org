#!/bin/sh
# ================================================================== #
# Shell script to autoinstall Hexo & NexT & NexT website source.
# ================================================================== #
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

red='\033[00;31m'
green='\033[00;32m'
yellow='\033[00;33m'
blue='\033[01;34m'
norm='\033[00m'
bold='\033[1m'

column=50
alignment="\\033[${column}G"

# Status variables.
C_OK="$alignment [ ${green} OK ${norm} ]\n"
C_OK_BOLD="$alignment ${green}[ ${bold} OK ${green} ]${norm}\n"
C_NO="$alignment [ ${red} NO ${norm} ]\n"
C_NO_BOLD="$alignment ${red}[ ${bold} NO ${red} ]${norm}\n"

# Arguments.
EXPECTED_ARGS=1

if [ $# -ne $EXPECTED_ARGS ]; then
    read -p "Enter root directory name for your blog (press enter to default \"theme-next.org\"): " DIR_NAME
    DIR_NAME=${DIR_NAME:-theme-next.org}
    echo
    echo -e "${yellow}For command line usage:${norm} $0 ${blue}blogname ${norm}"
else
    DIR_NAME="$1"
fi

echo
echo "=============================================================="
echo " Installing Hexo & NPM modules..."
echo "=============================================================="
    mkdir $DIR_NAME
    cd $DIR_NAME
    curl -L https://api.github.com/repos/hexojs/hexo-starter/tarball | tar -zxv -C ./ --strip-components=1
    npm install

echo
echo "=============================================================="
echo " Checking Hexo version..."
echo "=============================================================="
    hexo -v

echo
echo "=============================================================="
echo " Removing unneeded Hexo files..."
echo "=============================================================="
    rm -vf _config.yml
    rm -vf .gitmodules
    rm -vfr source
    rm -vfr themes/landscape

echo
echo "=============================================================="
echo " Cloning NexT theme & Adding needed modules..."
echo "=============================================================="
    git clone https://github.com/theme-next/hexo-theme-next themes/next
    git clone https://github.com/theme-next/theme-next-lazyload themes/next/source/lib/lazyload

echo
echo "=============================================================="
echo " Replacing default renderer & Installing needed plugins..."
echo "=============================================================="
    npm un hexo-renderer-marked --save
    npm i hexo-renderer-kramed --save
    npm i hexo-deployer-git --save
    npm i hexo-symbols-count-time --save

echo
echo "=============================================================="
echo " Cloning NexT website \"source\" branch & Creating symlinks..."
echo "=============================================================="
    git clone -b source --single-branch https://github.com/theme-next/theme-next.org.git next-source
    ln -sv next-source/source source
    ln -sv source/../_config.yml _config.yml

echo
echo "=============================================================="
echo " Strarting Hexo server on \"http://localhost:4000\"..."
echo "=============================================================="
    hexo s
echo
