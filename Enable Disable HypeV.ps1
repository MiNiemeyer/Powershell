$folder = "D:\Benutzer\Michael\Musik\Hörbuch\Stephen King\Wahn\Teil 3"
$splitNum = 10
$items = dir "$folder\*.*" | ?{!$_.PSIsContainer}
$folderCount = [Math]::floor(($items.Count / $splitNum))
if (($items.Count) -ge $splitNum ){
    for ($i=0;$i -lt $folderCount ; $i++){
        $subFolder = "$folder\part$($i+1)"
        if (!(Test-Path -Path $subFolder)){ mkdir $subFolder}
        for ($j=$i*$splitNum;$j -lt ($i*$splitNum)+$splitNum ; $j++){
            $items[$j].MoveTo("$subFolder\$($items[$j].Name)")
        }
    }
}else{
    write-host "Im Ordner $folder sind nur $($items.Count) Dateien enthalten! Eine Aufsplittung zu je $splitNum Dateien ist daher nicht möglich."
}

