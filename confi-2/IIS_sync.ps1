
echo " => Hi from Jenk!"

$out = (git status) | Out-String

echo " => this is OUT: $out"