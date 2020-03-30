#!/bin/sh
# ================================================================== #
# Shell script to autoinstall Hexo & NexT & NexT website source.
# ================================================================== #
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo
echo "=============================================================="
echo " Installing Hexo & NPM modules..."
echo "=============================================================="
    npm install

echo
echo "=============================================================="
echo " Cloning NexT theme & Adding needed modules..."
echo "=============================================================="
    git clone https://github.com/theme-next/hexo-theme-next themes/next --depth=1

echo
echo "=============================================================="
echo " Checking Hexo version..."
echo "=============================================================="
    npx hexo -v
    cat package.json

echo
echo "=============================================================="
echo " Strarting Hexo server on \"http://localhost:4000\"..."
echo "=============================================================="
    npx hexo s
