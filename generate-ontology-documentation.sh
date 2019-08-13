
widocoJarFile="widoco-1.4.11-jar-with-dependencies.jar"
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

# Create the initial version under 0.1 but also the latest version

vocOutputFolderVersion="./ns/oslo-steps/0.1"
vocOutputFolderLatest="./ns/oslo-steps/"
vocFile="oslo-steps.owl"
vocConfigFile="oslo-steps-widoco.conf"
vocLang="en"
vocRewriteBaseVersion="/ns/oslo-steps"
vocRewriteBaseLatest="/ns/oslo-steps"


executeWidoco $vocFile $vocOutputFolderLatest $vocConfigFile $vocLang $vocRewriteBaseLatest
executeWidoco $vocFile $vocOutputFolderVersion $vocConfigFile $vocLang $vocRewriteBaseVersion



}


main
