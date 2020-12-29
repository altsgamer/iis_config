
$in_paths = @("/home/xt1/*","/home/xt2/*")
$out_paths = "./"

foreach ($p in $in_paths) {
    Copy-Item -Path $p -Destination $out_paths  -Recurse -Force
}

git config user.email "Jankins@mail.ru"
git config user.name "Jan Kins"

$out = (git status) | Out-String
echo "GITI = $out"

if ( $out.Contains("nothing to commit") ) {
    echo " => Config has not changed!"
}
else {
    git add .
    git commit -m "Config update with Jankins Job"
    git status
    git push origin master
    echo " => Config in Repo was updated!"
}