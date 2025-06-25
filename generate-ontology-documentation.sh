#!/usr/bin/env bash

set -x

widocoJarFile="widoco-1.4.26-jar-with-dependencies.jar"
function executeWidoco {

ontologyFile=$1
ontologyOutputFolder=$2
ontologyConfigFile=$3
ontologyLang=$4
ontologyRewriteBase=$5

  java -jar $widocoJarFile \
  -ontFile $ontologyFile \
  -outFolder $ontologyOutputFolder \
  -getOntologyMetadata \
  -oops \
  -rewriteAll \
  -confFile $ontologyConfigFile \
  -lang $ontologyLang \
  -webVowl \
  -htaccess \
  -licensius \
  -rewriteBase $ontologyRewriteBase

mv $ontologyOutputFolder/index-en.html $ontologyOutputFolder/index.html
}

function main {

# Create the version but also the latest version

vocOutputFolderVersion="./ns/fno-steps/0.1"
vocOutputFolderLatest="./ns/fno-steps/"
vocFile="fno-steps-v0.1.owl"
vocConfigFile="fno-steps-widoco.conf"
vocLang="en"
vocRewriteBaseVersion="/ns/fno-steps"
vocRewriteBaseLatest="/ns/fno-steps"

# Remove old dir
rm -rf ns/

executeWidoco $vocFile $vocOutputFolderLatest $vocConfigFile $vocLang $vocRewriteBaseLatest
executeWidoco $vocFile $vocOutputFolderVersion $vocConfigFile $vocLang $vocRewriteBaseVersion

}

main
