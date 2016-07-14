cd $HOME/SPOJ/

RED='\033[1;31m'
NC='\033[0m'
git config credential.helper 'cache --timeout=86400' #timeout credentials after 2days
echo -e "${RED}Completing the PULL Request........${NC}"
git pull
git add .
IFS= read -r -p "No of files to PUSH :> " num_file
files=1
if [ $num_file -ne $files ]
then
  commit_line=$(command date +%Y-%m-%d)
  echo "Commit line as :> $commit_line Solutions"

else
  echo -n "ENTER the Commit Line :> "
  read commit_line
fi

git commit -m $commit_line
git push origin master

echo -e "${RED}BYE Mr. karan${NC}"
sleep 2
