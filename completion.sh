

inputrc=~/.inputrc
if [  -f "$inputrc" ];
then
   echo "file $inputrc already exists"
else
   echo "set completion-ignore-case on">$inputrc
fi
