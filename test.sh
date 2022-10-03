while IFS= read -r passwd; do
	echo "$passwd" | grep captj* | cut -d : -f1,2,3,4,5,6; 
done < "/etc/passwd"
