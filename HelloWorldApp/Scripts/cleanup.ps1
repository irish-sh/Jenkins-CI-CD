$folder = "D:\Release Data\ShirishKumar"
$maxBuilds = 5

$files = Get-ChildItem -Path $folder -Filter "release_*.zip" | Sort-Object LastWriteTime -Descending

if ($files.Count -gt $maxBuilds) {
    $filesToDelete = $files | Select-Object -Skip $maxBuilds
    foreach ($file in $filesToDelete) {
        Remove-Item $file.FullName -Force
    }
}
