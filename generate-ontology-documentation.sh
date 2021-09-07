
widocoJarFile="widoco-1.4.15-jar-with-dependencies.jar"
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
  -htaccess \
  -webVowl \
  -licensius \
  -rewriteBase $ontologyRewriteBase
}


function main {

# Create the version but also the latest version

vocOutputFolderVersion="./ns/oslo-steps/0.2"
vocOutputFolderLatest="./ns/oslo-steps/"
vocFile="oslo-steps-v0.2.owl"
vocConfigFile="oslo-steps-widoco.conf"
vocLang="en"
vocRewriteBaseVersion="/ns/oslo-steps"
vocRewriteBaseLatest="/ns/oslo-steps"

executeWidoco $vocFile $vocOutputFolderLatest $vocConfigFile $vocLang $vocRewriteBaseLatest
executeWidoco $vocFile $vocOutputFolderVersion $vocConfigFile $vocLang $vocRewriteBaseVersion


}


main
