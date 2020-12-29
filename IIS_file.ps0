#0 create ./sync_local_folder

#====================
$paths = @("//ft3mv/confg","dsfsdf","sdgsdfsd")
#3 copy all files from IIS to Jenkins

foreaach ($p in $paths) {
    Copy-Item -Path "$p" -Destination "./sync_local_folder"  -Recurse -Force
}
pwd
#4 сравнение 
cd 
$out = (git status) | Out-String 
if ( $out -notlike "nothing to commit" ) {
    git commit –am "Config update"
    git push -u origin master
}



