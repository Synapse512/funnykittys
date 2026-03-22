# find json file and get last saved date
$dataFile = Join-Path $PSScriptRoot "data.json"
$data = (Get-Content $dataFile -Raw) | ConvertFrom-Json
$date = $data.date

# get current date
$todaysDate = Get-Date -Format MM/dd/yyyy
# find what kitty to print based on array index
$kitty = [int] $data.kitty
# the table of kittys
$kittys = @(
@"
      へ  
  ૮ O o)   
  /   l   
乀(,ل ل  
"@
@"
  ／l、
（o､ o７
  l ~ヽ
  じしf_,)ノ
"@
@"
 ╱|、     
(- - 7     
|、⁻〵     
じし,)ノ  
"@
)

$amountOfKittys = $kittys.Count
# if no cat(s), then print message and exit script
if ($amountOfKittys -eq 0) 
{
    write-host "no kitty :("
    exit 1
}

# if todays date is NOT the last recorded date, update new kitty index and date
if ($todaysDate -ne $date)
{
    $data.date = $todaysDate
    $kitty = Get-Random -Minimum 0 -Maximum $amountOfKittys
    $data.kitty = $kitty

    $data | ConvertTo-Json | Set-Content $dataFile
} 

#print kitty 
write-host $kittys[$kitty]
