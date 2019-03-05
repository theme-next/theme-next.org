#!/bin/sh
# ============================================================== #
# Shell script to autodeploy Hexo & NexT & NexT website source.
# ============================================================== #
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin:$PATH
export PATH

# https://en.wikipedia.org/wiki/ANSI_escape_code
#red='\033[0;31m'
#green='\033[0;32m'
#brown='\033[0;33m'
#blue='\033[0;34m'
#purple='\033[0;35m'
cyan='\033[0;36m'
#lgray='\033[0;37m'
#dgray='\033[1;30m'
lred='\033[1;31m'
lgreen='\033[1;32m'
yellow='\033[1;33m'
lblue='\033[1;34m'
lpurple='\033[1;35m'
lcyan='\033[1;36m'
white='\033[1;37m'
norm='\033[0m'
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

# NexT website repo directory
DIR_NAME="next-source"

echo
echo "=============================================================="
echo " ${yellow}Checking starting directory structure...${norm}"
echo "=============================================================="
    echo "${lcyan}`pwd`${norm}"
    echo "size `du -sh .`"
    du -sh *
    ls -ls

echo
echo "=============================================================="
echo " ${lgreen}Installing 'hexo-cli'...${norm}"
echo "=============================================================="
     echo "${yellow}Node version:${norm} ${lcyan}`node -v`${norm}"
     echo "${yellow}NPM version:${norm} ${lcyan}`npm -v`${norm}"
     npm install hexo-cli -g --silent

echo
echo "=============================================================="
echo " ${lgreen}Installing Hexo & NPM modules...${norm}"
echo "=============================================================="
    mkdir -v $DIR_NAME
    cd $DIR_NAME
    curl --silent -L https://api.github.com/repos/hexojs/hexo-starter/tarball | tar -zxv -C ./ --strip-components=1
    npm install --silent

echo
echo "=============================================================="
echo " ${yellow}Checking Hexo version...${norm}"
echo "=============================================================="
    hexo -v

echo
echo "=============================================================="
echo " ${lred}Removing unneeded Hexo files...${norm}"
echo "=============================================================="
    rm -vf _config.yml
    rm -vf .gitmodules
    rm -vfr source
    rm -vfr themes/landscape

echo
echo "=============================================================="
echo " ${lgreen}Updating or Installing NexT theme & Needed modules...${norm}"
echo "=============================================================="
echo "${yellow}NexT:${norm} ${lcyan}`git -C themes/next pull || git clone https://github.com/theme-next/hexo-theme-next themes/next`${norm}"

echo "${yellow}jquery-lazyload:${norm} ${lcyan}`git -C themes/next/source/lib/jquery_lazyload pull || git clone https://github.com/theme-next/theme-next-jquery-lazyload themes/next/source/lib/jquery_lazyload`${norm}"

echo
echo "=============================================================="
echo " ${lgreen}Replacing default renderer & Installing needed plugins...${norm}"
echo "=============================================================="
    npm un hexo-renderer-marked --save --silent
    npm i hexo-renderer-kramed --save --silent
    npm i hexo-symbols-count-time --save --silent
    npm i hexo-generator-searchdb --save --silent
    npm i hexo-generator-feed --save --silent

echo
echo "=============================================================="
echo " ${lpurple}Creating symlinks & Schemes directory...${norm}"
echo "=============================================================="
    ln -sv ../source source
    ln -sv ../_config.yml _config.yml
    mkdir -v schemes

echo
echo "=============================================================="
echo " ${lpurple}Generating content for 'test.theme-next.org' subdomain...${norm}"
echo "=============================================================="
    hexo config url https://test.theme-next.org
    echo "${yellow}Setted url:${norm} ${lcyan}`hexo config url`${norm}"

    hexo config theme_config.scheme Muse
    echo "${yellow}Setted scheme:${norm} ${lcyan}`hexo config theme_config.scheme`${norm}"

    hexo clean && hexo g --silent
    echo "${lred}`mv -v public schemes/test`${norm}"

echo
echo "=============================================================="
echo " ${lpurple}Generating content for 'muse.theme-next.org' subdomain...${norm}"
echo "=============================================================="
    hexo config url https://muse.theme-next.org
    echo "${yellow}Setted url:${norm} ${lcyan}`hexo config url`${norm}"

    hexo config theme_config.scheme Muse
    echo "${yellow}Setted scheme:${norm} ${lcyan}`hexo config theme_config.scheme`${norm}"

    hexo clean && hexo g --silent
    echo "${lred}`mv -v public schemes/muse`${norm}"

echo
echo "=============================================================="
echo " ${lpurple}Generating content for 'mist.theme-next.org' subdomain...${norm}"
echo "=============================================================="
    hexo config url https://mist.theme-next.org
    echo "${yellow}Setted url:${norm} ${lcyan}`hexo config url`${norm}"

    hexo config theme_config.scheme Mist
    echo "${yellow}Setted scheme:${norm} ${lcyan}`hexo config theme_config.scheme`${norm}"

    hexo clean && hexo g --silent
    echo "${lred}`mv -v public schemes/mist`${norm}"

echo
echo "=============================================================="
echo " ${lpurple}Generating content for 'pisces.theme-next.org' subdomain...${norm}"
echo "=============================================================="
    hexo config url https://pisces.theme-next.org
    echo "${yellow}Setted url:${norm} ${lcyan}`hexo config url`${norm}"

    hexo config theme_config.scheme Pisces
    echo "${yellow}Setted scheme:${norm} ${lcyan}`hexo config theme_config.scheme`${norm}"

    hexo clean && hexo g --silent
    echo "${lred}`mv -v public schemes/pisces`${norm}"

echo
echo "=============================================================="
echo " ${lpurple}Generating content for 'gemini.theme-next.org' subdomain...${norm}"
echo "=============================================================="
    hexo config url https://gemini.theme-next.org
    echo "${yellow}Setted url:${norm} ${lcyan}`hexo config url`${norm}"

    hexo config theme_config.scheme Gemini
    echo "${yellow}Setted scheme:${norm} ${lcyan}`hexo config theme_config.scheme`${norm}"

    hexo clean && hexo g --silent
    echo "${lred}`mv -v public schemes/gemini`${norm}"

echo
echo "=============================================================="
echo " ${lpurple}Prepairing content for main 'theme-next.org' domain...${norm}"
echo "=============================================================="
    hexo config url https://theme-next.org
    echo "${yellow}Setted url:${norm} ${lcyan}`hexo config url`${norm}"

    hexo config theme_config.scheme Gemini
    echo "${yellow}Setted scheme:${norm} ${lcyan}`hexo config theme_config.scheme`${norm}"

    cp -R schemes/gemini public

    echo "${yellow}robots.txt:${norm}"
    echo "User-agent: *
Disallow: /page/*/
Disallow: /archives/*
Disallow: /schemes/*
Host: https://theme-next.org" > public/robots.txt
    cat public/robots.txt

echo
echo "=============================================================="
echo " ${lpurple}Moving all schemes to public directory...${norm}"
echo "=============================================================="
    echo "${lred}`mv -v schemes public`${norm}"

echo
echo "=============================================================="
echo " ${yellow}Checking 'repo' directory structure...${norm}"
echo "=============================================================="
    cd ../
    echo "${lcyan}`pwd`${norm}"
    du -sh *
    ls -ls

echo
echo "=============================================================="
echo " ${yellow}Checking '$DIR_NAME' directory structure...${norm}"
echo "=============================================================="
    cd $DIR_NAME
    echo "${lcyan}`pwd`${norm}"
    du -sh *
    ls -ls

echo
echo "=============================================================="
echo " ${yellow}Checking 'public' directory structure...${norm}"
echo "=============================================================="
    cd public
    echo "${lcyan}`pwd`${norm}"
    du -sh *
    ls -ls

echo
echo "=============================================================="
echo " ${yellow}Checking 'schemes' directory structure...${norm}"
echo "=============================================================="
    cd schemes
    echo "${lcyan}`pwd`${norm}"
    du -sh *
    ls -ls

#echo
#echo "=============================================================="
#echo " ${yellow}Checking Netlify redirects...${norm}"
#echo "=============================================================="
#    cat ../../../netlify.toml

echo
echo "=============================================================="
echo " ${lgreen}Done. Beginning to deploy site...${norm}"
echo "=============================================================="