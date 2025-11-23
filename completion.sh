

inputrc=~/.inputrc
if [  -f "$inputrc" ];
then
   echo "file $inputrc already exists"
else
   echo "File $inputrc will be created"
   echo "set completion-ignore-case on">$inputrc
   echo "Please restart terminal..."
fi
