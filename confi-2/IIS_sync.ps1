
$out_paths = "./confi-2"

cd $out_paths

$out = (git status) | Out-String

echo " => this is OUT: $out"