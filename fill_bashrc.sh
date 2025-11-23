fname=~/.bashrc

pattern="alias ls='ls --color=auto'"
patternReplace="alias ll='ls -l'"


if grep -q -i "$patternReplace" ~/.bashrc; then
    echo "La ligne existe déjà dans le fichier."
else
    echo "Ajout de ligne avec sed"
    sed -i "/$pattern/a $patternReplace" $fname

    echo "Sourcer le fichier..."
    source $fname
    echo "_____ Nouveau contenu ($fname) ____"
    cat $fname
fi

