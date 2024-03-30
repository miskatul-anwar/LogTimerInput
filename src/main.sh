it=$1
for ((i = 1; i <= $it; i++)); do
	figlet $i | lolcat
	n=$(tput cols)
	for ((j = 0; j < n; j++)); do
		printf "="
	done
	printf "\n"
	cowsay "Ok, now I'm going to commit and push $i"
	printf "\n"
	date >>../res/log.txt
	git add ../res/log.txt
	git commit -m "log $i"
	git push origin main
	for ((j = 0; j < n; j++)); do
		printf "="
	done
	printf "\n"
done
