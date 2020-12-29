
$in_paths = @("/home/xt1/*","/home/xt2/*")
$out_paths = "./"

git config user.email "im4adm@gmail.com"
git config user.name "AltsGamer"
git checkout master

foreach ($p in $in_paths) {
    Copy-Item -Path $p -Destination $out_paths  -Recurse -Force
}

$out = (git status) | Out-String
Write-Output "GITI = $out"

if ( $out.Contains("nothing to commit") ) {
    echo " => Config has not changed!"
}
else {
    git add .
    git commit -m "Config update with Jankins Job"
    git push
    echo " => Config in Repo was updated!"
}
