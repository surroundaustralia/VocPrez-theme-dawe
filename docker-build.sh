# Mac
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

echo "prepare a deployment folder"
mkdir $VP_HOME/deploy
cp -r $VP_HOME/vocprez/* $VP_HOME/deploy

echo "copy DAWE style and templates to VocPrez deploy folder"
cp style/* $VP_HOME/deploy/view/style
cp templates/* $VP_HOME/deploy/view/templates

echo "set the VocPrez config"
sed 's#$SPARQL_ENDPOINT#'"$SPARQL_ENDPOINT"'#' $VP_THEME_HOME/config.py > $VP_THEME_HOME/config_updated.py
sed -i 's#$SPARQL_USERNAME#'"$SPARQL_USERNAME"'#' $VP_THEME_HOME/config_updated.py
sed -i 's#$SPARQL_PASSWORD#'"$SPARQL_PASSWORD"'#' $VP_THEME_HOME/config_updated.py
sed -i 's#$SYSTEM_BASE_URI#'"$SYSTEM_BASE_URI"'#' $VP_THEME_HOME/config_updated.py
mv $VP_THEME_HOME/config_updated.py $VP_HOME/deploy/_config/__init__.py

echo "run Dockerfile there"
docker build -t vocprez-dawe -f $VP_HOME/Dockerfile $VP_HOME

echo "clean-up"
rm -r $VP_HOME/deploy

echo "complete"