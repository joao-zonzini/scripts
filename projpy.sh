#!/usr/bin/env bash

nome_do_programa="$1"

touch "$nome_do_programa"

chmod +x "$nome_do_programa"

echo "#!/usr/bin/python3" > "$nome_do_programa"

{
	printf "# %s \n# descrip\n" "$nome_do_programa" 
	echo "# $(whoami) $(date +%D)"
} >> "$nome_do_programa"
clear
cat "$nome_do_programa"
printf "* * * * * * * *\n"
ls -lah "$nome_do_programa"
printf "* * * * * * * *\n"
echo "Pronto!"
