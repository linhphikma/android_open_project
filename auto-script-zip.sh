file="repo-list-project.txt"
while IFS= read -r line
do
	echo "https://github.com/$line.git"
	curl -L http://github.com/$line/archive/master.zip > ${line%/*}---${line##*/}.zip
done <"$file"
