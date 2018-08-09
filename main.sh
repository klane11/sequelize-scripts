source "$TOOLBELT_DIRECTORY/personal.sh" 2> /dev/null

for f in $TOOLBELT_DIRECTORY/environment_variables/*; do
   . $f
done

for f in $TOOLBELT_DIRECTORY/scripts/*; do
   . $f
done
