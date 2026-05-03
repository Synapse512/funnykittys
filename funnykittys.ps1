# find json file and get last saved date
$dataFile = Join-Path $PSScriptRoot "data.json"
$data = (Get-Content $dataFile -Raw) | ConvertFrom-Json
$date = $data.date

# get current date
$todaysDate = Get-Date -Format MM/dd/yyyy
# find what cat to print based on array index
$cat = [int] $data.cat
# the table of cats
$cats = @(
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

$amountofCats = $cats.Count
# if no cat(s), then print message and exit script
if ($amountofCats -eq 0) 
{
    write-host "no cat :("
    exit 1
}

# if todays date is NOT the last recorded date, update new cat index and date
if ($todaysDate -ne $date)
{
    $data.date = $todaysDate
    $cat = Get-Random -Minimum 0 -Maximum $amountofCats
    $data.cat = $cat

    $data | ConvertTo-Json | Set-Content $dataFile
} 

#print cat 
write-host $cats[$cat]
