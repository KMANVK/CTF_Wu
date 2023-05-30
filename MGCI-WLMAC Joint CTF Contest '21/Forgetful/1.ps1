# Đường dẫn đến thư mục Thùng rác
$recycleBinPath = "C:\$Recycle.Bin"

# Đổ tất cả các tệp vào thùng rác
DumpFiles -Q -r -n -s mem.vmem -D $recycleBinPath

# Tìm tất cả các tệp tái chế có tiền tố $I và tên gốc là \monkey\Pictures\stock\rrr.png
$recycleFiles = Get-ChildItem -Path $recycleBinPath -Filter "$I*.*" -Recurse | Where-Object { $_.Name -like "*\monkey\Pictures\stock\rrr.png" }

foreach ($recycleFile in $recycleFiles) {
    $iFilePath = $recycleFile.FullName
    $rFilePath = $iFilePath.Replace("$I", "$R")
    
    # Kiểm tra sự tồn tại của tệp $R
    if (Test-Path -Path $rFilePath) {
        Write-Host "Tìm thấy tệp tái chế tương ứng:"
        Write-Host "Tệp $I: $iFilePath"
        Write-Host "Tệp $R: $rFilePath"
        
        # Xem nội dung của tệp $R (giả sử là PNG)
        $imageContent = Get-Content -Path $rFilePath -Encoding Byte
        $imageContent | Set-Content -Path "recovered_image.png" -Encoding Byte -Force
        
        Write-Host "Đã khôi phục nội dung của tệp $R thành recovered_image.png"
        Write-Host ""
    }
}
