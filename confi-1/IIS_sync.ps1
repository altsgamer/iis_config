
$in_paths = @("c:\Users\Ivan_Moiseev\Downloads\remote_config_folder\confi-1\","c:\Users\Ivan_Moiseev\Downloads\remote_config_folder\confi-2\")
$out_paths = "./iis_config"

git clone git@github.com:altsgamer/iis_config.git

foreach ($p in $in_paths) {
    Copy-Item -Path "$p" -Destination $out_paths  -Recurse -Force
}

cd $out_paths

$out = (git status) | Out-String

if ( $out.Contains("nothing to commit") ) {
    echo " => Config has not changed!"
}
else {
    git add .
    git commit -m "Config update"
    git push -u origin master
    echo " => Config in Repo was updated!"
}
