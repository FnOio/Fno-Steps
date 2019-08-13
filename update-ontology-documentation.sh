
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
  -crossRef \
  -confFile $ontologyConfigFile \
  -lang $ontologyLang \
  -htaccess \
  -webVowl \
  -licensius \
  -rewriteBase $ontologyRewriteBase
}


function main {

if [ $# -ne 1 ];
then
  echo "Please provide an existing widoco configuration file"
  exit 1
fi

vocConfigFile=$1
vocFile="oslo-steps.owl"
vocOutputFolder="./ns/oslo-steps/0.2"
vocLang="en"
vocRewriteBase="ns/oslo-steps"


executeWidoco $vocFile $vocOutputFolder $vocConfigFile $vocLang $vocRewriteBase



}


main $@
